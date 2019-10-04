object DatamigrationForm: TDatamigrationForm
  Left = 0
  Top = 0
  Caption = 'Data migration form'
  ClientHeight = 759
  ClientWidth = 1461
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
  object Panel1: TPanel
    Left = 0
    Top = 313
    Width = 1461
    Height = 135
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 240
    ExplicitWidth = 940
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
      Top = 22
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 448
    Width = 1461
    Height = 311
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 940
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1461
    Height = 273
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 940
    DesignSize = (
      1461
      273)
    object Label1: TLabel
      Left = 18
      Top = 8
      Width = 99
      Height = 17
      Caption = 'Choose connection'
    end
    object Label2: TLabel
      Left = 370
      Top = 8
      Width = 89
      Height = 13
      Caption = 'Choose tablename'
    end
    object Label3: TLabel
      Left = 759
      Top = 8
      Width = 91
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Choose connection'
    end
    object Label4: TLabel
      Left = 1074
      Top = 8
      Width = 89
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Choose tablename'
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 18
      Top = 29
      DataBinding.DataField = 'conn_name'
      DataBinding.DataSource = dsConnections
      Properties.OnChange = cxDBComboBox1PropertiesChange
      TabOrder = 0
      Width = 231
    end
    object cxGrid2: TcxGrid
      Left = 18
      Top = 56
      Width = 687
      Height = 200
      TabOrder = 1
      object cxGrid2DBTableViewFields: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSourceFields
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid2DBTableViewFieldsTABLE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'TABLE_NAME'
          Width = 108
        end
        object cxGrid2DBTableViewFieldsCOLUMN_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'COLUMN_NAME'
          Width = 354
        end
        object cxGrid2DBTableViewFieldsCATALOG_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'CATALOG_NAME'
          Width = 105
        end
        object cxGrid2DBTableViewFieldsCOLUMN_TYPENAME: TcxGridDBColumn
          DataBinding.FieldName = 'COLUMN_TYPENAME'
          Width = 118
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableViewFields
      end
    end
    object cxButtonReetriveFields: TcxButton
      Left = 592
      Top = 20
      Width = 113
      Height = 30
      Caption = 'Retrive fields'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B093C7374796C6520747970653D22746578742F637373223E2E426C75657B
        66696C6C3A233131373744373B7D3C2F7374796C653E0D0A093C706174682063
        6C6173733D22426C75652220643D224D32322C366C2D362D36763443392E342C
        342C342C392E342C342C313663302C332E362C312E362C362E382C342E312C39
        6C322E382D322E38632D312E382D312E352D332D332E372D332D362E3263302D
        342E342C332E362D382C382D3876344C32322C367A222F3E0D0A093C70617468
        20636C6173733D22426C75652220643D224D32332E392C374C32312C392E3863
        312E382C312E352C332C332E372C332C362E3263302C342E342D332E362C382D
        382C38762D346C2D362C366C362C36762D3463362E362C302C31322D352E342C
        31322D313220202623393B4332382C31322E342C32362E342C392E322C32332E
        392C377A222F3E0D0A3C2F7376673E0D0A}
      TabOrder = 2
      OnClick = cxButtonReetriveFieldsClick
    end
    object cxDBComboBox2: TcxDBComboBox
      Left = 759
      Top = 29
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'conn_name'
      DataBinding.DataSource = dsConnections
      TabOrder = 3
      Width = 258
    end
    object cxGrid3: TcxGrid
      Left = 759
      Top = 56
      Width = 687
      Height = 200
      Anchors = [akTop, akRight]
      TabOrder = 4
      ExplicitLeft = 724
      object cxGrid3DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSourceFields
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGrid3DBTableView1TABLE_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'TABLE_NAME'
          Width = 146
        end
        object cxGrid3DBTableView1COLUMN_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'COLUMN_NAME'
          Width = 292
        end
        object cxGrid3DBTableView1CATALOG_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'CATALOG_NAME'
          Width = 103
        end
        object cxGrid3DBTableView1COLUMN_TYPENAME: TcxGridDBColumn
          DataBinding.FieldName = 'COLUMN_TYPENAME'
          Width = 144
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
    object cxButton3: TcxButton
      Left = 1333
      Top = 24
      Width = 113
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Retrive fields'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B2623393B093C7374796C6520747970653D22746578742F637373223E2E42
        6C75657B66696C6C3A233131373744373B7D3C2F7374796C653E0D0A093C7061
        746820636C6173733D22426C75652220643D224D32322C366C2D362D36763443
        392E342C342C342C392E342C342C313663302C332E362C312E362C362E382C34
        2E312C396C322E382D322E38632D312E382D312E352D332D332E372D332D362E
        3263302D342E342C332E362D382C382D3876344C32322C367A222F3E0D0A093C
        7061746820636C6173733D22426C75652220643D224D32332E392C374C32312C
        392E3863312E382C312E352C332C332E372C332C362E3263302C342E342D332E
        362C382D382C38762D346C2D362C366C362C36762D3463362E362C302C31322D
        352E342C31322D313220202623393B4332382C31322E342C32362E342C392E32
        2C32332E392C377A222F3E0D0A3C2F7376673E0D0A}
      TabOrder = 5
    end
    object cxDBComboBox3: TcxDBComboBox
      Left = 1039
      Top = 29
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'conn_name'
      DataBinding.DataSource = dsConnections
      TabOrder = 6
      Width = 258
    end
    object cxDBComboBox4: TcxDBComboBox
      Left = 297
      Top = 29
      DataBinding.DataField = 'TABLE_NAME'
      DataBinding.DataSource = dsTables
      TabOrder = 7
      Width = 231
    end
  end
  object FDQuery1: TFDQuery
    Left = 136
    Top = 304
  end
  object FDMetaInfoQuery: TFDMetaInfoQuery
    Connection = DModule.FDConnectionLocal
    Left = 136
    Top = 192
  end
  object DataSourceMeta: TDataSource
    DataSet = FDMetaInfoQuery
    Left = 136
    Top = 248
  end
  object FDMetaInfoQueryFields: TFDMetaInfoQuery
    Connection = DModule.FDConnectionLocal
    MetaInfoKind = mkTableFields
    BaseObjectName = 'conn_types'
    ObjectName = 'conn_types'
    Left = 528
    Top = 248
    object FDMetaInfoQueryFieldsRECNO: TIntegerField
      FieldName = 'RECNO'
      ReadOnly = True
    end
    object FDMetaInfoQueryFieldsCATALOG_NAME: TWideStringField
      FieldName = 'CATALOG_NAME'
      ReadOnly = True
      Size = 128
    end
    object FDMetaInfoQueryFieldsSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
      ReadOnly = True
      Size = 128
    end
    object FDMetaInfoQueryFieldsTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      ReadOnly = True
      Size = 128
    end
    object FDMetaInfoQueryFieldsCOLUMN_NAME: TWideStringField
      FieldName = 'COLUMN_NAME'
      ReadOnly = True
      Size = 128
    end
    object FDMetaInfoQueryFieldsCOLUMN_POSITION: TIntegerField
      FieldName = 'COLUMN_POSITION'
      ReadOnly = True
    end
    object FDMetaInfoQueryFieldsCOLUMN_DATATYPE: TIntegerField
      FieldName = 'COLUMN_DATATYPE'
      ReadOnly = True
    end
    object FDMetaInfoQueryFieldsCOLUMN_TYPENAME: TWideStringField
      FieldName = 'COLUMN_TYPENAME'
      ReadOnly = True
      Size = 128
    end
    object FDMetaInfoQueryFieldsCOLUMN_ATTRIBUTES: TLongWordField
      FieldName = 'COLUMN_ATTRIBUTES'
      ReadOnly = True
    end
    object FDMetaInfoQueryFieldsCOLUMN_PRECISION: TIntegerField
      FieldName = 'COLUMN_PRECISION'
      ReadOnly = True
    end
    object FDMetaInfoQueryFieldsCOLUMN_SCALE: TIntegerField
      FieldName = 'COLUMN_SCALE'
      ReadOnly = True
    end
    object FDMetaInfoQueryFieldsCOLUMN_LENGTH: TIntegerField
      FieldName = 'COLUMN_LENGTH'
      ReadOnly = True
    end
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
  object FDTableConnections: TFDTable
    AfterScroll = FDTableConnectionsAfterScroll
    IndexFieldNames = 'id'
    Connection = DModule.FDConnectionLocal
    UpdateOptions.UpdateTableName = 'connections'
    TableName = 'connections'
    Left = 240
    object FDTableConnectionsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableConnectionsconn_id: TIntegerField
      FieldName = 'conn_id'
      Origin = 'conn_id'
    end
    object FDTableConnectionsconn_type_id: TIntegerField
      FieldName = 'conn_type_id'
      Origin = 'conn_type_id'
    end
    object FDTableConnectionsconn_type_name: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'conn_type_name'
      LookupDataSet = FDTableConnTypes
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'conn_type_id'
      Size = 0
      Calculated = True
    end
    object FDTableConnectionsconn_name: TStringField
      FieldName = 'conn_name'
      Origin = 'conn_name'
      Size = 255
    end
  end
  object FDTableConnTypes: TFDTable
    IndexFieldNames = 'id'
    Connection = DModule.FDConnectionLocal
    UpdateOptions.UpdateTableName = 'conn_types'
    TableName = 'conn_types'
    Left = 240
    Top = 46
    object FDTableConnTypesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableConnTypesname: TWideMemoField
      FieldName = 'name'
      Origin = 'name'
      BlobType = ftWideMemo
    end
  end
  object dsConnections: TDataSource
    DataSet = FDTableConnections
    Left = 240
    Top = 88
  end
  object FDTableAccess: TFDTable
    Connection = DModule.FDConnectionAccess
    Left = 528
    Top = 64
  end
  object dsTables: TDataSource
    DataSet = FDMetaInfoQueryTables
    Left = 384
    Top = 104
  end
  object FDMetaInfoQueryTables: TFDMetaInfoQuery
    Connection = DModule.FDConnectionLocal
    Left = 384
    Top = 56
    object FDMetaInfoQueryTablesRECNO: TIntegerField
      FieldName = 'RECNO'
      ReadOnly = True
    end
    object FDMetaInfoQueryTablesCATALOG_NAME: TWideStringField
      FieldName = 'CATALOG_NAME'
      ReadOnly = True
      Size = 128
    end
    object FDMetaInfoQueryTablesSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
      ReadOnly = True
      Size = 128
    end
    object FDMetaInfoQueryTablesTABLE_NAME: TWideStringField
      FieldName = 'TABLE_NAME'
      ReadOnly = True
      Size = 128
    end
    object FDMetaInfoQueryTablesTABLE_TYPE: TIntegerField
      FieldName = 'TABLE_TYPE'
      ReadOnly = True
    end
    object FDMetaInfoQueryTablesTABLE_SCOPE: TIntegerField
      FieldName = 'TABLE_SCOPE'
      ReadOnly = True
    end
  end
  object FDMetaInfoQuery2: TFDMetaInfoQuery
    Left = 1088
    Top = 128
  end
end
