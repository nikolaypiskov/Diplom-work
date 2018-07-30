object ContractForm: TContractForm
  Left = 370
  Top = 204
  Width = 928
  Height = 480
  Caption = #1044#1086#1075#1086#1074#1086#1088#1080
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
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 808
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1048#1079#1093#1086#1076
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object DBGrid8: TDBGrid
    Left = 0
    Top = 41
    Width = 912
    Height = 359
    Align = alClient
    Color = clWhite
    DataSource = ContractDS
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CONTR_NR'
        Title.Caption = #8470' '#1085#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'CONTR_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1089#1082#1083#1102#1095#1074#1072#1085#1077
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'TERM'
        Title.Caption = #1057#1088#1086#1082
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRAGENT'
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Visible = True
      end
      item
        Color = clYellow
        Expanded = False
        FieldName = 'DESCRIPTION'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 312
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 102
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1089#1082#1083#1102#1095#1074#1072#1085#1077':'
    end
    object Label2: TLabel
      Left = 232
      Top = 13
      Width = 61
      Height = 13
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090':'
    end
    object Label3: TLabel
      Left = 456
      Top = 13
      Width = 28
      Height = 13
      Caption = #1057#1088#1086#1082':'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 115
      Top = 8
      Width = 106
      Height = 21
      CalAlignment = dtaLeft
      Date = 42968.8789602199
      Time = 42968.8789602199
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 298
      Top = 8
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox1Change
    end
    object Edit1: TEdit
      Left = 495
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 784
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080
      TabOrder = 3
      OnClick = BitBtn3Click
    end
  end
  object ContractDS: TDataSource
    DataSet = IBQuery1
    Left = 592
    Top = 88
  end
  object ContractSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'CONTRACT_IDSP'
    Left = 768
    Top = 168
  end
  object IBQuery1: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT '
      
        'C.ID, C.CONTR_DATE, C.CONTR_NR, C.TERM,  C.DESCRIPTION,  CR.NAME' +
        ' AS CONTRAGENT'
      'FROM CONTRACT C'
      'JOIN CONTRAGENT CR ON C.CONTRAGENT_ID = CR.ID')
    Left = 632
    Top = 160
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'CONTRACT.ID'
      Required = True
    end
    object IBQuery1CONTR_DATE: TDateField
      FieldName = 'CONTR_DATE'
      Origin = 'CONTRACT.CONTR_DATE'
    end
    object IBQuery1CONTR_NR: TIntegerField
      FieldName = 'CONTR_NR'
      Origin = 'CONTRACT.CONTR_NR'
    end
    object IBQuery1TERM: TIntegerField
      FieldName = 'TERM'
      Origin = 'CONTRACT.TERM'
    end
    object IBQuery1DESCRIPTION: TIBStringField
      FieldName = 'DESCRIPTION'
      Origin = 'CONTRACT.DESCRIPTION'
      Size = 512
    end
    object IBQuery1CONTRAGENT: TIBStringField
      FieldName = 'CONTRAGENT'
      Origin = 'CONTRAGENT.NAME'
      Size = 50
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 120
    object N1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077
      OnClick = N2Click
    end
  end
end
