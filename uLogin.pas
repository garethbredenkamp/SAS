unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TgLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gLogin: TgLogin;

implementation

{$R *.dfm}

uses
  uDash;

procedure TgLogin.Button1Click(Sender: TObject);
begin
  gDash.SASCon.Connected:=False;
  gDash.SASCon.Connected:=True;

  gDash.usrQ.SQL.Text:='SELECT * FROM `users` WHERE `uEmail`='+Edit1.Text+' && `uPassword`='+Edit2.Text;
  gDash.usrQ.Active:=True;

  if gDash.usrQ.RecordCount = 1 then begin
    Hide;
    gDash.Show;
  end else begin
    ShowMessage('Email password combination is incorrect');
  end;
end;

procedure TgLogin.Edit1Change(Sender: TObject);
begin
  if not (Edit1.Text='') or (Edit2.Text='') then begin
    Button1.Enabled:=True
  end else begin
    Button1.Enabled:=False;
  end;
end;

end.
