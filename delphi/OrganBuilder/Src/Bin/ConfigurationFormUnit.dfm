object ConfigurationForm: TConfigurationForm
  Left = 471
  Top = 382
  BorderStyle = bsDialog
  Caption = 'Configuration'
  ClientHeight = 170
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    450
    170)
  PixelsPerInch = 96
  TextHeight = 13
  object LabelLanguage: TLabel
    Left = 16
    Top = 21
    Width = 233
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Language :'
  end
  object LabelPathStorage: TLabel
    Left = 16
    Top = 55
    Width = 233
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Projects path storage :'
  end
  object ButtonOk: TBitBtn
    Left = 274
    Top = 138
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79D5AF91DDBDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED4
      D4D4DCDCDCFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFE3F7EE00996610AB70FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF4F4F4A9
      A9A9B1B1B1FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF19B47500AB6600996664CFA2FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEB7B7B7AE
      AEAEA9A9A9CECECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF79D5AF00996600D46600C56604A268FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED4D4D4A9A9A9BE
      BEBEB9B9B9ACACACFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFE3F7EE04A26800C56600DF6600DF6604A26864CFA2FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEF4F4F4ACACACB9B9B9C3
      C3C3C3C3C3ACACACCECECEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFF19B47500B16600E56600E56600E56600C56604A268E3F7EEFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEB7B7B7B1B1B1C4C4C4C4
      C4C4C4C4C4B9B9B9ACACACF4F4F4FEFEFEFEFEFEFEFEFEFEFEFEFFFFFF24B67C
      00996600996600AB6600DF6600CC6600996600996600D46600A76641C48DFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEBABABAA9A9A9A9A9A9AEAEAEC3C3C3BABABAA9
      A9A9A9A9A9BEBEBEAEAEAEC4C4C4FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFE1F8ED
      09AB6B00BD6600E56600BD6604A26864D4A264D4A200A76600BD6604A268E3F7
      EEFFFFFFFFFFFFFFFFFFFEFEFEF4F4F4B1B1B1B6B6B6C4C4C4B6B6B6ACACACD1
      D1D1D1D1D1AEAEAEB6B6B6ACACACF4F4F4FEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      A9E9CB04A26800A76609AB6BA9E9CBFFFFFFFFFFFF64D4A204A26800A76641C4
      8DFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEE4E4E4ACACACAEAEAEB1B1B1E4E4E4FE
      FEFEFEFEFED1D1D1ACACACAEAEAEC4C4C4FEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFF64D4A224BD7CE1F8EDFFFFFFFFFFFFFFFFFFFFFFFF64D4A200996604A2
      68C5EFDCFFFFFFFFFFFFFEFEFEFEFEFEFEFEFED1D1D1BCBCBCF4F4F4FEFEFEFE
      FEFEFEFEFEFEFEFED1D1D1A9A9A9ACACACEBEBEBFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF64D4A20099
      6624B67CFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFED1D1D1A9A9A9BABABAFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF64D4
      A2009966C5EFDCFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFED1D1D1A9A9A9EBEBEBFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF64CFA224B67CFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECECECEBABABAFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF64CFA291DDBDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECECECEDCDCDCFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF64CFA2FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECECECEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE}
    NumGlyphs = 2
  end
  object ButtonCancel: TBitBtn
    Left = 362
    Top = 138
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000120B0000120B00000000000000000000FFFFFFFFFFFF
      000883000786FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      9D000043FFFFFFFFFFFFFEFEFEFEFEFEA5A5A5A7A7A7FEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEA7A7A79C9C9CFEFEFEFEFEFEFFFFFF000B85
      0A1BCC142ADB000780FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000A20000
      D80000C000003DFFFFFFFEFEFEA7A7A7B4B4B4BABABAA5A5A5FEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEA7A7A7AFAFAFACACAC9C9C9CFEFEFE0013AF0D24CF
      405FF93D5BFE162CDD000780FFFFFFFFFFFFFFFFFFFFFFFF0001A20000DA0000
      FE0000F80000C0000043AEAEAEB6B6B6CCCCCCCCCCCCBABABAA5A5A5FEFEFEFE
      FEFEFEFEFEFEFEFEA9A9A9AFAFAFB3B3B3B3B3B3ACACAC9C9C9C0017CB2140E0
      5371FE4866FE3D5BFE162CDD000780FFFFFFFFFFFF0004A40106DB0001FE0000
      FE0000FE0000D800009DB3B3B3C1C1C1D2D2D2CFCFCFCCCCCCBABABAA5A5A5FE
      FEFEFEFEFEAAAAAAB1B1B1B3B3B3B3B3B3B3B3B3AFAFAFA7A7A7FFFFFF0017CA
      2443E25371FE4866FE3D5BFE162CDD0007800006900816DC0B1AFE020AFE0001
      FE0000DA0000A2FFFFFFFEFEFEB2B2B2C2C2C2D2D2D2CFCFCFCCCCCCBABABAA5
      A5A5A7A7A7B4B4B4BABABAB6B6B6B3B3B3AFAFAFA7A7A7FEFEFEFFFFFFFFFFFF
      0017CA2443E25371FE4866FE3D5BFE162CDD1024DC1E36FE1428FE0B1AFE0106
      DB0001A2FFFFFFFFFFFFFEFEFEFEFEFEB2B2B2C2C2C2D2D2D2CFCFCFCCCCCCBA
      BABAB8B8B8C2C2C2BEBEBEBABABAB1B1B1A9A9A9FEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFF0017CA2443E25371FE4866FE3D5BFE3350FE2844FE1E36FE0816DC0004
      A4FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEB2B2B2C2C2C2D2D2D2CFCFCFCC
      CCCCC9C9C9C6C6C6C2C2C2B4B4B4AAAAAAFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFF0016C62443E25371FE4866FE3D5BFE3350FE1024DC000690FFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEB2B2B2C2C2C2D2D2D2CF
      CFCFCCCCCCC9C9C9B8B8B8A7A7A7FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFF0018B22A4AE35E7CFE5371FE4866FE3D5BFE162CDD000780FFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEB0B0B0C4C4C4D6D6D6D2
      D2D2CFCFCFCCCCCCBABABAA5A5A5FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      FFFFFF001DB53256E5738FFE6886FE5E7CFE5371FE4866FE3D5BFE162CDD0007
      80FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEB1B1B1C7C7C7DBDBDBD9D9D9D6
      D6D6D2D2D2CFCFCFCCCCCCBABABAA5A5A5FEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
      0022B93A61E887A1FE7D99FE738FFE2B4CE32644E35371FE4866FE3D5BFE162C
      DD000780FFFFFFFFFFFFFEFEFEFEFEFEB3B3B3CACACAE0E0E0DEDEDEDBDBDBC4
      C4C4C2C2C2D2D2D2CFCFCFCCCCCCBABABAA5A5A5FEFEFEFEFEFEFFFFFF0028BF
      426BEA9AB1FE91AAFE87A1FE3256E50018B20016C62443E25371FE4866FE3D5B
      FE162CDD000780FFFFFFFEFEFEB5B5B5CDCDCDE5E5E5E3E3E3E0E0E0C7C7C7B0
      B0B0B2B2B2C2C2C2D2D2D2CFCFCFCCCCCCBABABAA5A5A5FEFEFE0035DD4371ED
      ACC0FEA3B9FE9AB1FE3A61E8001DB5FFFFFFFFFFFF0017CA2443E25371FE4866
      FE3D5BFE142ADB000786BCBCBCCFCFCFE9E9E9E7E7E7E5E5E5CACACAB1B1B1FE
      FEFEFEFEFEB2B2B2C2C2C2D2D2D2CFCFCFCCCCCCBABABAA7A7A70037E31E53EA
      A0BAFCACC0FE426BEA0022B9FFFFFFFFFFFFFFFFFFFFFFFF0017CA2443E25371
      FE405FF90A1BCC000883BEBEBEC6C6C6E7E7E7E9E9E9CDCDCDB3B3B3FEFEFEFE
      FEFEFEFEFEFEFEFEB2B2B2C2C2C2D2D2D2CCCCCCB4B4B4A5A5A5FFFFFF0037E3
      1E53EA4371ED0028BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0017CA2140
      E00D24CF000B85FFFFFFFEFEFEBEBEBEC6C6C6CFCFCFB5B5B5FEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEB2B2B2C1C1C1B6B6B6A7A7A7FEFEFEFFFFFFFFFFFF
      0037E30035DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0017
      CB0014B3FFFFFFFFFFFFFEFEFEFEFEFEBEBEBEBCBCBCFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEB3B3B3AFAFAFFEFEFEFEFEFE}
    NumGlyphs = 2
  end
  object ComboBoxPathStorage: TComboBox
    Left = 256
    Top = 53
    Width = 178
    Height = 21
    BevelKind = bkFlat
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'Store absolute paths'
    Items.Strings = (
      'Store absolute paths'
      'Store relative paths')
  end
  object PanelLanguageButtons: TPanel
    Left = 16
    Top = 85
    Width = 418
    Height = 41
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    TabOrder = 3
  end
  object ComboBoxLanguage: TComboBox
    Left = 256
    Top = 16
    Width = 178
    Height = 26
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 20
    TabOrder = 4
    OnChange = ComboBoxLanguageChange
    OnDrawItem = ComboBoxLanguageDrawItem
  end
  object ButtonReset: TBitBtn
    Left = 12
    Top = 138
    Width = 101
    Height = 25
    Caption = 'Reset'
    TabOrder = 5
    OnClick = ButtonResetClick
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FF003D1F003D1F003D1F003D1FFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF91919191919191919191
      9191FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF003D1F00A55500D38210E5A125EDB4003D1F003D1FFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF919191DEDEDEFFFFFFFFFFFFFF
      FFFF919191919191FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      003D1F00A55500CE7500CE7500D88910E5A12BEFB448F9C7003D1FFF00FF003D
      1F003D1FFF00FFFF00FFFF00FFFF00FF919191DEDEDEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF919191FF00FF919191919191FF00FFFF00FFFF00FFFF00FF
      003D1F00CE7500CE7500A555003D1F003D1F00A55532F2B853FCCC003D1F70FF
      DB003D1FFF00FFFF00FFFF00FFFF00FF919191FFFFFFFFFFFFDEDEDE91919191
      9191DEDEDEFFFFFFFFFFFF919191FFFFFF919191FF00FFFF00FFFF00FFFF00FF
      003D1F00A55500BC61003D1FFF00FFFF00FF003D1F00A5553AF4C053FCCC70FF
      DB003D1FFF00FFFF00FFFF00FFFF00FF919191DEDEDEEFEFEF919191FF00FFFF
      00FF919191DEDEDEFFFFFFFFFFFFFFFFFF919191FF00FFFF00FFFF00FFFF00FF
      003D1F008947008947003D1FFF00FFFF00FFFF00FF003D1F25EDB448F9C753FC
      CC003D1FFF00FFFF00FFFF00FFFF00FF919191C9C9C9C9C9C9919191FF00FFFF
      00FFFF00FF919191FFFFFFFFFFFFFFFFFF919191FF00FFFF00FFFF00FFFF00FF
      003D1F008947008947003D1FFF00FFFF00FF003D1F00D88910E5A12BEFB448F9
      C7003D1FFF00FFFF00FFFF00FFFF00FF919191C9C9C9C9C9C9919191FF00FFFF
      00FF919191FFFFFFFFFFFFFFFFFFFFFFFF919191FF00FFFF00FFFF00FFFF00FF
      FF00FF006836006836FF00FFFF00FFFF00FF003D1F003D1F003D1F003D1F003D
      1F003D1FFF00FFFF00FFFF00FFFF00FFFF00FFB1B1B1B1B1B1FF00FFFF00FFFF
      00FF919191919191919191919191919191919191FF00FFFF00FFFF00FFFF00FF
      003D1F003D1F003D1F003D1F003D1F003D1FFF00FFFF00FFFF00FF0068360068
      36FF00FFFF00FFFF00FFFF00FFFF00FF91919191919191919191919191919191
      9191FF00FFFF00FFFF00FFB1B1B1B1B1B1FF00FFFF00FFFF00FFFF00FFFF00FF
      003D1F48F9C72BEFB410E5A100D889003D1FFF00FFFF00FF003D1F0089470089
      47003D1FFF00FFFF00FFFF00FFFF00FF919191FFFFFFFFFFFFFFFFFFFFFFFF91
      9191FF00FFFF00FF919191C9C9C9C9C9C9919191FF00FFFF00FFFF00FFFF00FF
      003D1F53FCCC48F9C725EDB4003D1FFF00FFFF00FFFF00FF003D1F0089470089
      47003D1FFF00FFFF00FFFF00FFFF00FF919191FFFFFFFFFFFFFFFFFF919191FF
      00FFFF00FFFF00FF919191C9C9C9C9C9C9919191FF00FFFF00FFFF00FFFF00FF
      003D1F70FFDB53FCCC3AF4C000A555003D1FFF00FFFF00FF003D1F00BC6100A5
      55003D1FFF00FFFF00FFFF00FFFF00FF919191FFFFFFFFFFFFFFFFFFDEDEDE91
      9191FF00FFFF00FF919191EFEFEFDEDEDE919191FF00FFFF00FFFF00FFFF00FF
      003D1F70FFDB003D1F53FCCC32F2B800A555003D1F003D1F00A55500CE7500CE
      75003D1FFF00FFFF00FFFF00FFFF00FF919191FFFFFF919191FFFFFFFFFFFFDE
      DEDE919191919191DEDEDEFFFFFFFFFFFF919191FF00FFFF00FFFF00FFFF00FF
      003D1F003D1FFF00FF003D1F48F9C72BEFB410E5A100D88900CE7500CE7500A5
      55003D1FFF00FFFF00FFFF00FFFF00FF919191919191FF00FF919191FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDE919191FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF003D1F003D1F25EDB410E5A100D38200A555003D
      1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF91919191
      9191FFFFFFFFFFFFFFFFFFDEDEDE919191FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF003D1F003D1F003D1F003D1FFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF919191919191919191919191FF00FFFF00FFFF00FFFF00FF}
    NumGlyphs = 2
  end
  object ImageListFlags: TImageList
    Width = 24
    Left = 32
    Top = 96
  end
end
