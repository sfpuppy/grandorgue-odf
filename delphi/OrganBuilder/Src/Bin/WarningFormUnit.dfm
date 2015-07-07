object WarningForm: TWarningForm
  Left = 296
  Top = 114
  Width = 652
  Height = 514
  BorderStyle = bsSizeToolWin
  Caption = 'Messages'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  DesignSize = (
    640
    480)
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TMemo
    Left = 8
    Top = 8
    Width = 625
    Height = 433
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelKind = bkFlat
    BorderStyle = bsNone
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object ButtonClose: TBitBtn
    Left = 552
    Top = 448
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Close'
    TabOrder = 1
    OnClick = ButtonCloseClick
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
end
