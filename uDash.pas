unit uDash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.DataSet, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Ribbon, Vcl.RibbonLunaStyleActnCtrls,
  FireDAC.Comp.UI, FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TgDash = class(TForm)
    SASCon: TFDConnection;
    usrQ: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    usrDS: TDataSource;
    usrQID: TFDAutoIncField;
    usrQuTitle: TStringField;
    usrQuFullName: TStringField;
    usrQuEmail: TStringField;
    usrQuPhone: TStringField;
    usrQuPassword: TStringField;
    usrQuAddress1: TStringField;
    usrQuAddress2: TStringField;
    usrQuAddress3: TStringField;
    usrQuCity: TStringField;
    usrQuProvince: TStringField;
    usrQuZip: TStringField;
    usrQuLastLogin: TSQLTimeStampField;
    usrQuLoginCount: TIntegerField;
    usrQuRegisteredOn: TSQLTimeStampField;
    usrQuStatus: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gDash: TgDash;

implementation

{$R *.dfm}

end.
