object BoldHandlesDM: TBoldHandlesDM
  OldCreateOrder = False
  Height = 1121
  Width = 751
  object blhAllClientList: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Klient.allInstances->orderby(imenovanie)'
    Left = 592
    Top = 80
  end
  object blhUsersList: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Personal.allInstances'
    Left = 592
    Top = 432
  end
  object AllClientActionList: TActionList
    Left = 592
    Top = 144
    object BoldListHandleAddNewActionAllKlient: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Enabled = False
      ImageIndex = 1
      OnExecute = BoldListHandleAddNewActionAllKlientExecute
      BoldHandle = blhAllClientList
    end
    object BoldListHandleDeleteActionAllKlient: TBoldListHandleDeleteAction
      Category = 'Bold Actions'
      Caption = 'Delete'
      BoldHandle = blhAllClientList
    end
  end
  object blhLogSearchResult: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Log_operacii.allInstances->select((ot_deistvii=bv_Persona) or (b' +
      'v_Persona=nil))->select((data >=bv_StartDate) and (data<=bv_EndD' +
      'ate))'
    Variables = bovLogSearch
    Left = 592
    Top = 384
  end
  object AllUsersActionList: TActionList
    Left = 592
    Top = 488
    object BoldListHandleAddNewActionAllUsers: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081
      Enabled = False
      BoldHandle = blhUsersList
    end
    object BoldListHandleDeleteActionAllUsers: TBoldListHandleDeleteAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Enabled = False
      BoldHandle = blhUsersList
    end
  end
  object blhCurrUser: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Personal.allInstances->select(login=bv_UserLogin)'
    Variables = bovCurrUser
    Left = 592
    Top = 272
  end
  object blhCurrUserLogs: TBoldListHandle
    RootHandle = blhCurrUser
    Expression = 'deistviya_fiksiruyutsya_v'
    Left = 592
    Top = 328
  end
  object bvhCurrUserLogin: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'String'
    Left = 592
    Top = 208
  end
  object bovCurrUser: TBoldOclVariables
    Variables = <
      item
        BoldHandle = bvhCurrUserLogin
        VariableName = 'bv_UserLogin'
        UseListElement = False
      end>
    Left = 672
    Top = 80
  end
  object bvhStarDate: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Date'
    Left = 672
    Top = 144
  end
  object bvhEndDate: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Date'
    Left = 672
    Top = 200
  end
  object bovLogSearch: TBoldOclVariables
    Variables = <
      item
        BoldHandle = bvhStarDate
        VariableName = 'bv_StartDate'
        UseListElement = False
      end
      item
        BoldHandle = bvhEndDate
        VariableName = 'bv_EndDate'
        UseListElement = False
      end
      item
        BoldHandle = brhLogSearchClient
        VariableName = 'bv_Persona'
        UseListElement = False
      end>
    Left = 672
    Top = 248
  end
  object brhLogSearchClient: TBoldReferenceHandle
    StaticSystemHandle = BoldModelDM.bsh
    StaticValueTypeName = 'Personal'
    Left = 672
    Top = 296
  end
  object behStartTablePosition: TBoldExpressionHandle
    RootHandle = behSettElm
    Expression = 
      'Vypusk_gazety.allInstances'#13'->select(god_vypuska=self.god_start_v' +
      'yp)'#13'->select(nomer_vypuska=self.nomer_start_vyp)->first'
    Left = 120
    Top = 16
  end
  object behSettElm: TBoldExpressionHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Nastroiki.allInstances->first'
    Left = 32
    Top = 16
  end
  object blhActiveRekPlacing: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Razmeshenie_reklamy.allInstances->select(not zakryt)'
    Left = 120
    Top = 80
  end
  object bvhPrevRelNumber: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Integer'
    Left = 120
    Top = 136
  end
  object bvhPrevRelYear: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Integer'
    Left = 120
    Top = 184
  end
  object behNextRelNumber: TBoldExpressionHandle
    RootHandle = blhMagazines
    Expression = 
      'if (imeet_vyhody'#13'->select(((bv_PrevNum<nomer_vypuska) and (bv_Pr' +
      'evYear=god_vypuska)) '#13'or (bv_PrevYear<god_vypuska))->size>0) the' +
      'n'#13'imeet_vyhody'#13'->select(((bv_PrevNum<nomer_vypuska) and (bv_Prev' +
      'Year=god_vypuska)) '#13'or (bv_PrevYear<god_vypuska))->orderby(nomer' +
      '_vypuska+god_vypuska*365)->first.nomer_vypuska'#13'else 0 endif'
    Variables = bovBHVars
    Left = 120
    Top = 232
  end
  object behNextRelYear: TBoldExpressionHandle
    RootHandle = blhMagazines
    Expression = 
      'if (imeet_vyhody'#13'->select(((bv_PrevNum<nomer_vypuska) and (bv_Pr' +
      'evYear=god_vypuska)) '#13'or (bv_PrevYear<god_vypuska))->size>0) the' +
      'n'#13'imeet_vyhody'#13'->select(((bv_PrevNum<nomer_vypuska) and (bv_Prev' +
      'Year=god_vypuska)) '#13'or (bv_PrevYear<god_vypuska))->orderby(nomer' +
      '_vypuska+god_vypuska*365)->first.god_vypuska'#13'else 0 endif'
    Variables = bovBHVars
    Left = 120
    Top = 280
  end
  object bovBHVars: TBoldOclVariables
    Variables = <
      item
        BoldHandle = bvhPrevRelNumber
        VariableName = 'bv_PrevNum'
        UseListElement = False
      end
      item
        BoldHandle = bvhPrevRelYear
        VariableName = 'bv_PrevYear'
        UseListElement = False
      end>
    Left = 224
    Top = 80
  end
  object brhClientType: TBoldReferenceHandle
    StaticSystemHandle = BoldModelDM.bsh
    StaticValueTypeName = 'Specif_organizacii'
    Left = 224
    Top = 136
  end
  object blhClientReklams: TBoldListHandle
    RootHandle = brhCurrClient
    Expression = 'razmeshaet_reklamu'
    Left = 224
    Top = 232
  end
  object blhClientContacts: TBoldListHandle
    RootHandle = brhCurrClient
    Expression = 'imeet_kontakty'
    Left = 224
    Top = 184
  end
  object blhReklamType: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Tip_reklamy.allInstances'
    Left = 224
    Top = 280
  end
  object blhAllClientType: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Specif_organizacii.allInstances'
    Left = 304
    Top = 80
  end
  object AllClientTypeActionList: TActionList
    Left = 408
    Top = 80
    object BoldListHandleAddNewActionAllClientType: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1072#1103' '#1082#1072#1090#1077#1075#1086#1088#1080#1103' '#1082#1086#1085#1090#1072#1082#1090#1086#1074'...'
      Enabled = False
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1072#1090#1077#1075#1086#1088#1080#1102' '#1082#1086#1085#1090#1072#1082#1090#1086#1074'...'
      ImageIndex = 0
      BoldHandle = blhAllClientType
    end
  end
  object blhAllClient: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Klient.allInstances'
    Left = 304
    Top = 136
  end
  object brhCurrClient: TBoldReferenceHandle
    StaticSystemHandle = BoldModelDM.bsh
    StaticValueTypeName = 'Klient'
    Left = 408
    Top = 136
  end
  object brhCurrClientGroup: TBoldReferenceHandle
    StaticSystemHandle = BoldModelDM.bsh
    StaticValueTypeName = 'Specif_organizacii'
    Left = 408
    Top = 184
  end
  object brhCurrClientContact: TBoldReferenceHandle
    StaticSystemHandle = BoldModelDM.bsh
    StaticValueTypeName = 'Kontakt'
    Left = 304
    Top = 232
  end
  object brhCurrRRelease: TBoldReferenceHandle
    StaticSystemHandle = BoldModelDM.bsh
    StaticValueTypeName = 'Vyhod'
    Left = 328
    Top = 280
  end
  object brhCurrReklamSeries: TBoldReferenceHandle
    StaticSystemHandle = BoldModelDM.bsh
    StaticValueTypeName = 'Razmeshenie_reklamy'
    Left = 408
    Top = 232
  end
  object CRMActionList: TActionList
    Images = ImageListsDM.HistoryToolIML
    Left = 496
    Top = 280
    object AddNewAccountContactAction: TAction
      Caption = 'AddNewBlankContactAction'
      ImageIndex = 0
      OnExecute = AddNewAccountContactActionExecute
    end
    object AddNewBlankContactAction: TAction
      Caption = 'AddNewBlankContactAction'
      ImageIndex = 5
      OnExecute = AddNewBlankContactActionExecute
    end
    object AddNewDevelopContactAction: TAction
      Caption = 'AddNewDevelopContactAction'
      ImageIndex = 1
      OnExecute = AddNewDevelopContactActionExecute
    end
    object AddProjectApplingAction: TAction
      Caption = 'AddProjectApplingAction'
      ImageIndex = 2
      OnExecute = AddProjectApplingActionExecute
    end
    object AddProjectStartAction: TAction
      Caption = 'AddProjectStartAction'
      ImageIndex = 3
      OnExecute = AddProjectStartActionExecute
    end
    object AddProjectEndAction: TAction
      Caption = 'AddProjectEndAction'
      ImageIndex = 4
      OnExecute = AddProjectEndActionExecute
    end
    object MoveToPrintAction: TAction
      Caption = 'MoveToPrintAction'
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1077#1082#1083#1072#1084#1085#1091#1102' '#1082#1072#1084#1087#1072#1085#1080#1102' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091' '#1082#1083#1080#1077#1085#1090#1091
      ImageIndex = 6
      OnExecute = MoveToPrintActionExecute
    end
  end
  object behStartContactType: TBoldExpressionHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Tip_kontakta.allInstances->'#13'select(eng_description='#39'add_account'#39 +
      ')->first'
    Left = 120
    Top = 328
  end
  object behNewDevelop: TBoldExpressionHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Tip_kontakta.allInstances->'#13'select(eng_description='#39'new_develop'#39 +
      ')->first'
    Left = 120
    Top = 376
  end
  object behProjApply: TBoldExpressionHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Tip_kontakta.allInstances->'#13'select(eng_description='#39'proj_apply'#39')' +
      '->first'
    Left = 120
    Top = 424
  end
  object behProjStart: TBoldExpressionHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Tip_kontakta.allInstances->'#13'select(eng_description='#39'proj_start'#39')' +
      '->first'
    Left = 120
    Top = 472
  end
  object behProjEnd: TBoldExpressionHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Tip_kontakta.allInstances->'#13'select(eng_description='#39'proj_end'#39')->' +
      'first'
    Left = 120
    Top = 520
  end
  object ActionManager1: TActionManager
    LinkedActionLists = <
      item
        ActionList = NavigationActionList
        Caption = 'NavigationActionList'
      end>
    Left = 496
    Top = 384
    StyleName = 'XP Style'
  end
  object CustomizeDlg1: TCustomizeDlg
    ActionManager = ActionManager1
    StayOnTop = False
    Left = 512
    Top = 488
  end
  object blhMagazines: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Izdanie.allInstances'
    Left = 224
    Top = 328
  end
  object blhReleasesOfMag: TBoldListHandle
    RootHandle = blhMagazines
    Expression = 'imeet_vyhody->orderby(sort)'
    Left = 224
    Top = 376
  end
  object blhPriceCategories: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Stoimostj.allInstances'
    Left = 224
    Top = 424
  end
  object blhMagSections: TBoldListHandle
    RootHandle = blhMagazines
    Expression = 'sostoit_iz_reklamnyh'
    Left = 224
    Top = 472
  end
  object blhCurrClientSaled: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'if bv_CCL<>nil then bv_CCL.vnosit_oplaty else Oplata.allInstance' +
      's endif->orderdescending(data_oplaty)'
    Variables = bovSaled
    Left = 224
    Top = 520
  end
  object blhAllTasks: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Zadacha.allInstances'
    Variables = bovAllTasks
    Left = 48
    Top = 576
  end
  object blhAllStandartTasks: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Standartnaya_zadacha.allInstances'
    Left = 48
    Top = 632
  end
  object blhAllStates: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Sostoyanie_kontakta.allInstances'
    Left = 136
    Top = 576
  end
  object blhAllCauses: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Realjnaya_prichina.allInstances'
    Left = 224
    Top = 576
  end
  object blhAllFactors: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Usloviya.allInstances'
    Left = 48
    Top = 688
  end
  object blhAllReminders: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Napominanie.allInstances'
    Variables = bovAllReminders
    Left = 136
    Top = 688
  end
  object blhAllStadartFactors: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Standartnoe_uslovie.allInstances'
    Left = 224
    Top = 688
  end
  object blhAllStandReminders: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Standartnoe_napominanie.allInstances'
    Left = 224
    Top = 632
  end
  object blhAllResults: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Effekt.allInstances'
    Left = 48
    Top = 744
  end
  object blhAllStandResults: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Standartnyi_effekt.allInstances'
    Left = 136
    Top = 744
  end
  object behCurrTime: TBoldExpressionHandle
    RootHandle = behSettElm
    Expression = 'tek_vremya'
    Left = 224
    Top = 16
  end
  object bovAllReminders: TBoldOclVariables
    Variables = <
      item
        BoldHandle = bvhCurrTime
        VariableName = 'bv_CTR'
        UseListElement = False
      end
      item
        BoldHandle = bvhOnlyTodayReminders
        VariableName = 'bv_OnlyTodayR'
        UseListElement = False
      end
      item
        BoldHandle = bvhTodayAndLaterReminders
        VariableName = 'bv_OTodALatR'
        UseListElement = False
      end
      item
        BoldHandle = bvhOnlyUnCheckReminders
        VariableName = 'bv_OnlyUnCheckR'
        UseListElement = False
      end
      item
        BoldHandle = bvhOnlyPrevReminders
        VariableName = 'bv_OnlyPrevRem'
        UseListElement = False
      end
      item
        BoldHandle = behBeforeQuestsionsDays
        VariableName = 'bv_BefQ'
        UseListElement = False
      end>
    Left = 224
    Top = 744
  end
  object bvhOnlyTodayReminders: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Boolean'
    Left = 136
    Top = 800
  end
  object bvhTodayAndLaterReminders: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Boolean'
    Left = 136
    Top = 848
  end
  object bvhOnlyUnCheckReminders: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Boolean'
    Left = 136
    Top = 896
  end
  object bvhOnlyPrevReminders: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Boolean'
    Left = 136
    Top = 944
  end
  object ALStandRem: TActionList
    Images = ImageListsDM.NavigatIL
    Left = 136
    Top = 632
  end
  object bvhOnlyUnCompleteTasks: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Boolean'
    Left = 280
    Top = 800
  end
  object bvhTodayByPlanTasks: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Boolean'
    Left = 280
    Top = 848
  end
  object bvhTodayAndLaterByPlanTasks: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Boolean'
    Left = 280
    Top = 896
  end
  object bovAllTasks: TBoldOclVariables
    Variables = <
      item
        BoldHandle = behCurrTime
        VariableName = 'bv_CTC'
        UseListElement = False
      end
      item
        BoldHandle = bvhOnlyUnCompleteTasks
        VariableName = 'bv_OnleUncomplT'
        UseListElement = False
      end
      item
        BoldHandle = bvhTodayByPlanTasks
        VariableName = 'bv_TodayByPlT'
        UseListElement = False
      end
      item
        BoldHandle = bvhTodayAndLaterByPlanTasks
        VariableName = 'bv_TodayALatByPlT'
        UseListElement = False
      end>
    Left = 280
    Top = 944
  end
  object blhFromStateMoveCauses: TBoldListHandle
    RootHandle = blhAllStates
    Expression = 'imeet_perehodnyePrichina'
    Left = 328
    Top = 576
  end
  object blhStandartCauses: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Standartnaya_prichina.allInstances'
    Left = 328
    Top = 632
  end
  object blhCauseFactors: TBoldListHandle
    RootHandle = blhAllCauses
    Expression = 'imeet_usloviya'
    Left = 328
    Top = 688
  end
  object blhStandartCauseFactors: TBoldListHandle
    RootHandle = blhStandartCauses
    Expression = 'formir_iz_stand_usl'
    Left = 344
    Top = 744
  end
  object NavigationActionList: TActionList
    Images = ImageListsDM.NavigatIL
    Left = 496
    Top = 328
    object BoldListHandleAddNewActionAllMagazines: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1086#1077' '#1080#1079#1076#1072#1085#1080#1077'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhMagazines
    end
    object BoldListHandleAddNewActionMagSections: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081' '#1088#1072#1079#1076#1077#1083' '#1090#1077#1082'. '#1080#1079#1076#1072#1085#1080#1103'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhMagSections
    end
    object BoldListHandleAddNewActionAllDocs: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhAllDocs
    end
    object BoldListHandleAddNewActionAllProjects: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081' '#1087#1088#1086#1077#1082#1090'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhAllProjects
    end
    object BoldListHandleAddNewActionAllPrices: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhPriceCategories
    end
    object BoldListHandleAddNewActionReklType: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081' '#1090#1080#1087' '#1088#1077#1082#1083#1072#1084#1099'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhReklamType
    end
    object BoldListHandleAddNewActionCompType: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081' '#1090#1080#1087' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhAllClientType
    end
    object BoldListHandleAddNewActionAllStates: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1086#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhAllStates
    end
    object BoldListHandleAddNewActionAllStandCauses: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1072#1103' '#1089#1090#1072#1085#1076'. '#1087#1088#1080#1095#1080#1085#1072'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhStandartCauses
    end
    object BoldListHandleAddNewActionAllCauses: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1072#1103' '#1087#1088#1080#1095#1080#1085#1072'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhAllCauses
    end
    object BoldListHandleAddNewActionMoveStates: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1086#1077' '#1087#1077#1088#1077#1093#1086#1076#1085#1086#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhMoveStates
    end
    object BoldListHandleAddNewActionStCauseFactors: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1072#1085#1076#1072#1088#1090#1085#1086#1077' '#1091#1089#1083#1086#1074#1080#1077'...'
      ImageIndex = 0
      BoldHandle = blhStandartCauseFactors
    end
    object BoldListHandleAddNewActionAllReklScale: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081' '#1089#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081' '#1088#1072#1079#1084#1077#1088'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhAllReklScales
    end
    object BoldListHandleAddNewActionAllDiscount: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081' '#1074#1080#1076' '#1089#1082#1080#1076#1082#1080'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhAllDiscount
    end
    object BoldListHandleAddNewActionRelOfRPLAddPr: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1072#1103' '#1076#1086#1087#1083#1072#1090#1072'...'
      ImageIndex = 0
      BoldHandle = blhRelAdditPrice
    end
    object BoldListHandleAddNewActionRPLAdditPrice: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1072#1103' '#1087#1086#1079#1080#1094#1080#1103' '#1076#1086#1073'. '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1082#1072#1084#1087#1072#1085#1080#1080'...'
      ImageIndex = 0
      BoldHandle = blhRPLAdditPrice
    end
    object BoldListHandleAddNewActionReklamSeries: TAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1072#1103' '#1082#1072#1084#1087#1072#1085#1080#1103'...'
      ImageIndex = 0
      OnExecute = BoldListHandleAddNewActionReklamSeriesExecute
    end
    object NewCurrClientSaledPosAction: TAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1072#1103' '#1086#1087#1083#1072#1090#1072'...'
      ImageIndex = 0
      OnExecute = NewCurrClientSaledPosActionExecute
    end
    object BoldListHandleAddNewActionRPLCheks: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081' '#1089#1095#1105#1090'...'
      ImageIndex = 0
      BoldHandle = blhCurrMagClientChecks
    end
    object BoldListHandleAddNewActionAllRating: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081' '#1090#1080#1087' '#1086#1094#1077#1085#1082#1080'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhAllRating
    end
    object ActionNewRel: TAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1099#1081' '#1074#1099#1087#1091#1089#1082' '#1090#1077#1082'. '#1080#1079#1076#1072#1085#1080#1103'...'
      ImageIndex = 0
      OnExecute = ActionNewRelExecute
    end
    object DelRPLAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1072#1084#1087#1072#1085#1080#1102'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelRPLActionExecute
    end
    object DelMagAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079#1076#1072#1085#1080#1077'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelMagActionExecute
    end
    object DelSectAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1079#1076#1077#1083'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelSectActionExecute
    end
    object DelRelAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1087#1091#1089#1082'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelRelActionExecute
    end
    object DelStandPriceAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1072#1085#1076'. '#1094#1077#1085#1091'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelStandPriceActionExecute
    end
    object DeleteDiscountAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1080#1087' '#1089#1082#1080#1076#1082#1080'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DeleteDiscountActionExecute
    end
    object DelClTypeAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1080#1087' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelClTypeActionExecute
    end
    object DelCompAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1102'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelCompActionExecute
    end
    object DelReklTypeAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1080#1087' '#1088#1077#1082#1083#1072#1084#1099'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelReklTypeActionExecute
    end
    object DelStandSizeAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1072#1085#1076'. '#1088#1072#1079#1084#1077#1088'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelStandSizeActionExecute
    end
    object DelRatingAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1077#1081#1090#1080#1085#1075'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelRatingActionExecute
    end
    object NewCheckAction: TAction
      Category = 'Bold Actions'
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1089#1095#1105#1090'...'
      ImageIndex = 0
      OnExecute = NewCheckActionExecute
    end
    object DelCheckAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1095#1105#1090'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelCheckActionExecute
    end
    object DelCheckPosAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelCheckPosActionExecute
    end
    object BoldListHandleAddNewActionCheckPos: TBoldListHandleAddNewAction
      Category = 'Bold Actions'
      Caption = #1053#1086#1074#1072#1103' '#1087#1086#1079#1080#1094#1080#1103'...'
      Enabled = False
      ImageIndex = 0
      BoldHandle = blhClientCheckPos
    end
    object DelSaledAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1086#1087#1083#1072#1090#1091'...'
      ImageIndex = 1
      OnExecute = DelSaledActionExecute
    end
    object DelIndivClAction: TAction
      Category = 'Bold Actions'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1095#1072#1089#1090#1085#1099#1081' '#1082#1086#1085#1090#1072#1082#1090'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = DelIndivClActionExecute
    end
  end
  object blhReklPlacesOfMagSection: TBoldListHandle
    RootHandle = blhMagazines
    Expression = 
      'if bv_CurrMagSect=nil then'#13'if bv_AgFilt=nil then sostoit_iz_rekl' +
      'amnyh.yavl_mestom_reklamy else'#13'sostoit_iz_reklamnyh.yavl_mestom_' +
      'reklamy->select(vedyotsya_sotrudnikom=bv_AgFilt) endif'#13'else if b' +
      'v_AgFilt=nil then bv_CurrMagSect.yavl_mestom_reklamy else'#13'bv_Cur' +
      'rMagSect.yavl_mestom_reklamy->select(vedyotsya_sotrudnikom=bv_Ag' +
      'Filt) endif endif->select(not proshlo or bv_AllRPL)'
    Variables = bovReklPlacesOfMagSect
    Left = 328
    Top = 328
  end
  object blhAllProjects: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Proekt.allInstances'
    Left = 328
    Top = 376
  end
  object blhAllDocs: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Dokument.allInstances'
    Left = 328
    Top = 424
  end
  object blhRelOfReklPlacing: TBoldListHandle
    RootHandle = blhReklPlacesOfMagSection
    Expression = 'vyhod'
    Left = 328
    Top = 472
  end
  object blhViewAccessPanel: TBoldListHandle
    RootHandle = blhAllStates
    Expression = 'razreshenie_prosmatrivatj'
    Left = 448
    Top = 576
  end
  object blhSetAccessPanel: TBoldListHandle
    RootHandle = blhAllStates
    Expression = 'razreshenie_ustanavl'
    Left = 448
    Top = 632
  end
  object blhChangeAccessPanel: TBoldListHandle
    RootHandle = blhAllStates
    Expression = 'razreshenie_vyhoditj'
    Left = 448
    Top = 688
  end
  object blhMoveStates: TBoldListHandle
    RootHandle = blhAllStates
    Expression = 'imeet_perehodnye'
    Left = 448
    Top = 744
  end
  object blhStandCauseFactIntersect: TBoldListHandle
    RootHandle = blhStandartCauses
    Expression = 'prichina_uslov'
    Left = 432
    Top = 800
  end
  object bchCurrRelease: TBoldCursorHandle
    RootHandle = blhReleasesOfMag
    Left = 328
    Top = 520
  end
  object blhAllReklScales: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Razmery.allInstances'
    Left = 32
    Top = 80
  end
  object brhCurrMagSect: TBoldReferenceHandle
    StaticSystemHandle = BoldModelDM.bsh
    StaticValueTypeName = 'Razdel_izdaniya'
    Left = 312
    Top = 184
  end
  object bchCurrMag: TBoldCursorHandle
    RootHandle = blhMagazines
    Left = 408
    Top = 280
  end
  object bovReklPlacesOfMagSect: TBoldOclVariables
    Variables = <
      item
        BoldHandle = brhCurrMagSect
        VariableName = 'bv_CurrMagSect'
        UseListElement = False
      end
      item
        BoldHandle = bvhAllReklPlaces
        VariableName = 'bv_AllRPL'
        UseListElement = False
      end
      item
        BoldHandle = brhCurrAgent
        VariableName = 'bv_AgFilt'
        UseListElement = False
      end>
    Left = 416
    Top = 360
  end
  object blhAllDiscount: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Skidka.allInstances'
    Left = 416
    Top = 424
  end
  object bvhAllReklPlaces: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Boolean'
    Left = 424
    Top = 472
  end
  object blhRPLDiscount: TBoldListHandle
    RootHandle = blhReklPlacesOfMagSection
    Expression = 'sootn_so_skidk'
    Left = 416
    Top = 520
  end
  object blhRelAdditPrice: TBoldListHandle
    RootHandle = blhRelOfReklPlacing
    Expression = 'imeet_dobav_stoim'
    Left = 512
    Top = 440
  end
  object blhRPLAdditPrice: TBoldListHandle
    RootHandle = blhReklPlacesOfMagSection
    Expression = 'imeet_stoim_dop_rab'
    Left = 512
    Top = 528
  end
  object blhReklamTypeDiscount: TBoldListHandle
    RootHandle = blhReklamType
    Expression = 'sootn_tipa_so_skidk'
    Left = 560
    Top = 576
  end
  object behDefaultRekType: TBoldExpressionHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Tip_reklamy.allInstances->select(avtomaticheski and not ustarevs' +
      'haya)->first'
    Left = 560
    Top = 632
  end
  object blhAllIndividsClients: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Klient.allInstances->select(not yavl_yur_licom)'#13'->select((imeet_' +
      'reiting=bv_Rating) or (bv_Rating=nil))'#13'->select((org_imeet_speci' +
      'f=bv_ClType) or (bv_ClType=nil))'#13'->select(celevoi or not bv_Only' +
      'Reason)'#13'->orderby(imenovanie)'
    Variables = bovClientFilter
    Left = 304
    Top = 16
  end
  object blhAllCompany: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Klient.allInstances->select(yavl_yur_licom)'#13'->select((imeet_reit' +
      'ing=bv_Rating) or (bv_Rating=nil))'#13'->select((org_imeet_specif=bv' +
      '_ClType) or (bv_ClType=nil))'#13'->select(celevoi or not bv_OnlyReas' +
      'on)'#13'->orderby(imenovanie)'
    Variables = bovClientFilter
    Left = 408
    Top = 16
  end
  object blhCurrMagClientChecks: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Schyot.allInstances->select((not oplachen and not onulirovan)or ' +
      'bv_ShowAll)'
    Variables = bovCurrMagClChecks
    Left = 560
    Top = 688
  end
  object blhUnsaledCheks: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Schyot.allInstances->select(not (oplachen or onulirovan))->order' +
      'descending(data)'
    Left = 560
    Top = 744
  end
  object blhAllRating: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Reiting_klienta.allInstances'
    Left = 560
    Top = 800
  end
  object bovClientFilter: TBoldOclVariables
    Variables = <
      item
        BoldHandle = brhCurrRating
        VariableName = 'bv_Rating'
        UseListElement = False
      end
      item
        BoldHandle = bvhReasonCl
        VariableName = 'bv_OnlyReason'
        UseListElement = False
      end
      item
        BoldHandle = brhClientType
        VariableName = 'bv_ClType'
        UseListElement = False
      end>
    Left = 432
    Top = 848
  end
  object brhCurrRating: TBoldReferenceHandle
    StaticSystemHandle = BoldModelDM.bsh
    StaticValueTypeName = 'Reiting_klienta'
    Left = 560
    Top = 848
  end
  object blhClientSearch: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Klient.allInstances->select((imenovanie.sqlLike('#39'%'#39'+bv_Keywrd+'#39'%' +
      #39'))'#13' or (imenovanie.toLower.sqlLike('#39'%'#39'+bv_Keywrd+'#39'%'#39'))'#13' or (ime' +
      'novanie.toUpper.sqlLike('#39'%'#39'+bv_Keywrd+'#39'%'#39')))'
    Variables = bovClientSearch
    Left = 432
    Top = 896
  end
  object bovClientSearch: TBoldOclVariables
    Variables = <
      item
        BoldHandle = bvhlientSearchWord
        VariableName = 'bv_Keywrd'
        UseListElement = False
      end>
    Left = 560
    Top = 896
  end
  object bvhlientSearchWord: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'String'
    Left = 432
    Top = 944
  end
  object brhCurrAgent: TBoldReferenceHandle
    StaticSystemHandle = BoldModelDM.bsh
    StaticValueTypeName = 'Personal'
    Left = 504
    Top = 112
  end
  object blhTodayReminders: TBoldListHandle
    RootHandle = blhCurrUser
    Expression = 
      'imeet_napominaniya->select('#13'(data.formatDateTime('#39'dd.mm.yyyy'#39')=b' +
      'v_CTR.formatDateTime('#39'dd.mm.yyyy'#39')) or'#13'((data<bv_CTR) and not uc' +
      'hteno))->orderby(data)'
    Variables = bovAllReminders
    Left = 136
    Top = 992
  end
  object bvhCurrTime: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'DateTime'
    Left = 280
    Top = 992
  end
  object blhAttentionTodReminders: TBoldListHandle
    RootHandle = blhCurrUser
    Expression = 'imeet_napominaniya->select('#13'((data<bv_CTR) and not uchteno))'
    Variables = bovAllReminders
    Left = 136
    Top = 1040
  end
  object bovRPLRelNums: TBoldOclVariables
    Variables = <
      item
        BoldHandle = behCurrRelease
        VariableName = 'bv_CR'
        UseListElement = False
      end>
    Left = 664
    Top = 552
  end
  object behCurrRelease: TBoldExpressionHandle
    RootHandle = blhMagazines
    Expression = 'imeet_tekushii_vypusk.sort'
    Left = 664
    Top = 472
  end
  object blhSetNumInterval1: TBoldListHandle
    RootHandle = blhMagazines
    Expression = 
      'if imeet_vyhody->select(sort<=bv_CR)->size>=15 then'#13'imeet_vyhody' +
      '->select((sort<=self.imeet_vyhody->select(sort<=bv_CR)->orderdes' +
      'cending(sort)->at(10).sort) and '#13'(sort>=self.imeet_vyhody->selec' +
      't(sort<=bv_CR)->orderdescending(sort)->at(15).sort))'#13'else'#13'if ime' +
      'et_vyhody->select(sort<=bv_CR)->size>=6 then'#13' imeet_vyhody->sele' +
      'ct((sort<=self.imeet_vyhody->select(sort<=bv_CR)->orderdescendin' +
      'g(sort)->at(6).sort) and '#13'(sort>=self.imeet_vyhody->select(sort<' +
      '=bv_CR)->orderdescending(sort)->last.sort))'#13'else nil endif'#13'endif' +
      '->orderby(sort)'
    Variables = bovRPLRelNums
    Left = 664
    Top = 600
  end
  object blhSetNumInterval2: TBoldListHandle
    RootHandle = blhMagazines
    Expression = 
      'if imeet_vyhody->select(sort<=bv_CR)->size>=5 then'#13'imeet_vyhody-' +
      '>select((sort<=bv_CR) and '#13'(sort>=self.imeet_vyhody->select(sort' +
      '<=bv_CR)->orderdescending(sort)->at(5).sort))'#13'else imeet_vyhody-' +
      '>select((sort<=bv_CR) and '#13'(sort>=self.imeet_vyhody->select(sort' +
      '<=bv_CR)->orderdescending(sort)->last.sort))'#13'endif->union('#13'if im' +
      'eet_vyhody->select(sort>bv_CR)->size>=4 then'#13'imeet_vyhody->selec' +
      't((sort>bv_CR) and '#13'(sort<=self.imeet_vyhody->select(sort>bv_CR)' +
      '->orderby(sort)->at(4).sort))'#13'else imeet_vyhody->select((sort>bv' +
      '_CR) and '#13'(sort<=self.imeet_vyhody->select(sort>bv_CR)->orderby(' +
      'sort)->last.sort))'#13'endif'#13')->orderby(sort)'
    Variables = bovRPLRelNums
    Left = 664
    Top = 648
  end
  object blhSetNumInterval3: TBoldListHandle
    RootHandle = blhMagazines
    Expression = 
      'if imeet_vyhody->select(sort>bv_CR)->size>=14 then'#13'imeet_vyhody-' +
      '>select((sort<=self.imeet_vyhody->select(sort>bv_CR)->orderby(so' +
      'rt)->at(14).sort) and '#13'(sort>=self.imeet_vyhody->select(sort>bv_' +
      'CR)->orderby(sort)->at(5).sort))'#13'else'#13'if imeet_vyhody->select(so' +
      'rt>bv_CR)->size>=5 then'#13' imeet_vyhody->select((sort>=self.imeet_' +
      'vyhody->select(sort>bv_CR)->orderby(sort)->at(5).sort) and '#13'(sor' +
      't<=self.imeet_vyhody->select(sort>bv_CR)->orderby(sort)->last.so' +
      'rt))'#13'else nil endif'#13'endif->orderby(sort)'
    Variables = bovRPLRelNums
    Left = 664
    Top = 696
  end
  object bovOutList: TBoldOclVariables
    Variables = <
      item
        BoldHandle = blhReklPlacesOfMagSection
        VariableName = 'bv_RPL'
        UseListElement = False
      end>
    Left = 664
    Top = 744
  end
  object behCurrOut1: TBoldExpressionHandle
    RootHandle = blhSetNumInterval1
    Expression = 'bv_RPL.vyhod->select(vyhodit_v_vypuskah=self)->first'
    Variables = bovOutList
    Left = 664
    Top = 800
  end
  object behCurrOut2: TBoldExpressionHandle
    RootHandle = blhSetNumInterval2
    Expression = 'bv_RPL.vyhod->select(vyhodit_v_vypuskah=self)->first'
    Variables = bovOutList
    Left = 664
    Top = 848
  end
  object behCurrOut3: TBoldExpressionHandle
    RootHandle = blhSetNumInterval3
    Expression = 'bv_RPL.vyhod->select(vyhodit_v_vypuskah=self)->first'
    Variables = bovOutList
    Left = 664
    Top = 896
  end
  object AccountingActionList: TActionList
    Images = ImageListsDM.RPLPopUpIL
    Left = 496
    Top = 16
    object StopedRPLAction: TAction
      Enabled = False
      ImageIndex = 0
      OnExecute = StopedRPLActionExecute
    end
    object RPLCheckNewAction: TAction
      Caption = #1042#1099#1089#1090#1072#1074#1080#1090#1100' '#1089#1095#1105#1090'...'
      Enabled = False
      ImageIndex = 1
      OnExecute = RPLCheckNewActionExecute
    end
    object RPLCheckFindAction: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1089#1095#1105#1090#1091'...'
      Enabled = False
      ImageIndex = 9
      OnExecute = RPLCheckFindActionExecute
    end
    object RPLSaleCashAction: TAction
      Caption = #1042#1085#1077#1089#1090#1080' '#1085#1072#1083#1080#1095#1085#1091#1102' '#1086#1087#1083#1072#1090#1091'...'
      Enabled = False
      ImageIndex = 3
      OnExecute = RPLSaleCashActionExecute
    end
    object RPLSalePerCheckAction: TAction
      Caption = #1053#1072#1081#1090#1080' '#1089#1095#1105#1090' '#1080' '#1086#1090#1084#1077#1090#1080#1090#1100' '#1086#1087#1083#1072#1090#1091'...'
      Enabled = False
      ImageIndex = 7
      OnExecute = RPLSalePerCheckActionExecute
    end
    object SetSaledCheckAction: TAction
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1088#1080#1079#1085#1072#1082' "'#1054#1087#1083#1072#1095#1077#1085'" ('#1090#1086#1083#1100#1082#1086' '#1076#1083#1103' '#1086#1087#1083#1072#1095#1077#1085#1085#1099#1093' '#1087#1086' '#1089#1091#1084#1084#1077')...'
      Enabled = False
      ImageIndex = 5
      OnExecute = SetSaledCheckActionExecute
    end
    object CheckSaleAction: TAction
      Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1086#1087#1083#1072#1090#1091' '#1089#1095#1105#1090#1072' '#1073#1077#1079#1085#1072#1083#1086#1084'...'
      Enabled = False
      ImageIndex = 4
      OnExecute = CheckSaleActionExecute
    end
    object EmptyCheckAction: TAction
      Caption = #1054#1085#1091#1083#1080#1088#1086#1074#1072#1090#1100' '#1089#1095#1105#1090'...'
      Enabled = False
      ImageIndex = 6
      OnExecute = EmptyCheckActionExecute
    end
    object SaledMoveToCheckAction: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1089#1095#1105#1090#1091'...'
      Enabled = False
      ImageIndex = 9
      OnExecute = SaledMoveToCheckActionExecute
    end
    object SaledMoveToRPLAction: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1082#1072#1084#1087#1072#1085#1080#1080'...'
      Enabled = False
      ImageIndex = 10
      OnExecute = SaledMoveToRPLActionExecute
    end
    object CheckPosMoveToRPLAction: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1082#1072#1084#1087#1072#1085#1080#1080'...'
      Enabled = False
      ImageIndex = 10
      OnExecute = CheckPosMoveToRPLActionExecute
    end
    object CheckMoveToClientAction: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1082#1083#1080#1077#1085#1090#1091'...'
      Enabled = False
      ImageIndex = 8
      OnExecute = CheckMoveToClientActionExecute
    end
    object SetRelDateAction: TAction
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1072#1090#1091' '#1074#1099#1087#1091#1089#1082#1072'...'
      ImageIndex = 11
      OnExecute = SetRelDateActionExecute
    end
    object ToRPLUnsaleAction: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1082#1072#1084#1087#1072#1085#1080#1080'...'
      ImageIndex = 10
      OnExecute = ToRPLUnsaleActionExecute
    end
    object ToRPLQuestAction: TAction
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1082' '#1082#1072#1084#1087#1072#1085#1080#1080'...'
      ImageIndex = 10
      OnExecute = ToRPLQuestActionExecute
    end
  end
  object blhClientCheckPos: TBoldListHandle
    RootHandle = blhCurrMagClientChecks
    Expression = 'sostoit_iz_pozicii'
    Left = 432
    Top = 992
  end
  object blhAllRPL: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Razmeshenie_reklamy.allInstances->orderdescending(data)'
    Left = 32
    Top = 136
  end
  object bovCurrMagClChecks: TBoldOclVariables
    Variables = <
      item
        BoldHandle = bvhShowAllChecks
        VariableName = 'bv_ShowAll'
        UseListElement = False
      end>
    Left = 560
    Top = 944
  end
  object bvhShowAllChecks: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Boolean'
    Left = 560
    Top = 992
  end
  object blhAllActRPL: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Razmeshenie_reklamy.allInstances->select(not proshlo)->orderdesc' +
      'ending(data)'
    Left = 32
    Top = 184
  end
  object bovSaled: TBoldOclVariables
    Variables = <
      item
        BoldHandle = brhCurrClient
        VariableName = 'bv_CCL'
        UseListElement = False
      end>
    Left = 32
    Top = 232
  end
  object blhNotOldPrices: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Stoimostj.allInstances->select(not ustarevshaya)'
    Left = 32
    Top = 280
  end
  object blhNotOldReklTypes: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 'Tip_reklamy.allInstances->select(not ustarevshaya)'
    Left = 32
    Top = 344
  end
  object bvhReasonCl: TBoldVariableHandle
    StaticSystemHandle = BoldModelDM.bsh
    ValueTypeName = 'Boolean'
    Left = 32
    Top = 392
  end
  object blhClUnsaledChecks: TBoldListHandle
    RootHandle = brhCurrClient
    Expression = 
      'reklama_vhod_v_schyot->select(not (oplachen or onulirovan))->ord' +
      'erdescending(data)'
    Left = 40
    Top = 448
  end
  object blhUnSaleRPL: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Razmeshenie_reklamy.allInstances->select(not oplachen)->orderdes' +
      'cending(data)'
    Variables = bovAllReminders
    Left = 280
    Top = 1040
  end
  object blhQuestsionsRPL: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = 
      'Razmeshenie_reklamy.allInstances'#13'->select(not proshlo and (vyhod' +
      'it_v_vypuskah->size>0))'#13'->select((vyhodit_v_vypuskah'#13'->orderby(d' +
      'ata_vypuska)->last.data_vypuska.dateTimeAsFloat -'#13'bv_CTR.dateTim' +
      'eAsFloat)<bv_BefQ)'#13'->orderdescending(data)'
    Variables = bovAllReminders
    Left = 432
    Top = 1040
  end
  object behBeforeQuestsionsDays: TBoldExpressionHandle
    RootHandle = behSettElm
    Expression = 
      'dnei_napom_ob_okonch*'#13'(#2000-01-02.dateTimeAsFloat-#2000-01-01.d' +
      'ateTimeAsFloat)'
    Left = 560
    Top = 1040
  end
end
