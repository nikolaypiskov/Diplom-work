object Form1: TForm1
  Left = 414
  Top = 67
  Width = 654
  Height = 408
  Caption = #1048#1079#1074#1098#1088#1096#1077#1085#1080' '#1076#1077#1081#1085#1086#1089#1090#1080' '#1085#1072' '#1089#1083#1091#1078#1080#1090#1077#1083#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 315
    Top = 0
    Width = 10
    Height = 329
    Cursor = crHSplit
    Align = alNone
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 320
    Height = 333
    Align = alLeft
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
        FieldName = 'FNAME'
        Title.Caption = #1048#1084#1077
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LNAME'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 80
        Visible = True
      end
      item
        Color = clSkyBlue
        Expanded = False
        FieldName = 'POSITIONS'
        Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090
        Width = 100
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 320
    Top = 0
    Width = 318
    Height = 333
    Align = alClient
    DataSource = DataSource3
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = clLime
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1048#1084#1077
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTR_NR'
        Title.Caption = #8470' '#1085#1072' '#1076#1086#1075#1086#1074#1086#1088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTR_DATE'
        Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1076#1086#1075#1086#1074#1086#1088
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 638
    Height = 36
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      638
      36)
    object BitBtn1: TBitBtn
      Left = 524
      Top = 5
      Width = 76
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1048#1079#1093#1086#1076
      ModalResult = 2
      TabOrder = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 144
    Top = 80
  end
  object IBTable1: TIBTable
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
    Left = 232
    Top = 64
    object IBTable1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBTable1FNAME: TIBStringField
      FieldName = 'FNAME'
      Size = 50
    end
    object IBTable1LNAME: TIBStringField
      FieldName = 'LNAME'
      Size = 50
    end
    object IBTable1SALARY: TIBBCDField
      FieldName = 'SALARY'
      Precision = 18
      Size = 2
    end
    object IBTable1POSITION_ID: TIntegerField
      FieldName = 'POSITION_ID'
      Required = True
    end
    object IBTable1POSITIONS: TStringField
      FieldKind = fkLookup
      FieldName = 'POSITIONS'
      LookupDataSet = IBTable3
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'POSITION_ID'
      Size = 30
      Lookup = True
    end
  end
  object DataSource3: TDataSource
    DataSet = IBQuery1
    Left = 519
    Top = 240
  end
  object IBQuery1: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DataSource1
    SQL.Strings = (
      
        'select st.id,c.id, c.contr_nr,c.contr_date,s.article_id,s.servic' +
        'e_id,cast(0 as integer) flag,cast(a.model as varchar(252)) name'
      'from schedule s'
      'join contract c on s.contract_id = c.id'
      'join staff st on s.staff_id = st.id'
      'left outer join article a on s.article_id = a.id'
      'WHERE s.service_id IS NULL and st.id = :id'
      ''
      ''
      'union all'
      ''
      
        'select st.id, c.id, c.contr_nr,c.contr_date,s.article_id,s.servi' +
        'ce_id,cast(1 as integer) flag,cast(sr.name as varchar(252)) name'
      'from schedule s'
      'join contract c on s.contract_id = c.id'
      'join staff st on s.staff_id = st.id'
      'left outer join service sr on s.service_id = sr.id'
      'WHERE s.article_id IS NULL and st.id = :id')
    Left = 543
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object IBQuery1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IBQuery1ID1: TIntegerField
      FieldName = 'ID1'
      Required = True
    end
    object IBQuery1CONTR_NR: TIntegerField
      FieldName = 'CONTR_NR'
    end
    object IBQuery1CONTR_DATE: TDateField
      FieldName = 'CONTR_DATE'
    end
    object IBQuery1ARTICLE_ID: TIntegerField
      FieldName = 'ARTICLE_ID'
    end
    object IBQuery1SERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
    end
    object IBQuery1FLAG: TIntegerField
      FieldName = 'FLAG'
      Required = True
    end
    object IBQuery1NAME: TIBStringField
      FieldName = 'NAME'
      Size = 252
    end
  end
  object IBTable3: TIBTable
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
    Left = 224
    Top = 136
  end
end
