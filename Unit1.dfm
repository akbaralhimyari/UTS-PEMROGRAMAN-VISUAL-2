object Form1: TForm1
  Left = 451
  Top = 308
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 168
    Top = 88
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl2: TLabel
    Left = 168
    Top = 144
    Width = 52
    Height = 13
    Caption = 'DESKRIPSI'
  end
  object lbl3: TLabel
    Left = 144
    Top = 416
    Width = 86
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object edt1: TEdit
    Left = 240
    Top = 88
    Width = 201
    Height = 17
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 240
    Top = 144
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 176
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 272
    Top = 184
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 376
    Top = 184
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 488
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btn4Click
  end
  object edt3: TEdit
    Left = 240
    Top = 416
    Width = 193
    Height = 25
    TabOrder = 6
  end
  object btn5: TButton
    Left = 456
    Top = 416
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 7
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 200
    Top = 224
    Width = 320
    Height = 120
    DataSource = DataModule2.ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
