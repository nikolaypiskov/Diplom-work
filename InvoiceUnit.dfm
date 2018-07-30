object InvoiceForm: TInvoiceForm
  Left = 367
  Top = 109
  Width = 928
  Height = 495
  Caption = #1060#1072#1082#1090#1091#1088#1080
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
  object Splitter1: TSplitter
    Left = 0
    Top = 248
    Width = 912
    Height = 6
    Cursor = crVSplit
    Align = alBottom
    AutoSnap = False
  end
  object DBGrid16: TDBGrid
    Left = 0
    Top = 41
    Width = 912
    Height = 207
    Align = alClient
    DataSource = InvoiceHeadDS
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'INVOICE_NR'
        Title.Caption = #8470' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INVOICE_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
        Visible = True
      end
      item
        Color = 12058623
        Expanded = False
        FieldName = 'STAFF'
        Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083
        Visible = True
      end
      item
        Color = 12058623
        Expanded = False
        FieldName = 'CONTRAGENT'
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Visible = True
      end>
  end
  object DBGrid17: TDBGrid
    Left = 0
    Top = 254
    Width = 912
    Height = 161
    Align = alBottom
    DataSource = InvoiceBodyDS
    PopupMenu = PopupMenu2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CALC_TYPE'
        Title.Caption = #1042#1080#1076
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1048#1084#1077
        Width = 100
        Visible = True
      end
      item
        Color = clActiveCaption
        Expanded = False
        FieldName = 'QUANTITY'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Visible = True
      end
      item
        Color = clActiveCaption
        Expanded = False
        FieldName = 'PRICE'
        Title.Caption = #1062#1077#1085#1072
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = #1054#1073#1097#1086
        Width = 200
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 415
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 645
      Top = 16
      Width = 40
      Height = 13
      Caption = #1058#1086#1090#1072#1083':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 800
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1048#1079#1093#1086#1076
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object TotalEdit: TStaticText
      Left = 689
      Top = 13
      Width = 69
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 13
      Width = 95
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077':'
    end
    object Label3: TLabel
      Left = 451
      Top = 12
      Width = 61
      Height = 13
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090':'
    end
    object Label4: TLabel
      Left = 234
      Top = 12
      Width = 52
      Height = 13
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083':'
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
      Left = 517
      Top = 7
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox1Change
    end
    object BitBtn3: TBitBtn
      Left = 784
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object ComboBox2: TComboBox
      Left = 294
      Top = 7
      Width = 148
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnChange = ComboBox2Change
    end
  end
  object InvoiceHeadDS: TDataSource
    DataSet = IHQuery
    Left = 456
    Top = 72
  end
  object InvoiceBodyDS: TDataSource
    DataSet = IBQuery
    Left = 568
    Top = 328
  end
  object IHQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    AfterScroll = IHQueryAfterScroll
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      'IH.ID,'
      
        'IH.INVOICE_DATE, IH.INVOICE_NR, CR.NAME CONTRAGENT, S.LNAME STAF' +
        'F'
      'FROM INVOICE_HEAD IH'
      'JOIN CONTRAGENT CR ON IH.CONTRAGENT_ID = CR.ID'
      'JOIN STAFF S ON IH.STAFF_ID = S.ID'
      'ORDER BY INVOICE_NR')
    Left = 408
    Top = 88
    object IHQueryINVOICE_DATE: TDateField
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_HEAD.INVOICE_DATE'
    end
    object IHQueryINVOICE_NR: TIntegerField
      FieldName = 'INVOICE_NR'
      Origin = 'INVOICE_HEAD.INVOICE_NR'
    end
    object IHQuerySTAFF: TIBStringField
      FieldName = 'STAFF'
      Origin = 'STAFF.LNAME'
      Size = 50
    end
    object IHQueryCONTRAGENT: TIBStringField
      FieldName = 'CONTRAGENT'
      Origin = 'CONTRAGENT.NAME'
      Size = 50
    end
    object IHQueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'INVOICE_HEAD.ID'
      Required = True
    end
  end
  object IBQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    OnCalcFields = IBQueryCalcFields
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = InvoiceHeadDS
    SQL.Strings = (
      ''
      'SELECT'
      '  IB.ID,'
      '  IB.PRICE,'
      '  IB.QUANTITY,'
      '  IB.PRICE*IB.QUANTITY AS TOTAL,'
      '  CAST(A.MODEL AS VARCHAR(252)) NAME,'
      '  CAST(1 AS INTEGER) FLAG'
      'FROM INVOICE_BODY IB JOIN ARTICLE A ON IB.ARTICLE_ID = A.ID'
      'WHERE SERVICE_ID IS NULL AND INVOICEH_ID = :ID'
      ''
      'UNION ALL'
      ''
      'SELECT'
      '  IB.ID,'
      '  IB.PRICE,'
      '  IB.QUANTITY,'
      '  IB.PRICE*IB.QUANTITY AS TOTAL,'
      '  CAST(S.NAME AS VARCHAR(252)) NAME,'
      '  CAST(0 AS INTEGER) FLAG'
      'FROM INVOICE_BODY IB JOIN SERVICE S ON IB.SERVICE_ID = S.ID'
      'WHERE ARTICLE_ID IS NULL AND INVOICEH_ID = :ID'
      '')
    Left = 520
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end>
    object IBQueryPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '0.00'
    end
    object IBQueryQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      DisplayFormat = '0.##'
    end
    object IBQueryNAME: TIBStringField
      FieldName = 'NAME'
      Size = 252
    end
    object IBQueryFLAG: TIntegerField
      FieldName = 'FLAG'
      Required = True
    end
    object IBQueryTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Precision = 5
    end
    object IBQueryCALC_TYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_TYPE'
      Size = 30
      Calculated = True
    end
    object IBQueryID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object InvoiceSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'INVOICE_HEAD_IDSP'
    Left = 720
    Top = 136
  end
  object IBSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'INVOICE_BODY_IDSP'
    Left = 712
    Top = 320
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
    Left = 800
    Top = 304
  end
  object Service: TIBTable
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
        Name = 'NAME'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'PRICE'
        DataType = ftFloat
      end
      item
        Name = 'DURATION'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY7'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'SERVICENAMENDX'
        Fields = 'NAME'
      end
      item
        Name = 'SERVICEPRICENDX'
        Fields = 'PRICE'
      end>
    StoreDefs = True
    TableName = 'SERVICE'
    Left = 816
    Top = 344
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 160
    object N1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077
      OnClick = N2Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 416
    Top = 328
    object N3: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077
      OnClick = N4Click
    end
  end
end
