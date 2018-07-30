object ServiceForm: TServiceForm
  Left = 405
  Top = 147
  Width = 321
  Height = 242
  Caption = 'ServiceForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 305
    Height = 162
    Align = alClient
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
        FieldName = 'NAME'
        Title.Caption = #1048#1084#1077
        Width = 100
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'PRICE'
        Title.Caption = #1062#1077#1085#1072
        Visible = True
      end
      item
        Color = clGradientInactiveCaption
        Expanded = False
        FieldName = 'DURATION'
        Title.Caption = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 162
    Width = 305
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 9
      Top = 10
      Width = 75
      Height = 25
      Caption = #1048#1079#1073#1077#1088#1080
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 213
      Top = 10
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1082#1072#1079
      ModalResult = 2
      TabOrder = 1
    end
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
    Left = 224
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = IBTable1
    Left = 240
    Top = 80
  end
end
