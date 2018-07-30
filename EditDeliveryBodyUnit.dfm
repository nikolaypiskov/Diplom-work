object EditDeliveryBodyForm: TEditDeliveryBodyForm
  Left = 357
  Top = 146
  Width = 379
  Height = 383
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 37
    Width = 76
    Height = 20
    Caption = #1040#1088#1090#1080#1082#1091#1083':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 13
    Top = 224
    Width = 107
    Height = 20
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 62
    Top = 263
    Width = 49
    Height = 20
    Caption = #1062#1077#1085#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 96
    Top = 32
    Width = 241
    Height = 161
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
        Color = clLime
        Expanded = False
        FieldName = 'WARRANTY'
        Title.Caption = #1043#1072#1088#1072#1085#1094#1080#1103
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 131
    Top = 220
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 130
    Top = 260
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 273
    Top = 306
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1082#1072#1079
    ModalResult = 2
    TabOrder = 3
  end
  object BitBtn: TBitBtn
    Left = 24
    Top = 306
    Width = 75
    Height = 25
    Caption = #1047#1072#1087#1080#1096#1080
    TabOrder = 4
    OnClick = BitBtnClick
  end
  object Article: TIBTable
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
    Left = 272
    Top = 48
  end
  object InsertQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 264
    Top = 128
  end
  object UpdateQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 304
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = Article
    Left = 320
    Top = 48
  end
end
