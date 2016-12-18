object ReportDM: TReportDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 254
  Width = 528
  object RvProject: TRvProject
    Left = 96
    Top = 48
  end
  object RvDataSetConnectionAllTaxSumm: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DisableDataSource = False
    RestoreDataSet = False
    DataSet = AllTaxSummCDS
    Left = 96
    Top = 112
  end
  object AllTaxSummBoldDataSet: TBoldDataSet
    FieldDescriptions = <
      item
        BoldProperties.Expression = 'familiya'
      end
      item
        BoldProperties.Expression = 'imya'
      end
      item
        BoldProperties.Expression = 'otchestvo'
      end
      item
        BoldProperties.Expression = 'ulica'
      end
      item
        BoldProperties.Expression = 'dom'
      end
      item
        BoldProperties.Expression = 'kvartira'
      end
      item
        BoldProperties.Expression = 'korpus'
      end
      item
        BoldProperties.Expression = 'mobiljnyi_telefon'
      end
      item
        BoldProperties.Expression = 'rabochii_telefon'
      end
      item
        BoldProperties.Expression = 'domashnii_telefon'
      end
      item
        BoldProperties.Expression = 'elektronnyi_adres'
      end
      item
        BoldProperties.Expression = 'polnoe_imya'
      end
      item
        BoldProperties.Expression = 'strana'
      end
      item
        BoldProperties.Expression = 'oblastj'
      end
      item
        BoldProperties.Expression = 'gorod'
      end
      item
        BoldProperties.Expression = 'bIK'
      end
      item
        BoldProperties.Expression = 'naimenovanie'
      end
      item
        BoldProperties.Expression = 'yavlyaetsyaVlad'
      end
      item
        BoldProperties.Expression = 'rukovoditelj'
      end
      item
        BoldProperties.Expression = 'glBuhgalter'
      end
      item
        BoldProperties.Expression = 'iNN'
      end
      item
        BoldProperties.Expression = 'rasch__schet'
      end
      item
        BoldProperties.Expression = 'kPP'
      end
      item
        BoldProperties.Expression = 'tip_organizacii'
      end
      item
        BoldProperties.Expression = 'kor_schet'
      end
      item
        BoldProperties.Expression = 'naim__banka'
      end
      item
        BoldProperties.Expression = 'adres'
      end
      item
        BoldProperties.Expression = 'telefony'
      end
      item
        BoldProperties.Expression = 'nachalo_intervala_raschyota'
      end
      item
        BoldProperties.Expression = 'konec_intervala_raschyota'
      end
      item
        BoldProperties.Expression = 'zarabotal_vsego'
      end
      item
        BoldProperties.Expression = 'zarabotal_za_period'
      end
      item
        BoldProperties.Expression = 'proc_vsego'
      end
      item
        BoldProperties.Expression = 'proc_za_period'
      end
      item
        BoldProperties.Expression = 'prinyos_vsego'
      end
      item
        BoldProperties.Expression = 'prinyos_za_period'
      end
      item
        BoldProperties.Expression = 'dolg_vsego'
      end
      item
        BoldProperties.Expression = 'dolg_za_period'
      end
      item
        BoldProperties.Expression = 'velichina_procenta'
      end
      item
        BoldProperties.Expression = 'pozyvnoi'
      end>
    AutoOpen = False
    Left = 96
    Top = 168
  end
  object bdsOneTaxOnDaysMoving: TBoldDataSet
    FieldDescriptions = <
      item
        BoldProperties.Expression = 'nomer_na_ulice'
      end
      item
        BoldProperties.Expression = 'yavl_pochasovym'
      end
      item
        BoldProperties.Expression = 'kolichestvo_chasov'
      end
      item
        BoldProperties.Expression = 'nachalo_zakaza_data'
      end
      item
        BoldProperties.Expression = 'konec_zakaza_data'
      end
      item
        BoldProperties.Expression = 'telefon_klienta'
      end
      item
        BoldProperties.Expression = 'mesto_naznacheniya'
      end
      item
        BoldProperties.Expression = 'pozyvnoi'
      end
      item
        BoldProperties.Expression = 'stoimostj_zakaza'
      end
      item
        BoldProperties.Expression = 'nomer_zakaza'
      end
      item
        BoldProperties.Expression = 'vypolnyaetsya'
      end
      item
        BoldProperties.Expression = 'prinyat'
      end
      item
        BoldProperties.Expression = 'cvetovoe_oboznachenie'
      end
      item
        BoldProperties.Expression = 'data_podachi'
      end
      item
        BoldProperties.Expression = 'vremya_podachi'
      end
      item
        BoldProperties.Expression = 'vremya_nachala'
      end
      item
        BoldProperties.Expression = 'vremya_okonchaniya'
      end
      item
        BoldProperties.Expression = 'podacha'
      end
      item
        BoldProperties.Expression = 'nachalo'
      end
      item
        BoldProperties.Expression = 'konec_zakaza'
      end
      item
        BoldProperties.Expression = 'zavershyon'
      end
      item
        BoldProperties.Expression = 'arhivnyi'
      end
      item
        BoldProperties.Expression = 'uslovn_stoim'
      end
      item
        BoldProperties.Expression = 'naznach_objekt'
      end
      item
        BoldProperties.Expression = 'naznach_ulica'
      end
      item
        BoldProperties.Expression = 'naznach_perekrest'
      end
      item
        BoldProperties.Expression = 'naznach_raion'
      end
      item
        BoldProperties.Expression = 'adres_vyzova_vvodim'
      end>
    AutoOpen = False
    Left = 272
    Top = 168
  end
  object bdsDispatchActivity: TBoldDataSet
    FieldDescriptions = <>
    AutoOpen = False
    Left = 416
    Top = 168
  end
  object rdscOneTaxOnDaysMoving: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = OneTaxOnDaysCDS
    Left = 304
    Top = 96
  end
  object rdscDispatchActivity: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 408
    Top = 112
  end
  object AllTaxSummCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AllTaxSummDataSetProvider'
    Left = 176
    Top = 24
  end
  object AllTaxSummDataSetProvider: TDataSetProvider
    DataSet = AllTaxSummBoldDataSet
    Left = 200
    Top = 80
  end
  object OneTaxOnDaysDataSetProvider: TDataSetProvider
    DataSet = bdsOneTaxOnDaysMoving
    Left = 352
    Top = 40
  end
  object OneTaxOnDaysCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'OneTaxOnDaysDataSetProvider'
    Left = 264
    Top = 16
  end
end
