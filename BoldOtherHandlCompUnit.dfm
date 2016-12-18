object BoldOthHandleCompDM: TBoldOthHandleCompDM
  OldCreateOrder = False
  Height = 754
  Width = 521
  object bpcEnabledAdmin: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razresh_administr or razreshitj_vsyo'
    DrivenProperties = <
      item
        VCLComponent = FirstForm.AdminPanelToolButton
        PropertyName = 'Enabled'
        ReadOnly = False
      end
      item
        VCLComponent = FirstForm.AdminPanelMenu
        PropertyName = 'Enabled'
        ReadOnly = False
      end>
    Left = 256
    Top = 40
  end
  object bpcEnablkedPrSettings: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razresh_nastroiku_raboty  or razreshitj_vsyo'
    DrivenProperties = <
      item
        VCLComponent = FirstForm.SettingsToolButton
        PropertyName = 'Enabled'
        ReadOnly = False
      end>
    Left = 48
    Top = 40
  end
  object bpcEnabledLogView: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razreshitj_prosmotr_logov or razreshitj_vsyo'
    DrivenProperties = <
      item
        VCLComponent = FirstForm.LogPanelToolButton
        PropertyName = 'Enabled'
        ReadOnly = False
      end>
    Left = 160
    Top = 40
  end
  object bpcCurrUserName: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = #39'USER: '#39'+polnoe_imya'
    BoldProperties.NilStringRepresentation = #1053#1077#1090' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.sStatusBar1
        PropertyName = 'Panels[0].Text'
      end>
    Left = 48
    Top = 96
  end
  object bpcCurrClient: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.brhCurrClient
    BoldProperties.Expression = #39#1058#1077#1082'. '#1082#1083#1080#1077#1085#1090': '#39'+imenovanie'
    BoldProperties.NilStringRepresentation = #1053#1077#1090' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1075#1086' '#1082#1083#1080#1077#1085#1090#1072
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.sStatusBar1
        PropertyName = 'Panels[1].Text'
      end>
    Left = 160
    Top = 96
  end
  object bpcCurrMag: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhMagazines
    BoldProperties.Expression = #39#1058#1077#1082'. '#1080#1079#1076#1072#1085#1080#1077': '#39'+naimenovanie'
    BoldProperties.NilStringRepresentation = #1053#1077#1090' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1075#1086' '#1080#1079#1076#1072#1085#1080#1103
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.sStatusBar1
        PropertyName = 'Panels[2].Text'
      end>
    Left = 256
    Top = 96
  end
  object bpcCurrMagRelease: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhMagazines
    BoldProperties.Expression = 
      #39#8470' '#39'+imeet_tekushii_vypusk.nomer_vypuska.asString+'#13#39' '#1075'.'#39'+imeet_t' +
      'ekushii_vypusk.god_vypuska.asString'
    BoldProperties.NilStringRepresentation = #1053#1077#1090' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1075#1086' '#1074#1099#1087'. '#1090#1077#1082'. '#1080#1079#1076#1072#1085#1080#1103
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.sStatusBar1
        PropertyName = 'Panels[3].Text'
      end>
    Left = 48
    Top = 152
  end
  object basrOccupSquare: TBoldAsStringRenderer
    OnGetAsString = basrOccupSquareGetAsString
    Left = 160
    Top = 152
  end
  object bpcEnableStandSizes: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReklPlacesOfMagSection
    BoldProperties.Expression = 'isp_stand_razmer'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.Label23
        PropertyName = 'Enabled'
      end
      item
      end>
    Left = 272
    Top = 152
  end
  object bpcSpecPrice: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReklPlacesOfMagSection
    BoldProperties.Expression = 'isp_ustan_stoim'
    DrivenProperties = <
      item
      end>
    Left = 48
    Top = 208
  end
  object basrRelOfReklColor: TBoldAsStringRenderer
    OnSetColor = basrRelOfReklColorSetColor
    Left = 160
    Top = 208
  end
  object bpcRPLPriceInfo: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReklPlacesOfMagSection
    BoldProperties.Expression = 
      #39#1057#1090#1086#1080#1084#1086#1089#1090#1080': '#1088#1072#1079#1084#1077#1097'. - '#39'+obshaya_stoim.asString+'#39' '#1088#1091#1073'.'#39'+'#13#39', '#1076#1086#1073'. ' +
      '- '#39'+vsego_dob_stoim.asString+'#39' '#1088#1091#1073'.'#39'+'#13#39', '#1076#1086#1073'. '#1087#1086' '#1074#1099#1087'. - '#39'+vsego_' +
      'dob_stoim_po_vyh.asString+'#39' '#1088#1091#1073'.'#39'+'#13#39', '#1080#1090#1086#1075#1086' - '#39'+obshaya_stoim.as' +
      'String+'#39' '#1088#1091#1073'.'#39'+'#13#39', '#1073#1086#1085#1091#1089' '#1085#1072' '#39'+bonus_vyhod.asString+'#39' '#1074#1099#1093'.'#39
    BoldProperties.NilStringRepresentation = #1053#1077#1090' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1081' '#1082#1072#1084#1087#1072#1085#1080#1080
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.sStatusBar2
        PropertyName = 'Panels[0].Text'
      end>
    Left = 272
    Top = 208
  end
  object basrBonusColor: TBoldAsStringRenderer
    OnGetAsString = basrBonusColorGetAsString
    OnSetColor = basrBonusColorSetColor
    Left = 48
    Top = 256
  end
  object basrCheckYesNo: TBoldAsStringRenderer
    OnGetAsString = basrCheckYesNoGetAsString
    Left = 160
    Top = 256
  end
  object blhCheckYesNo: TBoldListHandle
    RootHandle = BoldModelDM.bsh
    Expression = #39#1041#1045#1047#1053#1040#1051#1048#1063#1053#1067#1049' '#1056#1040#1057#1063#1025#1058#39'->union('#39#1053#1040#1051#1048#1063#1053#1067#1049' '#1056#1040#1057#1063#1025#1058#39')'
    Left = 272
    Top = 256
  end
  object basrAttentionReminders: TBoldAsStringRenderer
    OnSetColor = basrAttentionRemindersSetColor
    Left = 48
    Top = 304
  end
  object bpcShowPriceListAttr: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReklPlacesOfMagSection
    BoldProperties.Expression = 'za_chisl_strok and (self<>nil)'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.PriceListAttrTabSheet
        PropertyName = 'TabVisible'
      end>
    Left = 160
    Top = 304
  end
  object bpcShowOptAttr: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReklPlacesOfMagSection
    BoldProperties.Expression = 'opt_dlya_dolgih and (self<>nil)'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.OptTabSheet
        PropertyName = 'TabVisible'
      end>
    Left = 48
    Top = 352
  end
  object basrHasOut: TBoldAsStringRenderer
    OnGetAsString = basrHasOutGetAsString
    Left = 160
    Top = 352
  end
  object bpcEnableMagDelete: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razr_udalenie_izdanii'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.DelMagAction
        PropertyName = 'Enabled'
      end>
    Left = 48
    Top = 400
  end
  object bpcEnableSectDelete: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razr_udalenie_razdelov'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.DelSectAction
        PropertyName = 'Enabled'
      end>
    Left = 160
    Top = 400
  end
  object bpcEnableRelDelete: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razreshitj_udalenie_vypuskov'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.DelRelAction
        PropertyName = 'Enabled'
      end>
    Left = 272
    Top = 400
  end
  object bpcEnableOtherDelete: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razreshitj_udalenie_ostaljnogo'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.DeleteDiscountAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.DelRatingAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.DelReklTypeAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.DelStandPriceAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.DelStandSizeAction
        PropertyName = 'Enabled'
      end>
    Left = 48
    Top = 448
  end
  object bpcEnableRPLDelete: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razreshitj_udalenie_objyavlenii'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.DelRPLAction
        PropertyName = 'Enabled'
      end>
    Left = 160
    Top = 448
  end
  object bpcEnableViewPrice: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razreshitj_smotr_ceny'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.ClientSaleInfoTabSheet
        PropertyName = 'TabVisible'
      end
      item
        VCLComponent = ReleaseStructForm.CheksTabSheet
        PropertyName = 'TabVisible'
      end
      item
        VCLComponent = ReleaseStructForm.SaledTabSheet
        PropertyName = 'TabVisible'
      end>
    Left = 272
    Top = 448
  end
  object bpcEnableRPLManip: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razresh_rab_s_rekl_kamp'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.RPLTabSheet
        PropertyName = 'TabVisible'
      end>
    Left = 48
    Top = 496
  end
  object bpcPriceMultEnable: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReklPlacesOfMagSection
    BoldProperties.Expression = 'razr_mnogitelj'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.PriceMultLabel
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = ReleaseStructForm.PriceMultsBoldEdit
        PropertyName = 'Enabled'
      end>
    Left = 272
    Top = 304
  end
  object bpcEnableOtherPrice: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReklPlacesOfMagSection
    BoldProperties.Expression = 'isp_ustan_stoim'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.OtherPriceBoldEdit
        PropertyName = 'Enabled'
      end>
    Left = 272
    Top = 352
  end
  object bpcEnableWorkWithTypes: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razreshitj_rabotu_s_tipami'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.StandSizeSpeedButton
        PropertyName = 'Enabled'
      end>
    Left = 160
    Top = 496
  end
  object bpcEnableBonusDisc: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhAllDiscount
    BoldProperties.Expression = 'bonus'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.BonusDiscParamTabSheet
        PropertyName = 'TabVisible'
      end>
    Left = 272
    Top = 496
  end
  object bpcEnOptDiscParam: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhAllDiscount
    BoldProperties.Expression = 'opt_dlya_dolgih'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.OptDiscountParamTabSheet
        PropertyName = 'TabVisible'
      end>
    Left = 48
    Top = 544
  end
  object bpcEnPLDiscParam: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhAllDiscount
    BoldProperties.Expression = 'za_chisl_strok'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.PLDiscParamTabSheet
        PropertyName = 'TabVisible'
      end>
    Left = 160
    Top = 544
  end
  object bpcRPLHas: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReklPlacesOfMagSection
    BoldProperties.Expression = 'self<>nil'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.StopedRPLAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.RPLCheckNewAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.RPLCheckFindAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.RPLSaleCashAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.RPLSalePerCheckAction
        PropertyName = 'Enabled'
      end>
    Left = 272
    Top = 544
  end
  object bpcRPLStopRestart: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReklPlacesOfMagSection
    BoldProperties.Expression = 
      'if not proshlo then '#39#1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1088#1077#1082#1083#1072#1084#1085#1091#1102' '#1082#1072#1084#1087#1072#1085#1080#1102'...'#39' else'#13#39#1053#1072#1095#1072 +
      #1090#1100' '#1079#1072#1085#1086#1074#1086' '#1088#1077#1082#1083#1072#1084#1085#1091#1102' '#1082#1072#1084#1087#1072#1085#1080#1102'...'#39' endif'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.StopedRPLAction
        PropertyName = 'Caption'
      end>
    Left = 48
    Top = 592
  end
  object bpcRPLStopStartIcon: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReklPlacesOfMagSection
    BoldProperties.Expression = 'if proshlo then 3 else 0 endif'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.StopedRPLAction
        PropertyName = 'ImageIndex'
      end>
    Left = 160
    Top = 592
  end
  object basrUnsaledRPLColor: TBoldAsStringRenderer
    OnSetColor = basrUnsaledRPLColorSetColor
    Left = 376
    Top = 40
  end
  object basrUnsaledChecks: TBoldAsStringRenderer
    OnSetColor = basrUnsaledChecksSetColor
    Left = 376
    Top = 96
  end
  object basrUnsaledColor: TBoldAsStringRenderer
    OnGetAsString = basrUnsaledColorGetAsString
    OnSetColor = basrUnsaledColorSetColor
    Left = 376
    Top = 152
  end
  object bpcCheckHas: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrMagClientChecks
    BoldProperties.Expression = 'self<>nil'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.CheckSaleAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.EmptyCheckAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.SetSaledCheckAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.CheckMoveToClientAction
        PropertyName = 'Enabled'
      end>
    Left = 272
    Top = 592
  end
  object bpcEnCheckDel: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razr_udalyatj_scheta'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.DelCheckAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.DelCheckPosAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.DelSaledAction
        PropertyName = 'Enabled'
      end>
    Left = 48
    Top = 640
  end
  object bpcEnClientDel: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrUser
    BoldProperties.Expression = 'razreshitj_udalyatj_kontakty'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.DelCompAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.DelClTypeAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.DelIndivClAction
        PropertyName = 'Enabled'
      end>
    Left = 160
    Top = 640
  end
  object bpcHasCheckPos: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhClientCheckPos
    BoldProperties.Expression = 'self<>nil'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.CheckPosMoveToRPLAction
        PropertyName = 'Enabled'
      end>
    Left = 272
    Top = 640
  end
  object bpcHasSaledPos: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhCurrClientSaled
    BoldProperties.Expression = 'self<>nil'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.SaledMoveToCheckAction
        PropertyName = 'Enabled'
      end
      item
        VCLComponent = BoldHandlesDM.SaledMoveToRPLAction
        PropertyName = 'Enabled'
      end>
    Left = 48
    Top = 688
  end
  object bpcViewSaledComp: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.brhCurrClient
    BoldProperties.Expression = 'self<>nil'
    DrivenProperties = <
      item
        VCLComponent = ReleaseStructForm.sBoldListBox6
        PropertyName = 'Visible'
      end
      item
        VCLComponent = ReleaseStructForm.sBoldListBox7
        PropertyName = 'Visible'
      end>
    Left = 376
    Top = 208
  end
  object bpcHasRel: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhReleasesOfMag
    BoldProperties.Expression = 'self<>nil'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.SetRelDateAction
      end>
    Left = 376
    Top = 256
  end
  object bpcHasUnsaledRPL: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhUnSaleRPL
    BoldProperties.Expression = 'self<>nil'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.ToRPLUnsaleAction
        PropertyName = 'Enabled'
      end>
    Left = 376
    Top = 304
  end
  object bpcHasQuestRPL: TBoldPropertiesController
    BoldHandle = BoldHandlesDM.blhQuestsionsRPL
    BoldProperties.Expression = 'self<>nil'
    DrivenProperties = <
      item
        VCLComponent = BoldHandlesDM.ToRPLQuestAction
        PropertyName = 'Enabled'
      end>
    Left = 376
    Top = 352
  end
end
