object frmGenericSelect: TfrmGenericSelect
  Left = 274
  Top = 192
  Width = 500
  Height = 302
  Caption = 'Select'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object bgInstances: TBoldGrid
    Left = 0
    Top = 31
    Width = 492
    Height = 231
    AddNewAtEnd = False
    Align = alClient
    BoldAutoColumns = False
    BoldShowConstraints = False
    BoldHandle = blhClass
    BoldProperties.NilElementMode = neNone
    Columns = <
      item
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end>
    DefaultRowHeight = 17
    EnableColAdjust = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goColMoving, goEditing, goRowSelect]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnClick = bgInstancesClick
    ColWidths = (
      17
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 492
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      492
      31)
    object SpeedButton1: TSpeedButton
      Left = 469
      Top = 1
      Width = 68
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Flat = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 537
      Top = 1
      Width = 67
      Height = 30
      Anchors = [akTop, akRight]
      Caption = #1054#1090#1084#1077#1085#1072
      Flat = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object BoldNavigator1: TBoldNavigator
      Left = 0
      Top = 0
      Width = 192
      Height = 31
      Align = alLeft
      BoldHandle = blhClass
      Flat = True
      TabOrder = 0
      ImageIndices.nbFirst = -1
      ImageIndices.nbPrior = -1
      ImageIndices.nbNext = -1
      ImageIndices.nbLast = -1
      ImageIndices.nbInsert = -1
      ImageIndices.nbDelete = -1
      ImageIndices.nbMoveUp = -1
      ImageIndices.nbMoveDown = -1
      DeleteQuestion = #1059#1076#1072#1083#1080#1090#1100' "%1:s"?'
      UnlinkQuestion = #1059#1076#1072#1083#1080#1090#1100' '#1089#1089#1099#1083#1082#1091' "%1:s" '#1080#1079' "%2:s"?'
      RemoveQuestion = #1059#1076#1072#1083#1080#1090#1100' "%1:s" '#1080#1079' '#1089#1087#1080#1089#1082#1072'?'
    end
  end
  object blhClass: TBoldListHandle
    RootHandle = brhSystem
    Left = 40
    Top = 54
  end
  object brhSystem: TBoldReferenceHandle
    OnObjectDeleted = brhSystemObjectDeleted
    Left = 10
    Top = 54
  end
end
