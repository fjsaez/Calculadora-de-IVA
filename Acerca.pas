unit Acerca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFAcerca = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    LVersion: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LFecha: TLabel;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAcerca: TFAcerca;

implementation

uses Calc;

{$R *.dfm}

procedure TFAcerca.BitBtn1Click(Sender: TObject);
begin
  FCalc.NBMonto.SetFocus;
  Close
end;

procedure TFAcerca.FormShow(Sender: TObject);
begin
  LVersion.Caption:=FCalc.Version;
  LFecha.Caption:=FCalc.Fecha;
end;

end.
