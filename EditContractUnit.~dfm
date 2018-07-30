object EditContractForm: TEditContractForm
  Left = 321
  Top = 136
  Width = 762
  Height = 516
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1076#1086#1075#1086#1074#1086#1088
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
    Left = 112
    Top = 117
    Width = 55
    Height = 24
    Caption = #1057#1088#1086#1082':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 47
    Top = 154
    Width = 123
    Height = 24
    Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 402
    Width = 105
    Height = 24
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 113
    Top = 77
    Width = 55
    Height = 24
    Caption = #1044#1072#1090#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 97
    Top = 37
    Width = 71
    Height = 24
    Caption = #1053#1086#1084#1077#1088':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EditTerm: TEdit
    Left = 174
    Top = 117
    Width = 242
    Height = 21
    TabOrder = 0
  end
  object EditDescription: TEdit
    Left = 166
    Top = 402
    Width = 563
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 439
    Width = 75
    Height = 25
    Caption = #1047#1072#1087#1080#1096#1080
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 652
    Top = 439
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1082#1072#1079
    ModalResult = 2
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 176
    Top = 146
    Width = 545
    Height = 240
    DataSource = ContragentQueryDS
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BULSTAT'
        Title.Caption = #1041#1091#1083#1089#1090#1072#1090
        Visible = True
      end
      item
        Color = clLime
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1048#1084#1077
        Width = 279
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADDRESS'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 166
        Visible = True
      end>
  end
  object EditNR: TEdit
    Left = 174
    Top = 37
    Width = 195
    Height = 21
    Color = clBtnFace
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 5
    Text = '-- '#1075#1077#1085#1077#1088#1080#1088#1072' '#1089#1077' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086' --'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 176
    Top = 80
    Width = 186
    Height = 21
    CalAlignment = dtaLeft
    Date = 42948.5100109491
    Time = 42948.5100109491
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 6
  end
  object UpdateContractQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '')
    Left = 640
    Top = 16
  end
  object InsertContractQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 640
    Top = 47
  end
  object ContragentQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CONTRAGENT ORDER BY NAME')
    Left = 592
    Top = 122
    object ContragentQueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'CONTRAGENT.ID'
      Required = True
    end
    object ContragentQueryBULSTAT: TIntegerField
      FieldName = 'BULSTAT'
      Origin = 'CONTRAGENT.BULSTAT'
    end
    object ContragentQueryNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'CONTRAGENT.NAME'
      Size = 50
    end
    object ContragentQueryMOL: TIBStringField
      FieldName = 'MOL'
      Origin = 'CONTRAGENT.MOL'
      Size = 50
    end
    object ContragentQueryADDRESS: TIBStringField
      FieldName = 'ADDRESS'
      Origin = 'CONTRAGENT.ADDRESS'
      Size = 80
    end
    object ContragentQueryCONTACT: TIBStringField
      FieldName = 'CONTACT'
      Origin = 'CONTRAGENT.CONTACT'
      Size = 30
    end
    object ContragentQueryTELEPHONE: TIntegerField
      FieldName = 'TELEPHONE'
      Origin = 'CONTRAGENT.TELEPHONE'
    end
    object ContragentQueryEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = 'CONTRAGENT.EMAIL'
      Size = 30
    end
  end
  object ContragentQueryDS: TDataSource
    DataSet = ContragentQuery
    Left = 592
    Top = 154
  end
  object Query: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    BufferChunks = 1000
    CachedUpdates = False
    Left = 648
    Top = 88
  end
end
