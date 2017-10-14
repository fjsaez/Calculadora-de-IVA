unit Calc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, XPMan;

type
  TFCalc = class(TForm)
    Label1: TLabel;
    MEMonto: TMaskEdit;
    CB1: TCheckBox;
    Label2: TLabel;
    MEIVA: TMaskEdit;
    Label3: TLabel;
    LSubTotal: TLabel;
    LIVA: TLabel;
    Label6: TLabel;
    LTotal: TLabel;
    Label8: TLabel;
    BCalcular: TButton;
    Button1: TButton;
    Bevel1: TBevel;
    BBAcerca: TBitBtn;
    XPManifest1: TXPManifest;
    BLimpiar: TButton;
    function EliminaEspacio(Cadena: string): string;
    procedure Button1Click(Sender: TObject);
    procedure BCalcularClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MEMontoExit(Sender: TObject);
    procedure MEIVAExit(Sender: TObject);
    procedure BBAcercaClick(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure BLimpiarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    const
      Version='v1.5';  //versión del programa
      Fecha='Sep. 2.010';
  end;

var
  FCalc: TFCalc;

implementation

uses Acerca;

{$R *.dfm}

function TFCalc.EliminaEspacio(Cadena: string): string;
begin
  while Pos(' ',Cadena)>0 do Delete(Cadena,Pos(' ',Cadena),1);
  Result:=Cadena;
end;

{Botón Salir}
procedure TFCalc.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFCalc.BLimpiarClick(Sender: TObject);
begin
  LIVA.Caption:='0,00';
  LTotal.Caption:='0,00';
  LSubTotal.Caption:='0,00';
  MEMonto.Clear;
  MEIVA.Clear;
  CB1.Checked:=false;
  MEMonto.SetFocus;
end;

procedure TFCalc.CB1Click(Sender: TObject);
begin
  BCalcularClick(Self);
end;

{Botón Calcular}
procedure TFCalc.BCalcularClick(Sender: TObject);
var
  Importe,IVA,SubTotal: Single;  
  STotal,SIVA,Total: string[15];
begin
  Importe:=StrToFloat(EliminaEspacio(MEMonto.Text));
  IVA:=StrToFloat(EliminaEspacio(MEIVA.Text));
  if CB1.Checked then
  begin   //Cálculo con el IVA incluido:
    STotal:=FloatToStrF(Importe/((IVA/100)+1),ffNumber,10,2);
    SIVA:=FloatToStrF(Importe-(Importe/((IVA/100)+1)),ffNumber,10,2);
    Total:=FloatToStrF(Importe,ffNumber,10,2);
  end
  else
  begin   //Cálculo sin el IVA incluido:
    STotal:=FloatToStrF(Importe,ffNumber,10,2);
    SIVA:=FloatToStrF(Importe*(IVA/100),ffNumber,10,2);
    Total:=FloatToStrF(Importe+(Importe*IVA/100),ffNumber,10,2);
  end;
  LSubTotal.Caption:=STotal;
  LIVA.Caption:=SIVA;
  LTotal.Caption:=Total;
end;

procedure TFCalc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    SelectNext(ActiveControl,true,true);  
   	Key:=#0
  end
end;

procedure TFCalc.FormShow(Sender: TObject);
begin
  Caption:=Caption+' '+Version;
end;

procedure TFCalc.MEMontoExit(Sender: TObject);
begin
  MEMonto.Text:=EliminaEspacio(MEMonto.Text);
end;

procedure TFCalc.MEIVAExit(Sender: TObject);
begin
  MEIVA.Text:=EliminaEspacio(MEIVA.Text)
end;

procedure TFCalc.BBAcercaClick(Sender: TObject);
begin
  FAcerca.ShowModal;
end;

end.
