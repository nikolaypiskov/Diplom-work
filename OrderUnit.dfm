object OrderForm: TOrderForm
  Left = 368
  Top = 174
  Width = 646
  Height = 458
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1055#1086#1088#1098#1095#1082#1080
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
  object Splitter2: TSplitter
    Left = 0
    Top = 242
    Width = 630
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    AutoSnap = False
    Color = clBtnFace
    MinSize = 100
    ParentColor = False
  end
  object DBGrid10: TDBGrid
    Left = 0
    Top = 246
    Width = 630
    Height = 130
    Align = alBottom
    DataSource = OrderBodyDS
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
        FieldName = 'ARTICLE'
        Title.Caption = #1040#1088#1090#1080#1082#1091#1083
        Visible = True
      end
      item
        Color = clActiveCaption
        Expanded = False
        FieldName = 'QUANTITY'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 376
    Width = 630
    Height = 43
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 533
      Top = 11
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1048#1079#1093#1086#1076
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object DBGrid9: TDBGrid
    Left = 0
    Top = 41
    Width = 630
    Height = 201
    Align = alClient
    DataSource = OrderHeadDS
    PopupMenu = PopupMenu1
    TabOrder = 2
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
        Expanded = False
        FieldName = 'ORDER_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1088#1098#1095#1082#1072
        Visible = True
      end
      item
        Color = 11075583
        Expanded = False
        FieldName = 'CONTRAGENT'
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Width = 200
        Visible = True
      end
      item
        Color = clYellow
        Expanded = False
        FieldName = 'DESCRIPTION'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        Width = 200
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 630
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 6
      Top = 13
      Width = 89
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1088#1098#1095#1082#1072':'
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
      Left = 533
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object OrderHeadDS: TDataSource
    DataSet = OHQuery
    Left = 544
    Top = 104
  end
  object OrderBodyDS: TDataSource
    DataSet = OBQuery
    Left = 544
    Top = 320
  end
  object OHQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT '
      
        'OH.ID, OH.DESCRIPTION, OH.ORDER_DATE, OH.ORDER_NR, CR.NAME CONTR' +
        'AGENT'
      'FROM ORDER_HEAD OH'
      'JOIN CONTRAGENT CR ON OH.CONTRAGENT_ID = CR.ID')
    Left = 504
    Top = 104
    object OHQueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ORDER_HEAD.ID'
      Required = True
    end
    object OHQueryDESCRIPTION: TIBStringField
      FieldName = 'DESCRIPTION'
      Origin = 'ORDER_HEAD.DESCRIPTION'
      Size = 1024
    end
    object OHQueryORDER_DATE: TDateField
      FieldName = 'ORDER_DATE'
      Origin = 'ORDER_HEAD.ORDER_DATE'
    end
    object OHQueryORDER_NR: TIntegerField
      FieldName = 'ORDER_NR'
      Origin = 'ORDER_HEAD.ORDER_NR'
    end
    object OHQueryCONTRAGENT: TIBStringField
      FieldName = 'CONTRAGENT'
      Origin = 'CONTRAGENT.NAME'
      Size = 50
    end
  end
  object OBQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = OrderHeadDS
    SQL.Strings = (
      'SELECT'
      'OB.ID, OB.QUANTITY, A.MODEL ARTICLE'
      'FROM ORDER_BODY OB'
      'JOIN ARTICLE A ON OB.ARTICLE_ID = A.ID'
      'WHERE OB.ORDERH_ID = :ID')
    Left = 504
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object OBQueryQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'ORDER_BODY.QUANTITY'
    end
    object OBQueryARTICLE: TIBStringField
      FieldName = 'ARTICLE'
      Origin = 'ARTICLE.MODEL'
    end
    object OBQueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ORDER_BODY.ID'
      Required = True
    end
  end
  object OrderSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'ORDER_HEAD_IDSP'
    Left = 589
    Top = 112
  end
  object IBTable2: TIBTable
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
    Left = 541
    Top = 288
    object IBTable2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable2MODEL: TIBStringField
      FieldName = 'MODEL'
    end
    object IBTable2MANUFACT_ID: TIntegerField
      FieldName = 'MANUFACT_ID'
    end
    object IBTable2WARRANTY: TIntegerField
      FieldName = 'WARRANTY'
    end
    object IBTable2TYPE_ID: TIntegerField
      FieldName = 'TYPE_ID'
    end
  end
  object OBSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'ORDER_BODY_IDSP'
    Left = 533
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 528
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
    Left = 400
    Top = 256
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
