/* Copyright (c) 2014 Lars Palo
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package make_odf;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class Stop extends Drawstop {
	ArrayList<Integer> m_Ranks = new ArrayList<Integer>();
	int firstAccessiblePipeLogicalKeyNumber;
	int numberOfAccessiblePipes;
	int firstAccessiblePipeLogicalPipeNumber;
	boolean isPercussive;
	float amplitudeLevel;
	int harmonicNumber;
	float pitchTuning;
	float pitchCorrection;
	int m_windchestGroup;
	ArrayList<Pipe> m_Pipes = new ArrayList<Pipe>();

	public Stop() {
		super();
		this.firstAccessiblePipeLogicalKeyNumber = 1;
		this.numberOfAccessiblePipes = 1;
		this.firstAccessiblePipeLogicalPipeNumber = 1;
		this.isPercussive = false;
		this.amplitudeLevel = 100;
		this.harmonicNumber = 8;
		this.pitchTuning = 0;
		this.pitchCorrection = 0;
		this.m_windchestGroup = 1;
	}

	void readHeader(Tokenizer tok) {
		List<String> stringParts = tok.readAndSplitLine();
		name = stringParts.get(0);
		numberOfAccessiblePipes = Tokenizer.convertToInt(stringParts.get(1));
		firstAccessiblePipeLogicalKeyNumber = Tokenizer
				.convertToInt(stringParts.get(2));
		amplitudeLevel = Tokenizer.convertToFloat(stringParts.get(3));
		harmonicNumber = Tokenizer.convertToInt(stringParts.get(4));
		pitchTuning = Tokenizer.convertToFloat(stringParts.get(5));
		pitchCorrection = Tokenizer.convertToFloat(stringParts.get(6));
		m_windchestGroup = Tokenizer.convertToInt(stringParts.get(7));
		isPercussive = Tokenizer.convertToBoolean(stringParts.get(8));
		defaultToEngaged = Tokenizer.convertToBoolean(stringParts.get(9));
		displayed = Tokenizer.convertToBoolean(stringParts.get(10));
		if (displayed) {
			dispImageNum = Tokenizer.convertToInt(stringParts.get(11));
			dispDrawstopCol = Tokenizer.convertToInt(stringParts.get(12));
			dispDrawstopRow = Tokenizer.convertToInt(stringParts.get(13));
			textBreakWidth = Tokenizer.convertToInt(stringParts.get(14));
		}
	}

	int readPipesPortion(List<String> stringParts, int pipesLoaded,
			int nbPipesToLoad, boolean loadOneSamplePerPipe) {
		if (nbPipesToLoad > 0) {
			// The stop have it's own pipes to load
			String loadString = stringParts.get(1);
			switch (loadString.charAt(0)) {
			case 'L':
				String pathToSearch = stringParts.get(2);
				String loadAttRel = stringParts.get(3);
				boolean pipePercussive = Tokenizer.convertToBoolean(stringParts
						.get(4));
				int startMidiNote = Tokenizer.convertToInt(loadString
						.substring(1, loadString.length()));
				for (int k = 0; k < nbPipesToLoad; k++) {
					Pipe p = Pipe.loadSamples(startMidiNote + k, loadString,
							pathToSearch, loadAttRel, pipePercussive,
							loadOneSamplePerPipe);
					// FIXME isPercussive - the same issue as in Rank
					setBasicAttributes(p);
					m_Pipes.add(p);
				}
				break;
			case 'R':
				int startPipe = Tokenizer.convertToInt(loadString.substring(1,
						loadString.length()));
				String keybCode = stringParts.get(2);
				int stop = Tokenizer.convertToInt(stringParts.get(3));
				for (int k = 0; k < nbPipesToLoad; k++) {
					Pipe p = Pipe
							.createReference(startPipe + k, keybCode, stop);

					p.isPercussive = isPercussive;
					setBasicAttributes(p);
					m_Pipes.add(p);
				}
				break;
			case 'C':
				int startCopy = Tokenizer.convertToInt(loadString.substring(1,
						loadString.length())) - 1;
				float pitchChange = Tokenizer
						.convertToFloat(stringParts.get(2));
				for (int k = 0; k < nbPipesToLoad; k++) {
					Pipe source = m_Pipes.get(startCopy + k);
					Pipe p = new Pipe(source);
					p.pitchTuning = pitchChange;
					m_Pipes.add(p);
				}
				break;
			case 'M':
				int nextIndex = 2;
				for (int k = 0; k < nbPipesToLoad; k++) {
					Pipe p = new Pipe();
					Attack a = new Attack();
					a.fileName = stringParts.get(nextIndex);
					nextIndex++;
					if (Tokenizer.convertToBooleanInverted(stringParts
							.get(nextIndex))) {
						a.loadRelease = false;
						a.attackVelocity = 0;
						a.maxKeyPressTime = -1;
						nextIndex++;
						p.attacks.add(a);
						Release r = new Release();
						r.fileName = stringParts.get(nextIndex);
						nextIndex++;
						p.releases.add(r);
					} else {
						a.loadRelease = true;
						a.attackVelocity = 0;
						a.maxKeyPressTime = -1;
						nextIndex++;
						p.attacks.add(a);
					}
					p.isPercussive = isPercussive;
					setBasicAttributes(p);
					m_Pipes.add(p);
				}
				break;
			default:
				throw new TextFileParserException("ERROR: Load method "
						+ loadString + " for stop " + name + " is invalid!");
			}
			pipesLoaded += nbPipesToLoad;
		} else {
			// The stops have ranks instead
			Tokenizer.readNumericReferencesOffset1(stringParts, m_Ranks);
			pipesLoaded = numberOfAccessiblePipes;
		}
		return pipesLoaded;
	}

	public void setBasicAttributes(Pipe p) {
		p.amplitudeLevel = amplitudeLevel;
		p.harmonicNumber = harmonicNumber;
		p.pitchTuning = pitchTuning;
		p.pitchCorrection = pitchCorrection;
		p.windchestGroup = m_windchestGroup;
	}

	public void read(Tokenizer tok, boolean loadOneSamplePerPipe) {
		List<String> stringParts;
		readHeader(tok);

		int pipesLoaded = 0;
		System.out.println("Trying to read pipes for stop " + name);
		while (pipesLoaded < numberOfAccessiblePipes) {
			stringParts = tok.readAndSplitLine();

			int nbPipesToLoad = Tokenizer.convertToInt(stringParts.get(0));
			pipesLoaded = readPipesPortion(stringParts, pipesLoaded,
					nbPipesToLoad, loadOneSamplePerPipe);
		}

		stringParts = tok.readAndSplitLine();

		function = Enum.valueOf(Function.class, stringParts.get(0)
				.toUpperCase());
		Tokenizer.readNumericReferencesOffset1(stringParts, m_switches);
	}

	public void write(PrintWriter outfile) {
		outfile.println("Name=" + name);
		if (function != Function.INPUT) {
			// This stop has switches
			outfile.println("Function=" + function.func);
			outfile.println("SwitchCount=" + m_switches.size());
			OdfWriter.writeReferences(outfile, "Switch", m_switches);
		}
		if (!m_Ranks.isEmpty()) {
			// This stop has ranks
			outfile.println("NumberOfRanks=" + m_Ranks.size());
			OdfWriter.writeReferences(outfile, "Rank", m_Ranks);
			outfile.println("NumberOfAccessiblePipes="
					+ numberOfAccessiblePipes);
			outfile.println("FirstAccessiblePipeLogicalKeyNumber="
					+ firstAccessiblePipeLogicalKeyNumber);
		} else {
			outfile.println("NumberOfLogicalPipes=" + numberOfAccessiblePipes);
			outfile.println("NumberOfAccessiblePipes="
					+ numberOfAccessiblePipes);
			outfile.println("FirstAccessiblePipeLogicalPipeNumber="
					+ firstAccessiblePipeLogicalPipeNumber);
			outfile.println("FirstAccessiblePipeLogicalKeyNumber="
					+ firstAccessiblePipeLogicalKeyNumber);
			outfile.println("WindchestGroup=" + m_windchestGroup);
			if (isPercussive)
				outfile.println("Percussive=Y");
			else
				outfile.println("Percussive=N");
			outfile.println("AmplitudeLevel=" + amplitudeLevel);
			outfile.println("PitchTuning=" + pitchTuning);
			outfile.println("PitchCorrection=" + pitchCorrection);
			outfile.println("HarmonicNumber=" + harmonicNumber);
		}
		if (function == Function.INPUT) {
			if (defaultToEngaged)
				outfile.println("DefaultToEngaged=Y");
			else
				outfile.println("DefaultToEngaged=N");
		}
		if (displayed) {
			outfile.println("Displayed=Y");
			outfile.println("DispImageNum=" + dispImageNum);
			outfile.println("DispDrawstopCol=" + dispDrawstopCol);
			outfile.println("DispDrawstopRow=" + dispDrawstopRow);
			outfile.println("DispLabelColour=Black");
			outfile.println("DispLabelFontSize=Normal");
			outfile.println("DisplayInInvertedState=N");
			if (textBreakWidth >= 0)
				outfile.println("TextBreakWidth=" + textBreakWidth);
		} else {
			outfile.println("Displayed=N");
		}
		if (m_Ranks.isEmpty()) {
			// This stop has pipes
			for (int k = 0; k < m_Pipes.size(); k++) {
				// First attack must always exist
				String pipeNr = "Pipe" + NumberUtil.format(k + 1);
				Pipe pipe = m_Pipes.get(k);
				pipe.writeInsideStop(outfile, pipeNr, isPercussive);
			}
		}
	}
}
