unit Calc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Vcl.NumberBox, PngSpeedButton,
  Vcl.Clipbrd;

type
  TCalculo = record
    SubTotal,IVA,Total: string;
  end;

  TFCalc = class(TForm)
    Label3: TLabel;
    LSubTotal: TLabel;
    LIVA: TLabel;
    Label6: TLabel;
    LTotal: TLabel;
    Label8: TLabel;
    BCalcular: TButton;
    SBMemSubTotal: TPngSpeedButton;
    SBMemIVA: TPngSpeedButton;
    SBMemTotal: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    Panel1: TPanel;
    NBMonto: TNumberBox;
    NBIVA: TNumberBox;
    CB1: TCheckBox;
    Label2: TLabel;
    Label1: TLabel;
    function EliminaEspacio(Cadena: string): string;
    procedure Button1Click(Sender: TObject);
    procedure BCalcularClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BBAcercaClick(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure BLimpiarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBMemSubTotalClick(Sender: TObject);
    procedure SBMemIVAClick(Sender: TObject);
    procedure SBMemTotalClick(Sender: TObject);
  private
    { Private declarations }
    procedure ActivaCopiado;
  public
    const
      Version='v2.0';  //versión del programa
      Fecha='Sep. 2010 - Oct. 2024';
  end;

var
  FCalc: TFCalc;
  Calculo: TCalculo;
  sEnt: string;

implementation

uses Acerca;

{$R *.dfm}

function TFCalc.EliminaEspacio(Cadena: string): string;
begin
  while Pos(' ',Cadena)>0 do Delete(Cadena,Pos(' ',Cadena),1);
  Result:=Cadena;
end;

procedure TFCalc.ActivaCopiado;
var
  Activo: boolean;
begin
  Activo:=(Calculo.SubTotal<>'') and (Calculo.IVA<>'') and (Calculo.Total<>'');
  SBMemSubTotal.Enabled:=Activo;
  SBMemIVA.Enabled:=Activo;
  SBMemTotal.Enabled:=Activo;
end;

{Botón Salir}
procedure TFCalc.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFCalc.BLimpiarClick(Sender: TObject);
begin
  //el registro:
  Calculo.SubTotal:='';
  Calculo.IVA:='';
  Calculo.Total:='';
  ActivaCopiado;
  //los componentes:
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
begin
  Importe:=NBMonto.Value;
  IVA:=NBIVA.Value;
  if CB1.Checked then
  begin   //Cálculo con el IVA incluido:
    Calculo.SubTotal:=FormatFloat('#,##0.00',Importe/((IVA/100)+1));
    Calculo.IVA:=FormatFloat('#,##0.00',Importe-(Importe/((IVA/100)+1)));
    Calculo.Total:=FormatFloat('#,##0.00',Importe);
  end
  else
  begin   //Cálculo sin el IVA incluido:
    Calculo.SubTotal:=FormatFloat('#,##0.00',Importe);
    Calculo.IVA:=FormatFloat('#,##0.00',Importe*(IVA/100));
    Calculo.Total:=FormatFloat('#,##0.00',Importe+(Importe*IVA/100));
  end;
  LSubTotal.Caption:=Calculo.SubTotal;
  LIVA.Caption:=Calculo.IVA;
  LTotal.Caption:=Calculo.Total;
  ActivaCopiado;
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
  ActivaCopiado;
  Caption:=Caption+' '+Version;
  NBMonto.SetFocus;
end;

procedure TFCalc.SBMemIVAClick(Sender: TObject);
begin
  ClipBoard.AsText:=Calculo.IVA;
end;

procedure TFCalc.SBMemSubTotalClick(Sender: TObject);
begin
  ClipBoard.AsText:=Calculo.SubTotal;
end;

procedure TFCalc.SBMemTotalClick(Sender: TObject);
begin
  ClipBoard.AsText:=Calculo.Total;
end;

procedure TFCalc.BBAcercaClick(Sender: TObject);
begin
  FAcerca.ShowModal;
  NBMonto.SetFocus;
end;

end.
