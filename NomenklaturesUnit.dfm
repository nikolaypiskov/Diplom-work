object NomenklaturesForm: TNomenklaturesForm
  Left = 306
  Top = 89
  Width = 831
  Height = 410
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NPageControl: TPageControl
    Left = 0
    Top = 0
    Width = 815
    Height = 330
    ActivePage = TabSheet5
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabIndex = 0
    TabOrder = 0
    object TabSheet5: TTabSheet
      Caption = 'Service'
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 41
        Width = 807
        Height = 258
        Align = alClient
        DataSource = ServiceDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = #1048#1084#1077
            Width = 444
            Visible = True
          end
          item
            Color = clHighlight
            Expanded = False
            FieldName = 'PRICE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = #1062#1077#1085#1072
            Width = 139
            Visible = True
          end
          item
            Color = clHighlight
            Expanded = False
            FieldName = 'DURATION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
            Width = 177
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 41
        Align = alTop
        Caption = #1059#1089#1083#1091#1075#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Article'
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 41
        Width = 807
        Height = 258
        Align = alClient
        DataSource = ArticleDS
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
            Expanded = False
            FieldName = 'WARRANTY'
            Title.Caption = #1043#1072#1088#1072#1085#1094#1080#1103
            Width = 159
            Visible = True
          end
          item
            Color = clInactiveCaption
            Expanded = False
            FieldName = 'TYPE'
            Title.Caption = #1058#1080#1087
            Visible = True
          end
          item
            Color = clMoneyGreen
            Expanded = False
            FieldName = 'MANUFACTURER'
            Title.Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083
            Width = 304
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 41
        Align = alTop
        Caption = #1040#1088#1090#1080#1082#1091#1083#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ArticleType'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 41
        Width = 807
        Height = 258
        Align = alClient
        DataSource = TypeDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = #1048#1084#1077
            Width = 790
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 41
        Align = alTop
        Caption = #1042#1080#1076#1086#1074#1077' '#1072#1088#1090#1080#1082#1091#1083#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Manufacturer'
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 41
        Width = 807
        Height = 258
        Align = alClient
        DataSource = ManufacturerDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = #1048#1084#1077
            Width = 790
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 41
        Align = alTop
        Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Contragent'
      ImageIndex = 6
      object DBGrid7: TDBGrid
        Left = 0
        Top = 41
        Width = 807
        Height = 258
        Align = alClient
        DataSource = ContragentDS
        TabOrder = 0
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
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = #1048#1084#1077
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOL'
            Title.Caption = #1052#1054#1051
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADDRESS'
            Title.Caption = #1040#1076#1088#1077#1089
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTACT'
            Title.Caption = #1051#1080#1094#1077' '#1079#1072' '#1082#1086#1085#1090#1072#1082#1090
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEPHONE'
            Title.Caption = #1058#1077#1083#1077#1092#1086#1085
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Caption = #1045'-'#1084#1077#1081#1083
            Width = 120
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 41
        Align = alTop
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Staff'
      ImageIndex = 5
      object DBGrid6: TDBGrid
        Left = 0
        Top = 41
        Width = 807
        Height = 258
        Align = alClient
        DataSource = StaffDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FNAME'
            Title.Caption = #1048#1084#1077
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LNAME'
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALARY'
            Title.Caption = #1047#1072#1087#1083#1072#1090#1072
            Width = 141
            Visible = True
          end
          item
            Color = clInactiveCaption
            Expanded = False
            FieldName = 'POSITION'
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090
            Width = 255
            Visible = True
          end>
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 41
        Align = alTop
        Caption = #1055#1077#1088#1089#1086#1085#1072#1083
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet1: TTabSheet
      Tag = 6
      Caption = 'Positions'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 807
        Height = 258
        Align = alClient
        DataSource = PositionsDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = #1048#1084#1077
            Width = 788
            Visible = True
          end>
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 41
        Align = alTop
        Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 330
    Width = 815
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1048#1079#1093#1086#1076
      ModalResult = 2
      TabOrder = 0
    end
  end
  object ServiceTbl: TIBTable
    Database = DM.DB
    Transaction = DM.Trans
    BeforePost = ServiceTblBeforePost
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
    Left = 544
    Top = 88
  end
  object ContragentTbl: TIBTable
    Database = DM.DB
    Transaction = DM.Trans
    BeforePost = ContragentTblBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BULSTAT'
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MOL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ADDRESS'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CONTACT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TELEPHONE'
        DataType = ftInteger
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY10'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'CONTRAGENTEMAILNDX'
        Fields = 'EMAIL'
      end
      item
        Name = 'CONTRAGENTNAMENDX'
        Fields = 'NAME'
      end
      item
        Name = 'CONTRAGENTTELEPHONENDX'
        Fields = 'TELEPHONE'
      end>
    StoreDefs = True
    TableName = 'CONTRAGENT'
    Left = 584
    Top = 128
  end
  object TypeTbl: TIBTable
    Database = DM.DB
    Transaction = DM.Trans
    BeforePost = TypeTblBeforePost
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
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'ARTICLETYPENAMENDX'
        Fields = 'NAME'
      end>
    StoreDefs = True
    TableName = 'ARTICLE_TYPE'
    Left = 616
    Top = 88
  end
  object ManufacturerTbl: TIBTable
    Database = DM.DB
    Transaction = DM.Trans
    BeforePost = ManufacturerTblBeforePost
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
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'MANUFACTURERNAMENDX'
        Fields = 'NAME'
      end>
    StoreDefs = True
    TableName = 'MANUFACTURER'
    Left = 544
    Top = 128
  end
  object PositionsTbl: TIBTable
    Database = DM.DB
    Transaction = DM.Trans
    BeforePost = PositionsTblBeforePost
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
        Size = 40
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'POSITIONSNAMENDX'
        Fields = 'NAME'
      end>
    StoreDefs = True
    TableName = 'POSITIONS'
    Left = 544
    Top = 168
  end
  object StaffTbl: TIBTable
    Database = DM.DB
    Transaction = DM.Trans
    BeforePost = StaffTblBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FNAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LNAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SALARY'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'POSITION_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY8'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN9'
        Fields = 'POSITION_ID'
      end
      item
        Name = 'STAFFFNAMENDX'
        Fields = 'FNAME'
      end
      item
        Name = 'STAFFLNAMENDX'
        Fields = 'LNAME'
      end>
    StoreDefs = True
    TableName = 'STAFF'
    Left = 616
    Top = 128
    object StaffTblID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StaffTblFNAME: TIBStringField
      FieldName = 'FNAME'
      Size = 50
    end
    object StaffTblLNAME: TIBStringField
      FieldName = 'LNAME'
      Size = 50
    end
    object StaffTblSALARY: TIBBCDField
      FieldName = 'SALARY'
      Precision = 18
      Size = 2
    end
    object StaffTblPOSITION_ID: TIntegerField
      FieldName = 'POSITION_ID'
      Required = True
    end
    object StaffTblPOSITION: TStringField
      FieldKind = fkLookup
      FieldName = 'POSITION'
      LookupDataSet = PositionsTbl
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'POSITION_ID'
      Size = 30
      Lookup = True
    end
  end
  object ServiceDS: TDataSource
    DataSet = ServiceTbl
    Left = 544
    Top = 216
  end
  object TypeDS: TDataSource
    DataSet = TypeTbl
    Left = 616
    Top = 216
  end
  object ManufacturerDS: TDataSource
    DataSet = ManufacturerTbl
    Left = 544
    Top = 256
  end
  object ContragentDS: TDataSource
    DataSet = ContragentTbl
    Left = 584
    Top = 256
  end
  object StaffDS: TDataSource
    DataSet = StaffTbl
    Left = 616
    Top = 256
  end
  object PositionsDS: TDataSource
    DataSet = PositionsTbl
    Left = 544
    Top = 296
  end
  object ArticleDS: TDataSource
    DataSet = ArticleTbl
    Left = 584
    Top = 216
  end
  object ArticleTbl: TIBTable
    Database = DM.DB
    Transaction = DM.Trans
    BeforePost = ArticleTblBeforePost
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
    Left = 584
    Top = 88
    object ArticleTblID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ArticleTblMODEL: TIBStringField
      FieldName = 'MODEL'
    end
    object ArticleTblMANUFACT_ID: TIntegerField
      FieldName = 'MANUFACT_ID'
    end
    object ArticleTblWARRANTY: TIntegerField
      FieldName = 'WARRANTY'
    end
    object ArticleTblTYPE_ID: TIntegerField
      FieldName = 'TYPE_ID'
    end
    object ArticleTblTYPE: TStringField
      FieldKind = fkLookup
      FieldName = 'TYPE'
      LookupDataSet = TypeTbl
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'TYPE_ID'
      Size = 30
      Lookup = True
    end
    object ArticleTblMANUFACTURER: TStringField
      FieldKind = fkLookup
      FieldName = 'MANUFACTURER'
      LookupDataSet = ManufacturerTbl
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'MANUFACT_ID'
      Size = 30
      Lookup = True
    end
  end
  object ContragentSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'CONTRAGENT_IDSP'
    Left = 408
    Top = 296
  end
  object ArticleSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'ARTICLE_IDSP'
    Left = 408
    Top = 256
  end
  object TypeSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'TYPE_IDSP'
    Left = 440
    Top = 256
  end
  object StaffSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'STAFF_IDSP'
    Left = 448
    Top = 288
  end
  object ManufacturerSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'MANUFACTURER_IDSP'
    Left = 472
    Top = 256
  end
  object PositionsSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'POSITIONS_IDSP'
    Left = 480
    Top = 288
  end
  object ServiceSP: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'SERVICE_IDSP'
    Left = 368
    Top = 256
  end
end
