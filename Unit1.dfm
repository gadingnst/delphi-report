object Form1: TForm1
  Left = 239
  Top = 178
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 448
    Top = 8
    Width = 137
    Height = 13
    Caption = 'Cari Data berdasarkan Nama'
  end
  object Label2: TLabel
    Left = 32
    Top = 136
    Width = 28
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 32
    Top = 176
    Width = 20
    Height = 13
    Caption = 'NIM'
  end
  object Label4: TLabel
    Left = 32
    Top = 256
    Width = 26
    Height = 13
    Caption = 'Kelas'
  end
  object Label5: TLabel
    Left = 32
    Top = 216
    Width = 37
    Height = 13
    Caption = 'Jurusan'
  end
  object gridBarang: TDBGrid
    Left = 288
    Top = 64
    Width = 609
    Height = 313
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
        FieldName = 'Id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIM'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama'
        Width = 224
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kelas'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Jurusan'
        Visible = True
      end>
  end
  object searchInput: TEdit
    Left = 456
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = searchInputChange
  end
  object insert: TButton
    Left = 56
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Tambah Data'
    TabOrder = 2
    OnClick = insertClick
  end
  object namaInput: TEdit
    Left = 120
    Top = 136
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object nimInput: TEdit
    Left = 120
    Top = 176
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object kelasInput: TEdit
    Left = 120
    Top = 256
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object delete: TButton
    Left = 152
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Hapus Data'
    TabOrder = 6
    OnClick = deleteClick
  end
  object printBtn: TButton
    Left = 56
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 7
    OnClick = printBtnClick
  end
  object previewBtn: TButton
    Left = 152
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Preview'
    TabOrder = 8
    OnClick = previewBtnClick
  end
  object jurusanInput: TComboBox
    Left = 120
    Top = 216
    Width = 145
    Height = 21
    ItemHeight = 13
    Sorted = True
    TabOrder = 9
    Text = 'Pilih Jurusan'
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\Do' +
      'kumen\Kuliah\DelphiProject\CRUD & Report\Database11.mdb;Mode=Sha' +
      're Deny None;Persist Security Info=False;Jet OLEDB:System databa' +
      'se="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";' +
      'Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OL' +
      'EDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions' +
      '=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Da' +
      'tabase=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Co' +
      'py Locale on Compact=False;Jet OLEDB:Compact Without Replica Rep' +
      'air=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 56
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Mahasiswa'
    Left = 88
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    OnDataChange = DataSource1DataChange
    Left = 128
    Top = 56
  end
end
