object ProtocolForm: TProtocolForm
  Left = 378
  Top = 129
  Width = 927
  Height = 480
  Caption = #1055#1088#1086#1090#1086#1082#1086#1083#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 234
    Width = 911
    Height = 5
    Cursor = crVSplit
    Align = alBottom
  end
  object DBGrid13: TDBGrid
    Left = 0
    Top = 41
    Width = 911
    Height = 193
    Align = alClient
    DataSource = ProtocolHeadDS
    PopupMenu = PopupMenu2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PROT_NR'
        Title.Caption = #8470' '#1085#1072' '#1087#1088#1086#1090#1086#1082#1086#1083
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROT_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1087#1088#1086#1090#1086#1082#1086#1083
        Visible = True
      end
      item
        Color = 10944511
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
        Width = 394
        Visible = True
      end>
  end
  object DBGrid14: TDBGrid
    Left = 0
    Top = 239
    Width = 911
    Height = 161
    Align = alBottom
    DataSource = ProtocolBodyDS
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
        FieldName = 'TYPE'
        Title.Caption = #1042#1080#1076
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1048#1084#1077
        Width = 200
        Visible = True
      end
      item
        Color = clActiveCaption
        Expanded = False
        FieldName = 'SCHEDULE_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1087#1086' '#1075#1088#1072#1092#1080#1082
        Width = 100
        Visible = True
      end
      item
        Color = clActiveCaption
        Expanded = False
        FieldName = 'DESCRIPTION'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 300
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 911
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 824
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1048#1079#1093#1086#1076
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 6
      Top = 13
      Width = 94
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1087#1088#1086#1090#1086#1082#1086#1083':'
    end
    object Label2: TLabel
      Left = 230
      Top = 13
      Width = 61
      Height = 13
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090':'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 113
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
      Left = 296
      Top = 8
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
  end
  object ProtocolHeadDS: TDataSource
    DataSet = PHQuery
    Left = 640
    Top = 104
  end
  object ProtocolBodyDS: TDataSource
    DataSet = PBQuery
    Left = 680
    Top = 296
  end
  object PHQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      
        'PH.ID, PH.DESCRIPTION, PH.PROT_DATE, PH.PROT_NR,CR.NAME CONTRAGE' +
        'NT'
      'FROM PROTOCOL_HEAD PH'
      'JOIN CONTRAGENT CR ON PH.CONTRAGENT_ID = CR.ID'
      'ORDER BY PH.PROT_NR'
      '')
    Left = 592
    Top = 112
  end
  object PBQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    OnCalcFields = PBQueryCalcFields
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = ProtocolHeadDS
    SQL.Strings = (
      'SELECT'
      'PB.ID,'
      
        'CAST(A.MODEL AS VARCHAR(252)) NAME,CAST(1 AS INTEGER) FLAG, PB.D' +
        'ESCRIPTION, SC.SCHEDULE_DATE'
      'FROM PROTOCOL_BODY PB'
      'JOIN ARTICLE A ON PB.ARTICLE_ID = A.ID'
      'JOIN SCHEDULE SC ON PB.SCHEDULE_ID = SC.ID'
      'WHERE PB.SERVICE_ID IS NULL AND PROTOCOLH_ID = :ID'
      ''
      'UNION ALL'
      ''
      'SELECT'
      'PB.ID,'
      
        'CAST(S.NAME AS VARCHAR(252)) NAME,CAST(0 AS INTEGER) FLAG, PB.DE' +
        'SCRIPTION, SC.SCHEDULE_DATE'
      'FROM PROTOCOL_BODY PB'
      'JOIN SERVICE S ON PB.SERVICE_ID = S.ID'
      'JOIN SCHEDULE SC ON PB.SCHEDULE_ID = SC.ID'
      'WHERE PB.ARTICLE_ID IS NULL AND PROTOCOLH_ID = :ID')
    Left = 640
    Top = 304
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
    object PBQueryNAME: TIBStringField
      FieldName = 'NAME'
      Size = 252
    end
    object PBQueryFLAG: TIntegerField
      FieldName = 'FLAG'
      Required = True
    end
    object PBQueryDESCRIPTION: TIBStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object PBQuerySCHEDULE_DATE: TDateField
      FieldName = 'SCHEDULE_DATE'
    end
    object PBQueryTYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'TYPE'
      Size = 30
      Calculated = True
    end
    object PBQueryID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object ProtocolSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'PROTOCOL_HEAD_IDSP'
    Left = 720
    Top = 176
  end
  object PBSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'PROTOCOL_BODY_IDSP'
    Left = 816
    Top = 304
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
    Top = 264
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
    Left = 848
    Top = 264
  end
  object IBTable1: TIBTable
    Database = DM.DB
    Transaction = DM.Trans
    BeforePost = IBTable1BeforePost
    OnCalcFields = IBTable1CalcFields
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
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
        Name = 'PROTOCOLH_ID'
        DataType = ftInteger
      end
      item
        Name = 'SCHEDULE_ID'
        DataType = ftInteger
      end
      item
        Name = 'ARTICLE_ID'
        DataType = ftInteger
      end
      item
        Name = 'SERVICE_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY30'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN31'
        Fields = 'PROTOCOLH_ID'
      end
      item
        Name = 'RDB$FOREIGN32'
        Fields = 'SCHEDULE_ID'
      end
      item
        Name = 'RDB$FOREIGN33'
        Fields = 'ARTICLE_ID'
      end
      item
        Name = 'RDB$FOREIGN34'
        Fields = 'SERVICE_ID'
      end>
    IndexFieldNames = 'PROTOCOLH_ID'
    MasterFields = 'ID'
    MasterSource = ProtocolHeadDS
    StoreDefs = True
    TableName = 'PROTOCOL_BODY'
    Left = 776
    Top = 336
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1DESCRIPTION: TIBStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object IBTable1FLAG_AS: TIBStringField
      FieldName = 'FLAG_AS'
      FixedChar = True
      Size = 1
    end
    object IBTable1PROTOCOLH_ID: TIntegerField
      FieldName = 'PROTOCOLH_ID'
    end
    object IBTable1SCHEDULE_ID: TIntegerField
      FieldName = 'SCHEDULE_ID'
    end
    object IBTable1ARTICLE_ID: TIntegerField
      FieldName = 'ARTICLE_ID'
    end
    object IBTable1SERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object IBTable1SCHEDULE_DATE: TDateField
      FieldKind = fkLookup
      FieldName = 'SCHEDULE_DATE'
      LookupDataSet = Schedule
      LookupKeyFields = 'ID'
      LookupResultField = 'SCHEDULE_DATE'
      KeyFields = 'SCHEDULE_ID'
      Lookup = True
    end
    object IBTable1TYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'TYPE'
      Size = 30
      Calculated = True
    end
    object IBTable1NAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'NAME'
      Size = 30
      Calculated = True
    end
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
    Left = 856
    Top = 352
  end
  object PopupMenu1: TPopupMenu
    Alignment = paCenter
    Left = 400
    Top = 328
    object N4: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077
      OnClick = N5Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 720
    Top = 64
    object N2: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077
      OnClick = N3Click
    end
  end
end
