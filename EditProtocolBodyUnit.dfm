object EditProtocolBodyForm: TEditProtocolBodyForm
  Left = 456
  Top = 122
  Width = 579
  Height = 441
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1087#1088#1086#1090#1086#1082#1086#1083
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label: TLabel
    Left = 42
    Top = 114
    Width = 78
    Height = 16
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 45
    Width = 118
    Height = 16
    Caption = #1052#1086#1083#1103' '#1080#1079#1073#1077#1088#1077#1090#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 3
    Top = 167
    Width = 121
    Height = 16
    Caption = #1044#1072#1090#1072' '#1087#1086' '#1075#1088#1072#1092#1080#1082':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 128
    Top = 108
    Width = 425
    Height = 21
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 472
    Top = 361
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1082#1072#1079
    ModalResult = 2
    TabOrder = 1
  end
  object BitBtn: TBitBtn
    Left = 25
    Top = 361
    Width = 75
    Height = 25
    Caption = #1047#1072#1087#1080#1096#1080
    TabOrder = 2
    OnClick = BitBtnClick
  end
  object DBGrid3: TDBGrid
    Left = 128
    Top = 160
    Width = 417
    Height = 177
    DataSource = DataSource3
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = clLime
        Expanded = False
        FieldName = 'SCHEDULE_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1087#1086' '#1075#1088#1072#1092#1080#1082
        Visible = True
      end
      item
        Color = clYellow
        Expanded = False
        FieldName = 'DESCRIPTION'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 250
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 130
    Top = 32
    Width = 197
    Height = 39
    Columns = 2
    Items.Strings = (
      #1040#1088#1090#1080#1082#1091#1083
      #1059#1089#1083#1091#1075#1072)
    TabOrder = 4
    OnClick = RadioGroup1Click
  end
  object ArticleEdit: TEdit
    Left = 328
    Top = 40
    Width = 217
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
  object InsertQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 497
    Top = 47
  end
  object UpdateQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 457
    Top = 55
  end
  object Schedule: TIBTable
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
        Name = 'SCHEDULE_DATE'
        DataType = ftDate
      end
      item
        Name = 'DAYTIME'
        DataType = ftTime
      end
      item
        Name = 'DESCRIPTION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FLAG_AS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'STAFF_ID'
        DataType = ftInteger
      end
      item
        Name = 'ARTICLE_ID'
        DataType = ftInteger
      end
      item
        Name = 'SERVICE_ID'
        DataType = ftInteger
      end
      item
        Name = 'CONTRACT_ID'
        DataType = ftInteger
      end
      item
        Name = 'PROTOCOL_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY25'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN26'
        Fields = 'PROTOCOL_ID'
      end
      item
        Name = 'RDB$FOREIGN27'
        Fields = 'STAFF_ID'
      end
      item
        Name = 'RDB$FOREIGN28'
        Fields = 'SERVICE_ID'
      end
      item
        Name = 'RDB$FOREIGN29'
        Fields = 'ARTICLE_ID'
      end
      item
        Name = 'RDB$FOREIGN30'
        Fields = 'CONTRACT_ID'
      end
      item
        Name = 'SCHEDULEDATENDX'
        Fields = 'SCHEDULE_DATE'
      end>
    StoreDefs = True
    TableName = 'SCHEDULE'
    Left = 521
    Top = 103
  end
  object DataSource3: TDataSource
    DataSet = Schedule
    Left = 529
    Top = 143
  end
end
