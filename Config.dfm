object FormConfiguration: TFormConfiguration
  Left = 0
  Top = 0
  Caption = 'Database connection configuration'
  ClientHeight = 713
  ClientWidth = 1045
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PanelConnList: TPanel
    AlignWithMargins = True
    Left = 50
    Top = 50
    Width = 945
    Height = 613
    Margins.Left = 50
    Margins.Top = 50
    Margins.Right = 50
    Margins.Bottom = 50
    Align = alClient
    TabOrder = 1
    ExplicitTop = 277
    ExplicitWidth = 755
    ExplicitHeight = 210
    object cxGridConnections: TcxGrid
      Left = 1
      Top = 1
      Width = 943
      Height = 611
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 607
      object cxGridConnectionsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsConnections
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        object cxGridConnectionsDBTableView1id: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          Width = 48
        end
        object cxGridConnectionsDBTableView1conn_name: TcxGridDBColumn
          Caption = 'Connection name'
          DataBinding.FieldName = 'conn_name'
          Width = 352
        end
        object cxGridConnectionsDBTableView1connection_type: TcxGridDBColumn
          Caption = 'Connection type'
          DataBinding.FieldName = 'connection_type'
          Width = 351
        end
      end
      object cxGridConnectionsLevel1: TcxGridLevel
        GridView = cxGridConnectionsDBTableView1
      end
    end
  end
  object cxButtonAddNewConn: TcxButton
    Left = 50
    Top = 7
    Width = 185
    Height = 37
    Action = ActionNewConn
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
      462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2241
      64645F446174615F536F757263652220786D6C6E733D22687474703A2F2F7777
      772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22
      687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D
      223070782220793D22307078222076696577426F783D22302030203332203332
      22207374796C653D22656E61626C652D6261636B67726F756E643A6E65772030
      20302033322033323B2220786D6C3A73706163653D227072657365727665223E
      262331333B262331303B093C7374796C6520747970653D22746578742F637373
      2220786D6C3A73706163653D227072657365727665223E2E477265656E7B6669
      6C6C3A233033394332333B7D262331333B262331303B2623393B2E59656C6C6F
      777B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A093C70617468
      20636C6173733D2259656C6C6F772220643D224D342C3130563663302D322E32
      2C342E352D342C31302D347331302C312E382C31302C34763463302C322E322D
      342E352C342D31302C3453342C31322E322C342C31307A204D31342C32306332
      2E332C302C342E332D302E332C362D302E385631366834762D3420202623393B
      63302C322E322D342E352C342D31302C3453342C31342E322C342C3132763443
      342C31382E322C382E352C32302C31342C32307A204D31362C32312E39433135
      2E342C32322C31342E372C32322C31342C3232632D352E352C302D31302D312E
      382D31302D34763463302C322E322C342E352C342C31302C3420202623393B63
      302E372C302C312E342C302C322D302E315632312E397A222F3E0D0A093C706F
      6C79676F6E20636C6173733D22477265656E2220706F696E74733D2233302C32
      322032362C32322032362C31382032322C31382032322C32322031382C323220
      31382C32362032322C32362032322C33302032362C33302032362C3236203330
      2C323620222F3E0D0A3C2F7376673E0D0A}
    TabOrder = 2
  end
  object PageControl: TPageControl
    AlignWithMargins = True
    Left = 50
    Top = 50
    Width = 945
    Height = 613
    Margins.Left = 50
    Margins.Top = 50
    Margins.Right = 50
    Margins.Bottom = 50
    ActivePage = TabSheetMSAccess
    Align = alClient
    TabOrder = 0
    Visible = False
    ExplicitHeight = 349
    object TabSheetMySQL: TTabSheet
      Caption = 'MySQL'
      ExplicitLeft = 1
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 350
        Top = 126
        Width = 321
        Height = 297
        Align = alCustom
        TabOrder = 0
        ExplicitLeft = 278
        ExplicitTop = 54
        object Label1: TLabel
          Left = 42
          Top = 67
          Width = 22
          Height = 13
          Caption = 'Host'
        end
        object Label2: TLabel
          Left = 42
          Top = 107
          Width = 48
          Height = 13
          Caption = 'Username'
        end
        object Label3: TLabel
          Left = 42
          Top = 147
          Width = 46
          Height = 13
          Caption = 'Password'
        end
        object Label4: TLabel
          Left = 42
          Top = 186
          Width = 46
          Height = 13
          Caption = 'Database'
        end
        object LabelStatus: TLabel
          Left = 64
          Top = 256
          Width = 3
          Height = 13
          Color = clGreen
          ParentColor = False
        end
        object EditUsername: TEdit
          Left = 130
          Top = 104
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'root'
        end
        object EditPassword: TEdit
          Left = 130
          Top = 144
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'vertrigo'
        end
        object EditDatabase: TEdit
          Left = 130
          Top = 184
          Width = 121
          Height = 21
          TabOrder = 2
          Text = 'geoturs'
        end
        object EditHost: TEdit
          Left = 130
          Top = 64
          Width = 121
          Height = 21
          TabOrder = 3
          Text = '127.0.0.1'
        end
        object cxTextEditConnName: TcxTextEdit
          Left = 42
          Top = 23
          TabOrder = 4
          TextHint = 'Connection name'
          Width = 209
        end
        object cxButton1: TcxButton
          Left = 42
          Top = 227
          Width = 211
          Height = 50
          Caption = 'Save connection'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000B744558745469746C6500536176653BF9E8F9090000020349444154
            785E7D52316B145110FEDEE6EE9A03EF2E57284A6C6DAC42C0262185829D0A36
            16820AFE010BADC47F60AB2022585A588875B01041822158D858081204956872
            DC5DD6DD3733CF99D93DD713CCC0F7BEF776E7FB66E6ED0654912982633EFCFC
            9F67A2603B2CAC9DBFB2810CEB4B274EE1E4D271B0303832A24450A94C113112
            2846ECED8F301A7DB59CD76F379E9F6D9901425A5F3DB38C4F9FC7B87BE70690
            60E1E49C80BC886049B87EF33656964F6373EBFD1A8096190466017352B0ABA6
            BF22C4D5C9C5972E5CD632010F1F3F0553C4CECE17088B8F9ED99292B898884C
            EFE2548B270711D942867E7F114717BB9E0308582A83962D2C6EE0EE2925EFA6
            245671899205ED561B9D4EA77EC7CA6D887063904CCCE29735C923BEEF4F91C4
            A771DC7FF008C7865DEF88896B23FA6310BC03226FEFEAB55B9A203E63823143
            5490445C3883D05F23F8FCC228F26F180C06B3CB730059BD57866F20229EDF18
            D42358BC78F60487C5EAB98B5A6408E63903B1F6BD358B9FE302F06D729610BC
            B2AE20B63CF9D780602072579FB9F98B6082E6DF8D044932FF156CA648EC89F7
            5E7E844802299851B3C26667F30BCAF31D043B3091DFC3917E0F5C895C1C4D3C
            03E095C79303A4CA20984111CBFCDDE6D6F6CA70D0C39B571F2A7164AF129589
            14C65E59B0FB631765596C03C8030033E929BA8A0C4D8443F6A2982AF67E037E
            F6AC9379188DF20000000049454E44AE426082}
          TabOrder = 5
          OnClick = cxButton1Click
        end
      end
    end
    object TabSheetMSAccess: TTabSheet
      Caption = 'Microsoft Access'
      ImageIndex = 1
      ExplicitLeft = 1
      ExplicitTop = 25
      ExplicitHeight = 321
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 150
        Top = 70
        Width = 637
        Height = 445
        Margins.Left = 150
        Margins.Top = 70
        Margins.Right = 150
        Margins.Bottom = 70
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 184
        ExplicitTop = 48
        ExplicitWidth = 500
        ExplicitHeight = 150
        object LabelAccessChooseDBStatus: TLabel
          Left = 320
          Top = 33
          Width = 3
          Height = 13
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 635
          Height = 40
          Align = alTop
          TabOrder = 0
          object cxButtonSaveAccessConn: TcxButton
            AlignWithMargins = True
            Left = 440
            Top = 4
            Width = 191
            Height = 32
            Align = alRight
            Caption = 'Choose Access database file'
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
              303B093C7374796C6520747970653D22746578742F6373732220786D6C3A7370
              6163653D227072657365727665223E2E59656C6C6F777B66696C6C3A23464642
              3131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A234431
              314331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23
              3131373744373B7D262331333B262331303B2623393B2E477265656E7B66696C
              6C3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B
              66696C6C3A233732373237323B7D262331333B262331303B2623393B2E576869
              74657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E
              7374307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
              7374317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
              2E7374327B646973706C61793A696E6C696E653B66696C6C3A23303339433233
              3B7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C
              696E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B
              2E7374347B646973706C61793A696E6C696E653B66696C6C3A23373237323732
              3B7D3C2F7374796C653E0D0A093C672069643D2241747461636846696C65223E
              0D0A09093C7061746820636C6173733D22426C61636B2220643D224D32322C31
              3076313363302C322E382D322E322C352D352C35732D352D322E322D352D3556
              3763302D312E372C312E332D332C332D3373332C312E332C332C337631366330
              2C302E362D302E342C312D312C31732D312D302E342D312D31563130682D3276
              313320202623393B2623393B63302C312E372C312E332C332C332C3373332D31
              2E332C332D33563763302D322E382D322E322D352D352D35732D352C322E322D
              352C3576313663302C332E392C332E312C372C372C3773372D332E312C372D37
              5631304832327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
            TabOrder = 0
            OnClick = cxButtonSaveAccessConnClick
            ExplicitTop = 5
          end
          object EditAccessFile: TEdit
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 430
            Height = 32
            Align = alClient
            ReadOnly = True
            TabOrder = 1
            Text = 'Choose file'
            ExplicitWidth = 493
          end
        end
        object cxButton3: TcxButton
          AlignWithMargins = True
          Left = 6
          Top = 138
          Width = 625
          Height = 49
          Margins.Left = 5
          Margins.Right = 5
          Align = alTop
          Action = ActionSaveAccessConn
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000B744558745469746C6500536176653BF9E8F9090000006749444154
            785EEDD7CD0980300C4061D7748BAED1599C229B6493F462403D1489A6FEF002
            8FD24BF920A74E66F668BB0B803A2F36A22EC0CF9BE73CC0DB0E001189C40A58
            C14701000024150700B838FF021C71290000007400407B80E2888CD6B7CBABBE
            66001ABBA7C010E7C5D9FA0000000049454E44AE426082}
          TabOrder = 1
          ExplicitLeft = 4
          ExplicitTop = 88
          ExplicitWidth = 629
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 6
          Top = 91
          Width = 625
          Height = 41
          Margins.Left = 5
          Margins.Right = 5
          Align = alTop
          TabOrder = 2
          ExplicitLeft = 32
          ExplicitTop = 48
          ExplicitWidth = 185
          object cxTextEditAccUsername: TcxTextEdit
            Left = 1
            Top = 1
            Align = alLeft
            TabOrder = 0
            TextHint = 'Username (Optional)'
            Width = 288
          end
          object cxTextEditAccPass: TcxTextEdit
            Left = 297
            Top = 1
            Align = alClient
            TabOrder = 1
            TextHint = 'Password (Optional)'
            ExplicitLeft = 295
            ExplicitTop = 3
            ExplicitWidth = 337
            Width = 327
          end
          object cxSplitter1: TcxSplitter
            Left = 289
            Top = 1
            Width = 8
            Height = 39
            ExplicitLeft = 288
            ExplicitTop = 16
            ExplicitHeight = 100
          end
        end
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 6
          Top = 44
          Width = 625
          Height = 41
          Margins.Left = 5
          Margins.Right = 5
          Align = alTop
          TabOrder = 3
          ExplicitLeft = 32
          ExplicitTop = 48
          ExplicitWidth = 185
          object cxTextEditAccessConnName: TcxTextEdit
            Left = 1
            Top = 1
            Align = alLeft
            TabOrder = 0
            TextHint = 'Connection name'
            Width = 288
          end
          object cxTextEditTableName: TcxTextEdit
            Left = 297
            Top = 1
            Align = alClient
            TabOrder = 1
            TextHint = 'Table name'
            Width = 327
          end
          object cxSplitter2: TcxSplitter
            Left = 289
            Top = 1
            Width = 8
            Height = 39
          end
        end
      end
    end
    object TabSheetRest: TTabSheet
      Caption = 'Restful HTTP'
      ImageIndex = 2
      ExplicitHeight = 321
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 100
        Top = 100
        Width = 737
        Height = 385
        Margins.Left = 100
        Margins.Top = 100
        Margins.Right = 100
        Margins.Bottom = 100
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 192
        ExplicitTop = 72
        ExplicitWidth = 185
        ExplicitHeight = 41
        object cxTextEditRestfulURL: TcxTextEdit
          AlignWithMargins = True
          Left = 21
          Top = 81
          Margins.Left = 20
          Margins.Top = 20
          Margins.Right = 20
          Margins.Bottom = 10
          Align = alTop
          AutoSize = False
          TabOrder = 0
          TextHint = 'http://someaddress.com/api/getdata?format=json'
          ExplicitTop = 22
          Height = 40
          Width = 695
        end
        object cxButton2: TcxButton
          AlignWithMargins = True
          Left = 21
          Top = 134
          Width = 695
          Height = 50
          Margins.Left = 20
          Margins.Right = 20
          Align = alTop
          Action = ActionSaveRestfulURL
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000B744558745469746C6500536176653BF9E8F9090000020349444154
            785E7D52316B145110FEDEE6EE9A03EF2E57284A6C6DAC42C0262185829D0A36
            16820AFE010BADC47F60AB2022585A588875B01041822158D858081204956872
            DC5DD6DD3733CF99D93DD713CCC0F7BEF776E7FB66E6ED0654912982633EFCFC
            9F67A2603B2CAC9DBFB2810CEB4B274EE1E4D271B0303832A24450A94C113112
            2846ECED8F301A7DB59CD76F379E9F6D9901425A5F3DB38C4F9FC7B87BE70690
            60E1E49C80BC886049B87EF33656964F6373EBFD1A8096190466017352B0ABA6
            BF22C4D5C9C5972E5CD632010F1F3F0553C4CECE17088B8F9ED99292B898884C
            EFE2548B270711D942867E7F114717BB9E0308582A83962D2C6EE0EE2925EFA6
            245671899205ED561B9D4EA77EC7CA6D887063904CCCE29735C923BEEF4F91C4
            A771DC7FF008C7865DEF88896B23FA6310BC03226FEFEAB55B9A203E63823143
            5490445C3883D05F23F8FCC228F26F180C06B3CB730059BD57866F20229EDF18
            D42358BC78F60487C5EAB98B5A6408E63903B1F6BD358B9FE302F06D729610BC
            B2AE20B63CF9D780602072579FB9F98B6082E6DF8D044932FF156CA648EC89F7
            5E7E844802299851B3C26667F30BCAF31D043B3091DFC3917E0F5C895C1C4D3C
            03E095C79303A4CA20984111CBFCDDE6D6F6CA70D0C39B571F2A7164AF129589
            14C65E59B0FB631765596C03C8030033E929BA8A0C4D8443F6A2982AF67E037E
            F6AC9379188DF20000000049454E44AE426082}
          TabOrder = 1
          ExplicitTop = 75
        end
        object cxTextEditRestfulConnName: TcxTextEdit
          AlignWithMargins = True
          Left = 21
          Top = 21
          Margins.Left = 20
          Margins.Top = 20
          Margins.Right = 20
          Margins.Bottom = 0
          Align = alTop
          AutoSize = False
          TabOrder = 2
          TextHint = 'Connection name'
          ExplicitLeft = 13
          ExplicitTop = 0
          Height = 40
          Width = 695
        end
      end
    end
  end
  object OpenDialogAccessDB: TOpenDialog
    Left = 516
    Top = 6
  end
  object FDTableMySQL: TFDTable
    IndexFieldNames = 'id'
    Connection = DModule.FDConnectionLocal
    UpdateOptions.UpdateTableName = 'mysql_connections'
    TableName = 'mysql_connections'
    Left = 608
    Top = 5
    object FDTableMySQLid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableMySQLhost_name: TWideMemoField
      FieldName = 'host_name'
      Origin = 'host_name'
      BlobType = ftWideMemo
    end
    object FDTableMySQLusername: TWideMemoField
      FieldName = 'username'
      Origin = 'username'
      BlobType = ftWideMemo
    end
    object FDTableMySQLpassword: TWideMemoField
      FieldName = 'password'
      Origin = 'password'
      BlobType = ftWideMemo
    end
    object FDTableMySQLdatabase: TWideMemoField
      FieldName = 'database'
      Origin = '"database"'
      BlobType = ftWideMemo
    end
  end
  object ActionList1: TActionList
    Left = 380
    Top = 7
    object ActionNewConn: TAction
      Caption = 'New Connection'
      OnExecute = ActionNewConnExecute
    end
    object ActionSaveRestfulURL: TAction
      Caption = 'Save Restful URL'
      OnExecute = ActionSaveRestfulURLExecute
    end
    object ActionSaveMySQL: TAction
      Caption = 'Save connection'
      OnExecute = ActionSaveMySQLExecute
    end
    object ActionSaveAccessConn: TAction
      Caption = 'Save connection'
      OnExecute = ActionSaveAccessConnExecute
    end
  end
  object FDTableConnections: TFDTable
    IndexFieldNames = 'id'
    Connection = DModule.FDConnectionLocal
    UpdateOptions.UpdateTableName = 'connections'
    TableName = 'connections'
    Left = 424
    Top = 288
    object FDTableConnectionsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableConnectionsconn_type_id: TIntegerField
      FieldName = 'conn_type_id'
      Origin = 'conn_type_id'
    end
    object FDTableConnectionsconn_name: TWideMemoField
      FieldName = 'conn_name'
      Origin = 'conn_name'
      BlobType = ftWideMemo
    end
    object FDTableConnectionsconn_id: TIntegerField
      FieldName = 'conn_id'
      Origin = 'conn_id'
    end
  end
  object dsConnections: TDataSource
    DataSet = FDQueryConnections
    Left = 424
    Top = 336
  end
  object FDQueryConnections: TFDQuery
    Connection = DModule.FDConnectionLocal
    SQL.Strings = (
      
        'SELECT'#10#9'c.*,'#10#9't.name AS connection_type '#10'FROM'#10#9'connections c,'#10#9'c' +
        'onn_types t '#10'WHERE'#10#9'c.conn_type_id = t.id '#10'ORDER BY'#10#9'c.id ASC')
    Left = 424
    Top = 232
    object FDQueryConnectionsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQueryConnectionsconn_type_id: TIntegerField
      FieldName = 'conn_type_id'
      Origin = 'conn_type_id'
    end
    object FDQueryConnectionsconn_name: TWideMemoField
      FieldName = 'conn_name'
      Origin = 'conn_name'
      BlobType = ftWideMemo
    end
    object FDQueryConnectionsconnection_type: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'connection_type'
      Origin = 'name'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object FDTableAccess: TFDTable
    IndexFieldNames = 'id'
    Connection = DModule.FDConnectionLocal
    UpdateOptions.UpdateTableName = 'access_connections'
    TableName = 'access_connections'
    Left = 750
    Top = 6
    object FDTableAccessid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableAccessusername: TWideMemoField
      FieldName = 'username'
      Origin = 'username'
      BlobType = ftWideMemo
    end
    object FDTableAccesspassword: TWideMemoField
      FieldName = 'password'
      Origin = 'password'
      BlobType = ftWideMemo
    end
    object FDTableAccessdatabase: TWideMemoField
      FieldName = 'database'
      Origin = '"database"'
      BlobType = ftWideMemo
    end
  end
  object FDTableRestfulConns: TFDTable
    IndexFieldNames = 'id'
    Connection = DModule.FDConnectionLocal
    UpdateOptions.UpdateTableName = 'rest_connections'
    TableName = 'rest_connections'
    Left = 853
    Top = 6
    object FDTableRestfulConnsid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTableRestfulConnsrestful_url: TWideMemoField
      FieldName = 'restful_url'
      Origin = 'restful_url'
      BlobType = ftWideMemo
    end
    object FDTableRestfulConnsroot_key: TWideMemoField
      FieldName = 'root_key'
      Origin = 'root_key'
      BlobType = ftWideMemo
    end
  end
end
