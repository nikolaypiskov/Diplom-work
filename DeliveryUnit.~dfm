object DeliveryForm: TDeliveryForm
  Left = 255
  Top = 104
  Width = 837
  Height = 523
  Caption = #1044#1086#1089#1090#1072#1074#1082#1080
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
    Top = 270
    Width = 821
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    AutoSnap = False
  end
  object DBGrid11: TDBGrid
    Left = 0
    Top = 41
    Width = 821
    Height = 229
    Align = alClient
    DataSource = DeliveryHeadDS
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
        FieldName = 'DELIV_NR'
        Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072' '#8470
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DELIV_DATE'
        Title.Caption = #1086#1090' '#1076#1072#1090#1072
        Width = 72
        Visible = True
      end
      item
        Color = 14811135
        Expanded = False
        FieldName = 'ORDER_NR'
        Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072' '#1087#1086' '#1087#1086#1088#1098#1095#1082#1072' '#8470
        Width = 138
        Visible = True
      end
      item
        Color = 14811135
        Expanded = False
        FieldName = 'ORDER_DATE'
        Title.Caption = #1086#1090' '#1076#1072#1090#1072
        Width = 78
        Visible = True
      end
      item
        Color = clYellow
        Expanded = False
        FieldName = 'DESCRIPTION'
        Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' '#1087#1086#1088#1098#1095#1082#1072#1090#1072
        Width = 400
        Visible = True
      end>
  end
  object DBGrid12: TDBGrid
    Left = 0
    Top = 275
    Width = 821
    Height = 160
    Align = alBottom
    DataSource = DeliveryBodyDS
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
        FieldName = 'ARTICLE'
        Title.Caption = #1040#1088#1090#1080#1082#1091#1083
        Width = 381
        Visible = True
      end
      item
        Color = clActiveCaption
        Expanded = False
        FieldName = 'PRICE'
        Title.Alignment = taRightJustify
        Title.Caption = #1062#1077#1085#1072
        Width = 122
        Visible = True
      end
      item
        Color = clActiveCaption
        Expanded = False
        FieldName = 'QUANTITY'
        Title.Alignment = taRightJustify
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taRightJustify
        Title.Caption = #1054#1073#1097#1086
        Width = 157
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 435
    Width = 821
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Bevel1: TBevel
      Left = 0
      Top = 41
      Width = 821
      Height = 8
      Align = alBottom
      Shape = bsBottomLine
    end
    object Label1: TLabel
      Left = 557
      Top = 16
      Width = 33
      Height = 13
      Caption = #1058#1086#1090#1072#1083':'
    end
    object TotalEdit: TStaticText
      Left = 601
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
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 712
      Top = 12
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1048#1079#1093#1086#1076
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 821
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 13
      Width = 89
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1087#1086#1088#1098#1095#1082#1072':'
    end
    object Label3: TLabel
      Left = 232
      Top = 13
      Width = 94
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1076#1086#1089#1090#1072#1074#1082#1072':'
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
    object BitBtn3: TBitBtn
      Left = 694
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object DateTimePicker2: TDateTimePicker
      Left = 341
      Top = 9
      Width = 106
      Height = 21
      CalAlignment = dtaLeft
      Date = 42968.8789602199
      Time = 42968.8789602199
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
    end
  end
  object DeliveryHeadDS: TDataSource
    DataSet = DHQuery
    Left = 416
    Top = 72
  end
  object DeliveryBodyDS: TDataSource
    DataSet = DBQuery
    Left = 296
    Top = 288
  end
  object DHQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    AfterScroll = DHQueryAfterScroll
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      ' DH.ID,'
      ' DH.DELIV_DATE,'
      ' DH.DELIV_NR,'
      ' OH.ORDER_NR,'
      ' OH.ORDER_DATE,'
      ' OH.DESCRIPTION'
      'FROM DELIVERY_HEAD DH'
      'JOIN ORDER_HEAD OH ON DH.ORDERH_ID =OH.ID'
      'order by DH. DELIV_NR')
    Left = 344
    Top = 80
    object DHQueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'DELIVERY_HEAD.ID'
      Required = True
    end
    object DHQueryDELIV_DATE: TDateField
      FieldName = 'DELIV_DATE'
      Origin = 'DELIVERY_HEAD.DELIV_DATE'
    end
    object DHQueryDELIV_NR: TIntegerField
      FieldName = 'DELIV_NR'
      Origin = 'DELIVERY_HEAD.DELIV_NR'
    end
    object DHQueryORDER_NR: TIntegerField
      FieldName = 'ORDER_NR'
      Origin = 'ORDER_HEAD.ORDER_NR'
    end
    object DHQueryORDER_DATE: TDateField
      FieldName = 'ORDER_DATE'
      Origin = 'ORDER_HEAD.ORDER_DATE'
    end
    object DHQueryDESCRIPTION: TIBStringField
      FieldName = 'DESCRIPTION'
      Origin = 'ORDER_HEAD.DESCRIPTION'
      Size = 1024
    end
  end
  object DBQuery: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    OnCalcFields = DBQueryCalcFields
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DeliveryHeadDS
    SQL.Strings = (
      'SELECT'
      'DB.ID,'
      'A.MODEL AS ARTICLE,'
      'DB.PRICE, '
      'DB.QUANTITY, '
      'DB.PRICE*DB.QUANTITY AS TOTAL'
      'FROM DELIVERY_BODY DB JOIN ARTICLE A ON  DB.ARTICLE_ID = A.ID'
      'WHERE DB.DELIVERYH_ID = :ID')
    Left = 248
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object DBQueryARTICLE: TIBStringField
      FieldName = 'ARTICLE'
      Origin = 'ARTICLE.MODEL'
    end
    object DBQueryPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'DELIVERY_BODY.PRICE'
      DisplayFormat = '0.000'
    end
    object DBQueryQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Origin = 'DELIVERY_BODY.QUANTITY'
    end
    object DBQueryTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '0.000'
    end
    object DBQueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'DELIVERY_BODY.ID'
      Required = True
    end
  end
  object DBSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'DELIVERY_BODY_IDSP'
    Left = 312
    Top = 352
  end
  object DeliverySP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'DELIVERY_HEAD_IDSP'
    Left = 432
    Top = 24
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
    Left = 256
    Top = 352
  end
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 72
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
    Left = 432
    Top = 296
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
