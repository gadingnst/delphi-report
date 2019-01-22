unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Unit2;

type
  TForm1 = class(TForm)
    gridBarang: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    searchInput: TEdit;
    Label1: TLabel;
    insert: TButton;
    namaInput: TEdit;
    nimInput: TEdit;
    kelasInput: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    delete: TButton;
    printBtn: TButton;
    previewBtn: TButton;
    jurusanInput: TComboBox;
    procedure searchInputChange(Sender: TObject);
    procedure insertClick(Sender: TObject);
    procedure deleteClick(Sender: TObject);
    procedure printBtnClick(Sender: TObject);
    procedure previewBtnClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure refreshReport();
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.searchInputChange(Sender: TObject);
begin
    with ADOTable1 do
    begin
      if searchInput.Text = '' then ADOTable1.Filtered := false else
      begin
        ADOTable1.Filter:='Nama'+' LIKE '+QuotedStr(searchInput.Text+'*');
        ADOTable1.Filtered:=true;
      end;
    end;
end;

procedure TForm1.insertClick(Sender: TObject);
begin
  if (namaInput.Text = '') OR
    (nimInput.Text = '') OR
    (kelasInput.Text = '') OR
    (jurusanInput.Text = '')
    then
      ShowMessage('Semua Data harus di isi !')
    else
    begin
      ADOTable1.Append;
      ADOTable1['Nama'] := namaInput.Text;
      ADOTable1['NIM'] := nimInput.Text;
      ADOTable1['Kelas'] := kelasInput.Text;
      ADOTable1['Jurusan'] := jurusanInput.Text;
      ADOTable1.Refresh;
      namaInput.Text := '';
      nimInput.Text := '';
      kelasInput.Text := '';
      jurusanInput.Text := '';
    end;
end;

procedure TForm1.deleteClick(Sender: TObject);
begin
  ADOTable1.Delete;
end;

procedure TForm1.printBtnClick(Sender: TObject);
begin
  refreshReport();
  QuickReport2.Prepare;
  QuickReport2.Print;
end;

procedure TForm1.previewBtnClick(Sender: TObject);
begin
  refreshReport();
  QuickReport2.Prepare;
  QuickReport2.Preview;
end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  // namaInput.Text := ADOTable1['Nama'];
  // nimInput.Text := ADOTable1['NIM'];
  // kelasInput.Text := ADOTable1['Kelas'];
  // jurusanInput.Text := ADOTable1['Jurusan'];
end;

procedure TForm1.refreshReport();
begin
  QuickReport2.ADOTable1.Close;
  QuickReport2.ADOConnection1.Close;
  QuickReport2.ADOConnection1.Open;
  QuickReport2.ADOTable1.Open;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  jurusanInput.Items.Append('Teknik Komputer');
  jurusanInput.Items.Append('Teknik Mesin');
  jurusanInput.Items.Append('Akuntansi');
  jurusanInput.Items.Append('Manajemen Informatika');
  jurusanInput.Items.Append('Bahasa Inggris');
end;

end.
