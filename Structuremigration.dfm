object FormStructureMigration: TFormStructureMigration
  Left = 0
  Top = 0
  Caption = 'Structure migration form'
  ClientHeight = 743
  ClientWidth = 805
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
    Top = 161
    Width = 433
    Height = 582
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
    Width = 805
    Height = 161
    Align = alTop
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 112
      Top = 83
      Width = 121
      Height = 25
      Caption = 'Set'
      TabOrder = 0
      OnClick = cxButton1Click
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
        'MySQL database')
      TabOrder = 2
      Text = 'cxComboBoxFrom'
      Width = 121
    end
  end
  object DBGridFields: TDBGrid
    Left = 433
    Top = 161
    Width = 372
    Height = 582
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
end
