unit Calc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Vcl.NumberBox;

type
  TFCalc = class(TForm)
    Label1: TLabel;
    CB1: TCheckBox;
    Label2: TLabel;
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
    BLimpiar: TButton;
    NBMonto: TNumberBox;
    NBIVA: TNumberBox;
    function EliminaEspacio(Cadena: string): string;
    procedure Button1Click(Sender: TObject);
    procedure BCalcularClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BBAcercaClick(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure BLimpiarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NBMontoKeyPress(Sender: TObject; var Key: Char);
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
  NBMonto.Value:=0.0;
  NBIVA.Value:=0.0;
  CB1.Checked:=false;
  NBMonto.SetFocus;
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
  Importe:=NBMonto.Value;
  IVA:=NBIVA.Value;
  if CB1.Checked then
  begin   //Cálculo con el IVA incluido:
    STotal:=FormatFloat('#,##0.00',Importe/((IVA/100)+1));
    SIVA:=FormatFloat('#,##0.00',Importe-(Importe/((IVA/100)+1)));
    Total:=FormatFloat('#,##0.00',Importe);
  end
  else
  begin   //Cálculo sin el IVA incluido:
    //STotal:=FloatToStrF(Importe,ffNumber,10,2);
    //SIVA:=FloatToStrF(Importe*(IVA/100),ffNumber,10,2);
    //Total:=FloatToStrF(Importe+(Importe*IVA/100),ffNumber,10,2);
    STotal:=FormatFloat('#,##0.00',Importe);
    SIVA:=FormatFloat('#,##0.00',Importe*(IVA/100));
    Total:=FormatFloat('#,##0.00',Importe+(Importe*IVA/100));
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
  NBMonto.SetFocus;
end;

procedure TFCalc.NBMontoKeyPress(Sender: TObject; var Key: Char);
begin
  if TNumberBox(Sender).is then

end;

procedure TFCalc.BBAcercaClick(Sender: TObject);
begin
  FAcerca.ShowModal;
end;

end.
