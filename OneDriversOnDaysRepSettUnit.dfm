object OneDaysOnRepSettForm: TOneDaysOnRepSettForm
  Left = 0
  Top = 0
  Width = 217
  Height = 187
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1095#1105#1090#1072' '#1087#1086' '#1086#1090#1076#1077#1083#1100#1085#1086#1084#1091' '#1074#1086#1076#1080#1090#1077#1083#1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 24
    Top = 6
    Width = 46
    Height = 12
    Caption = #1042#1086#1076#1080#1090#1077#1083#1100
  end
  object DateTimePicker1: TDateTimePicker
    Left = 24
    Top = 54
    Width = 163
    Height = 20
    Date = 38782.432962407410000000
    Time = 38782.432962407410000000
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 24
    Top = 90
    Width = 163
    Height = 20
    Date = 38782.433014664360000000
    Time = 38782.433014664360000000
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 60
    Top = 128
    Width = 85
    Height = 19
    Caption = #1054#1050
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object BoldComboBox1: TBoldComboBox
    Left = 24
    Top = 24
    Width = 163
    Height = 20
    Alignment = taLeftJustify
    BoldListProperties.DragMode = bdgSelection
    BoldListProperties.DropMode = bdpAppend
    BoldListProperties.NilElementMode = neNone
    BoldProperties.Expression = 'pozyvnoi'
    BoldRowProperties.Expression = 'pozyvnoi'
    BoldSelectChangeAction = bdcsSetListIndex
    ItemHeight = 0
    TabOrder = 3
  end
end
