unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    edt3: TEdit;
    lbl3: TLabel;
    btn5: TButton;
    dbgrd1: TDBGrid;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn2Click(Sender: TObject);
begin
DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('update satuan set nama = :nama, deskripsi = :deskripsi where id = :id');
DataModule2.zqry1.Params.ParamByName('nama').AsString := edt1.Text;
DataModule2.zqry1.Params.ParamByName('deskripsi').AsString := edt2.Text;
DataModule2.zqry1.Params.ParamByName('id').AsString := a;
DataModule2.zqry1.ExecSQL;

DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('select * from satuan');
DataModule2.zqry1.Open;
ShowMessage('Data Berhasil Diubah!');

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('insert into satuan (nama, deskripsi) values (:nama, :deskripsi)');
DataModule2.zqry1.Params.ParamByName('nama').AsString := edt1.Text;
DataModule2.zqry1.Params.ParamByName('deskripsi').AsString := edt2.Text;
DataModule2.zqry1.ExecSQL;

DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('select * from satuan');
DataModule2.zqry1.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('delete from satuan where id= "'+a+'"');
DataModule2.zqry1.ExecSQL;

DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('select * from satuan');
DataModule2.zqry1.Open;
ShowMessage('Data Berhasil Dihapus!');

end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edt1.Text :='';
edt2.Text :='';
edt3.Text :='';
end;

procedure TForm1.btn5Click(Sender: TObject);
var
  searchTerm: string;
begin
  searchTerm := edt3.Text;

  DataModule2.zqry1.SQL.Clear;
  DataModule2.zqry1.SQL.Add('select * from satuan where nama like :searchTerm or deskripsi like :searchTerm');
  DataModule2.zqry1.Params.ParamByName('searchTerm').AsString := '%' + searchTerm + '%';
  DataModule2.zqry1.Open;

end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text := DataModule2.zqry1.Fields[1].AsString;
edt2.Text := DataModule2.zqry1.Fields[2].AsString;
a:= DataModule2.zqry1.Fields[0].AsString;

end;

end.
