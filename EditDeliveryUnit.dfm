object EditDeliveryForm: TEditDeliveryForm
  Left = 689
  Top = 4
  Width = 632
  Height = 407
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
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
  object Label1: TLabel
    Left = 19
    Top = 28
    Width = 148
    Height = 16
    Caption = #1053#1086#1084#1077#1088' '#1085#1072' '#1076#1086#1089#1090#1072#1074#1082#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 21
    Top = 82
    Width = 142
    Height = 16
    Caption = #1053#1086#1084#1077#1088' '#1085#1072' '#1087#1086#1088#1098#1095#1082#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 30
    Top = 285
    Width = 136
    Height = 16
    Caption = #1044#1072#1090#1072' '#1085#1072' '#1076#1086#1089#1090#1072#1074#1082#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EditDNR: TEdit
    Left = 172
    Top = 28
    Width = 225
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 0
    Text = '-- '#1075#1077#1085#1077#1088#1080#1088#1072' '#1089#1077' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086' --'
  end
  object BitBtn1: TBitBtn
    Left = 30
    Top = 331
    Width = 75
    Height = 25
    Caption = #1047#1072#1087#1080#1096#1080
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 482
    Top = 329
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1082#1072#1079
    ModalResult = 2
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 173
    Top = 80
    Width = 417
    Height = 169
    DataSource = OrderDS
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ORDER_NR'
        Title.Caption = #8470' '#1085#1072' '#1087#1086#1088#1098#1095#1082#1072
        Visible = True
      end
      item
        Color = clLime
        Expanded = False
        FieldName = 'ORDER_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1088#1098#1095#1082#1072
        Visible = True
      end
      item
        Color = clYellow
        Expanded = False
        FieldName = 'DESCRIPTION'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 209
        Visible = True
      end>
  end
  object DateTimePicker1: TDateTimePicker
    Left = 175
    Top = 280
    Width = 186
    Height = 21
    CalAlignment = dtaLeft
    Date = 42948.6683582407
    Time = 42948.6683582407
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 4
  end
  object OrderDS: TDataSource
    DataSet = OrderQuery
    Left = 387
    Top = 120
  end
  object OrderQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM ORDER_HEAD ORDER BY ORDER_NR')
    Left = 403
    Top = 80
  end
  object UpdateDeliveryQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 475
    Top = 32
  end
  object Query: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 499
    Top = 280
  end
  object InsertDeliveryQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 523
    Top = 40
  end
  object IBStoredProc1: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    Left = 451
    Top = 280
  end
end
