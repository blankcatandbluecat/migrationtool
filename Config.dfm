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
    ExplicitTop = 128
    ExplicitWidth = 241
    ExplicitHeight = 409
    object TabSheetMySQL: TTabSheet
      Caption = 'MySQL'
      ExplicitWidth = 893
      object Panel1: TPanel
        Left = 280
        Top = 96
        Width = 321
        Height = 297
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 51
          Width = 22
          Height = 13
          Caption = 'Host'
        end
        object Label2: TLabel
          Left = 16
          Top = 91
          Width = 48
          Height = 13
          Caption = 'Username'
        end
        object Label3: TLabel
          Left = 16
          Top = 131
          Width = 46
          Height = 13
          Caption = 'Password'
        end
        object Label4: TLabel
          Left = 16
          Top = 170
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
          Left = 104
          Top = 88
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'root'
        end
        object EditPassword: TEdit
          Left = 104
          Top = 128
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'vertrigo'
        end
        object Button1: TButton
          Left = 104
          Top = 208
          Width = 121
          Height = 25
          Caption = 'Save'
          TabOrder = 2
          OnClick = Button1Click
        end
        object EditDatabase: TEdit
          Left = 104
          Top = 168
          Width = 121
          Height = 21
          TabOrder = 3
          Text = 'geoturs'
        end
        object EditHost: TEdit
          Left = 104
          Top = 48
          Width = 121
          Height = 21
          TabOrder = 4
          Text = '127.0.0.1'
        end
      end
    end
    object TabSheetMSAccess: TTabSheet
      Caption = 'Microsoft Access'
      ImageIndex = 1
      ExplicitWidth = 893
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
