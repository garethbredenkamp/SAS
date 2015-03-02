program SAS;

uses
  Vcl.Forms,
  uLogin in 'uLogin.pas' {gLogin},
  uDash in 'uDash.pas' {gDash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TgLogin, gLogin);
  Application.CreateForm(TgDash, gDash);
  Application.Run;
end.
