object DatamigrationForm: TDatamigrationForm
  Left = 0
  Top = 0
  Caption = 'Data migration form'
  ClientHeight = 759
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridTables: TDBGrid
    Left = 0
    Top = 927
    Width = 433
    Height = 0
    Align = alLeft
    DataSource = DataSourceMeta
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 940
    Height = 161
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 805
    object cxButton1: TcxButton
      Left = 112
      Top = 83
      Width = 121
      Height = 25
      Caption = 'Set'
      TabOrder = 0
    end
    object cxComboBox2: TcxComboBox
      Left = 112
      Top = 56
      Properties.Items.Strings = (
        'Access Database'
        'MySQL database')
      TabOrder = 1
      Text = 'cxComboBoxTo'
      Width = 121
    end
    object cxComboBoxFrom: TcxComboBox
      Left = 112
      Top = 16
      Properties.Items.Strings = (
        'Access database'
        'MySQL database'
        'HTTP Service URL')
      Properties.OnChange = cxComboBoxFromPropertiesChange
      TabOrder = 2
      Text = 'cxComboBoxFrom'
      Width = 121
    end
    object PanelHttpService: TPanel
      Left = 248
      Top = 16
      Width = 401
      Height = 92
      TabOrder = 3
      Visible = False
      object cxTextEditServiceURL: TcxTextEdit
        AlignWithMargins = True
        Left = 4
        Top = 6
        Margins.Top = 5
        Align = alTop
        TabOrder = 0
        Text = 'http://pilotproject.napr.gov.ge/api/getsynch?get_content_field=1'
        TextHint = 'http://somewebaddress.com/api/getdata?=format=json'
        ExplicitLeft = 0
        ExplicitTop = 16
        ExplicitWidth = 401
        Width = 393
      end
      object cxTextEditJSONRootNodeName: TcxTextEdit
        AlignWithMargins = True
        Left = 4
        Top = 35
        Margins.Top = 5
        Align = alTop
        TabOrder = 1
        Text = 'result'
        TextHint = 'JSON root node name'
        ExplicitLeft = 160
        ExplicitTop = 48
        ExplicitWidth = 121
        Width = 393
      end
      object cxButton2: TcxButton
        AlignWithMargins = True
        Left = 4
        Top = 61
        Width = 393
        Height = 25
        Margins.Top = 2
        Align = alTop
        Caption = 'Retrive data from HTTP URL'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C6500436F6E766572743B5265706561743B4172
          726F773B45786368616E6765762368D20000032A49444154785E6D53694C5467
          147D8330B21697B20D90B24C0483ED4075001FCB94B1044424D646238B457170
          196618360B3874405B96010B418AD461699125085202DABA0C830BAB92F00344
          88C4000D0442F901F8C78926A7EF23F32824BDC9C9FBBE77EE39F7BE7BF32812
          3FFE194A5DBB1F4A5DEDFA9ACAEB3A44E512741E2294C90F1D21C8BA237A109F
          EFE345EE0C38D9ADA2751D006A3D541D21D49A7E902224032306C68664CBCC3B
          C17831A3414167D4FBA45B7E6A9F309E8D81E76C1864B5065344187B55C093D7
          F84B537EA7DBD36ED3D3A90D011F526FD39859A9C3FCEA7D34F427435E1B301B
          7DED8B185260C38088132B842149D57E5D37B5E7F078AC18AF175AB0F0EE3146
          E71A31BEA4C6C06C26746F2FA37B220FDFE47B10A5396BC0892B1408641AFA69
          EBD0153C99284141CB499C2EDC8FD0741748AB6868DF48F1DBD011486F7AC337
          DE767EEFD19DF18C8ECB1A6CFBEEBAA0A8FCAF5834F7CA1197BF7F29F0A253B9
          30D6216CB78B99D3D1DC3DC86A3A80C0447BFD9E48EBF21D2E5C7B22DE3C0393
          98A2CF47EAFA629150EA8D83124715439A1263D26684920FF7C3564FEC7CCC0E
          327732C09D0CAC08CF1A708FE4F0F5114A77445CE1635FB88D1B439A19C02526
          0C2CE863E73D14B7FA91FC6B1FA273BBF4C48435303254B460601D79E1A72F65
          15DDDA14CD20612D0D2BB38CCE6928286C1F45AD6E12AE5FA58F93DC8D219224
          6FF1091B89BAF37A76FD90BE7D6401D28A67B073F5E2472695469D5236693234
          BDCBE50F277052D50647BFC4AACD5B308E5135464B6FF4FC5DA59D826EFA1D9A
          5FAD20A3660009255AA4302DABFF1843F5F3199C297E007771C6F02ECFC860A2
          630D4C253FEB70EFD532EE4EAEA2F2E53F281B5842E3F0021E4DADA1AE771619
          B5FD0853D4C33940DEF3A9D7B7C78966CB16C40965F1C7BE6F9B97D70C43FD74
          11EA678B0857B44070BCF8E3DEC3B9732EA2B4473CE159E5279F057A3082ED44
          4C849B67C0E579063988CEDCF8252AAB439FD23C0EF1A526C2BAB16B6357DB31
          B14AD909655B7FA6505933BB0D734F9124803E5DD91B24A927EC0E57B1927216
          65523C3A9DB2F75750B6BE72CA76AB018B8D6E4C0C15AD0DE7FF0DD6E05FDF42
          745F4BE48E490000000049454E44AE426082}
        TabOrder = 2
        OnClick = cxButton2Click
        ExplicitLeft = 136
        ExplicitTop = 72
        ExplicitWidth = 75
      end
    end
  end
  object DBGridFields: TDBGrid
    Left = 0
    Top = 545
    Width = 940
    Height = 382
    Align = alTop
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 161
    Width = 940
    Height = 384
    Align = alTop
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object FDQuery1: TFDQuery
    Left = 136
    Top = 304
  end
  object FDMetaInfoQuery: TFDMetaInfoQuery
    Connection = DModule.FDConnectionMySQL
    Left = 136
    Top = 192
  end
  object DataSourceMeta: TDataSource
    DataSet = FDMetaInfoQuery
    Left = 136
    Top = 248
  end
  object FDMetaInfoQueryFields: TFDMetaInfoQuery
    MetaInfoKind = mkTableFields
    Left = 528
    Top = 248
  end
  object DataSourceFields: TDataSource
    DataSet = FDMetaInfoQueryFields
    Left = 528
    Top = 304
  end
  object RESTClient: TRESTClient
    Params = <>
    Left = 752
    Top = 56
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 752
    Top = 112
  end
  object RESTResponse1: TRESTResponse
    Left = 752
    Top = 168
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 752
    Top = 216
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 750
    Top = 264
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 748
    Top = 312
  end
end
