object FormConfiguration: TFormConfiguration
  Left = 0
  Top = 0
  Caption = 'Database connection configuration'
  ClientHeight = 537
  ClientWidth = 855
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
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 855
    Height = 537
    ActivePage = TabSheetMySQL
    Align = alClient
    TabOrder = 0
    object TabSheetMySQL: TTabSheet
      Caption = 'MySQL'
      object Panel1: TPanel
        Left = 280
        Top = 96
        Width = 321
        Height = 297
        TabOrder = 0
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
        object cxTextEdit1: TcxTextEdit
          Left = 42
          Top = 23
          TabOrder = 4
          TextHint = 'Connection name'
          Width = 209
        end
        object cxButton1: TcxButton
          Left = 40
          Top = 231
          Width = 211
          Height = 39
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
      object Panel2: TPanel
        Left = 184
        Top = 104
        Width = 577
        Height = 321
        TabOrder = 0
        object LabelAccessChooseDBStatus: TLabel
          Left = 320
          Top = 33
          Width = 3
          Height = 13
        end
        object ButtonChooseAccessFile: TButton
          Left = 1
          Top = 28
          Width = 289
          Height = 25
          Caption = 'Choose Access database file'
          TabOrder = 0
          OnClick = ButtonChooseAccessFileClick
        end
        object EditAccessFile: TEdit
          Left = 1
          Top = 1
          Width = 575
          Height = 21
          Align = alTop
          ReadOnly = True
          TabOrder = 1
          Text = 'Choose file'
        end
      end
    end
  end
  object OpenDialogAccessDB: TOpenDialog
    Left = 684
    Top = 64
  end
end
