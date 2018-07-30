object Form2: TForm2
  Left = 285
  Top = 125
  Width = 272
  Height = 564
  Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090' '#1085#1072' '#1072#1088#1090#1080#1082#1091#1083#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 479
    Width = 256
    Height = 46
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      256
      46)
    object BitBtn1: TBitBtn
      Left = 156
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1054#1090#1082#1072#1079
      ModalResult = 2
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 256
    Height = 479
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ARTICLE_NAME'
        Title.Caption = #1040#1088#1090#1080#1082#1091#1083
        Visible = True
      end
      item
        Color = clGradientActiveCaption
        Expanded = False
        FieldName = 'TOTAL'
        Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 208
    Top = 88
  end
  object IBStoredProc1: TIBStoredProc
    Database = DM.DB
    Transaction = DM.Trans
    StoredProcName = 'GET_STOCK'
    Left = 208
    Top = 176
  end
  object IBQuery1: TIBQuery
    Database = DM.DB
    Transaction = DM.Trans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      ''
      'select * from GET_STOCK'
      '')
    Left = 216
    Top = 128
  end
end
