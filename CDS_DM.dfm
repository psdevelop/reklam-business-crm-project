object OtherDataAccessDM: TOtherDataAccessDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 431
  Width = 351
  object SearchTypeCDS: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SearchCriteriy'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Comment'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Font'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 64
    Top = 24
  end
  object SearchTypeDataSource: TDataSource
    DataSet = SearchTypeCDS
    Left = 64
    Top = 80
  end
  object AnnonceWordApplication: TWordApplication
    AutoConnect = True
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 192
    Top = 176
  end
  object AnnonceSquareFrWordDocument: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 192
    Top = 272
  end
  object AnnonceSimpleWordDocument: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 192
    Top = 224
  end
end
