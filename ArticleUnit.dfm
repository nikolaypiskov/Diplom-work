object ArticleForm: TArticleForm
  Left = 712
  Top = 21
  Width = 247
  Height = 560
  Caption = 'ArticleForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 231
    Height = 480
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MODEL'
        Title.Caption = #1052#1086#1076#1077#1083
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'WARRANTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = #1043#1072#1088#1072#1085#1094#1080#1103
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 480
    Width = 231
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 145
      Top = 9
      Width = 81
      Height = 25
      Cancel = True
      Caption = #1054#1090#1082#1072#1079
      ModalResult = 2
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      Left = 12
      Top = 7
      Width = 75
      Height = 25
      Caption = #1048#1079#1073#1077#1088#1080
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object IBTable1: TIBTable
    Database = DM.DB
    Transaction = DM.Trans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MODEL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MANUFACT_ID'
        DataType = ftInteger
      end
      item
        Name = 'WARRANTY'
        DataType = ftInteger
      end
      item
        Name = 'TYPE_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY4'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN5'
        Fields = 'MANUFACT_ID'
      end
      item
        Name = 'RDB$FOREIGN6'
        Fields = 'TYPE_ID'
      end
      item
        Name = 'ARTICLEMODELNDX'
        Fields = 'MODEL'
      end>
    StoreDefs = True
    TableName = 'ARTICLE'
    Left = 156
    Top = 24
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1MODEL: TIBStringField
      FieldName = 'MODEL'
    end
    object IBTable1MANUFACT_ID: TIntegerField
      FieldName = 'MANUFACT_ID'
    end
    object IBTable1WARRANTY: TIntegerField
      FieldName = 'WARRANTY'
    end
    object IBTable1TYPE_ID: TIntegerField
      FieldName = 'TYPE_ID'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 172
    Top = 80
  end
end
