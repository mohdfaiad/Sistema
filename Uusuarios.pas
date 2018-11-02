unit Uusuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFusuarios = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBGrid1: TDBGrid;
    CBmostrar: TCheckBox;
    FDQusuario: TFDQuery;
    FDQusuarioCODIGO: TIntegerField;
    FDQusuarioNOME: TStringField;
    FDQusuarioSENHA: TStringField;
    FDQusuarioNOMECOMPLETO: TStringField;
    FDQusuarioACESSO: TSmallintField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSusuarios: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    FDQcodigonovo: TFDQuery;
    FDQcodigonovoGEN_ID: TLargeintField;
    FDQcodigoatual: TFDQuery;
    FDQcodigoatualGEN_ID: TLargeintField;
    FDQusuarioENTRADA: TTimeField;
    FDQusuarioSAIDA_ALMOCO: TTimeField;
    FDQusuarioENTRADA_ALMOCO: TTimeField;
    FDQusuarioSAIDA: TTimeField;
    FDQusuarioENTRADA_SABADO: TTimeField;
    FDQusuarioSAIDA_SABADO: TTimeField;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    procedure CBmostrarClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DSusuariosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fusuarios: TFusuarios;

implementation

{$R *.dfm}

uses
  uconnection;

procedure TFusuarios.CBmostrarClick(Sender: TObject);
begin
  if CBmostrar.Checked = true then
    begin
     DBEdit3.passwordchar  := #0
    end
  else
    begin
      DBEdit3.passwordchar  := '*' ;
    end;
end;

procedure TFusuarios.DBGrid1TitleClick(Column: TColumn);
var
    campo:string;
begin
       campo:=column.fieldname; // CAMPO RECEBE O NOME DA COLUNA CLICADA,
       application.processmessages; // para considerar algo que aconte�a no dbgrid durante a entrada nesta procedure
       FDQusuario.sql.clear; // LIMPA A QUERY
       FDQusuario.sql.add('select * from usuarios order by '+campo); // ESCREVE O SELECT COM O ORDER BY
       if not FDQusuario.Prepared then
         FDQusuario.Prepare;
       FDQusuario.Open; // ABRE A QUERY COM A ORDEM ESCOLHIDA.
End;
 procedure TFusuarios.DSusuariosDataChange(Sender: TObject; Field: TField);
begin

end;

//    column.Font.color:=clblue; // COLOCAR A COLUNA NA COR DESEJADA


procedure TFusuarios.SpeedButton1Click(Sender: TObject);
begin
  DBEdit2.Enabled := true;
  DBEdit3.Enabled := true;
  DBEdit4.Enabled := true;
  DBEdit5.Enabled := true;
  DBEdit6.Enabled := true;
  DBEdit7.Enabled := true;
  DBEdit8.Enabled := true;
  DBEdit9.Enabled := true;
  DBEdit10.Enabled := true;
  DBEdit11.Enabled := true;
  CBmostrar.Enabled := true;
  SpeedButton1.Enabled := false;
  SpeedButton3.Enabled := false;
  SpeedButton4.Enabled := true;
  SpeedButton2.Enabled := true;
  SpeedButton5.Enabled := false;
  DBGrid1.Enabled := false;
  Label6.Enabled := true;
  FDQusuario.Insert;
  DBEdit1.Text := IntToStr(FDQcodigoatualGEN_ID.Value+1);
end;

procedure TFusuarios.SpeedButton2Click(Sender: TObject);
begin
  FDQusuario.post;
  DBEdit2.Enabled := false;
  DBEdit3.Enabled := false;
  DBEdit4.Enabled := false;
  DBEdit5.Enabled := false;
  DBEdit6.Enabled := false;
  DBEdit7.Enabled := false;
  DBEdit8.Enabled := false;
  DBEdit9.Enabled := false;
  DBEdit10.Enabled := false;
  DBEdit11.Enabled := false;
  CBmostrar.Enabled := false;
  SpeedButton1.Enabled := true;
  SpeedButton3.Enabled := true;
  SpeedButton4.Enabled := false;
  SpeedButton2.Enabled := false;
  SpeedButton5.Enabled := true;
  DBGrid1.Enabled := true;
  Label6.Enabled := false;
  if DBEdit1.Text = IntToStr(FDQcodigoatualGEN_ID.Value+1) then
    begin
      FDQcodigonovo.open;
      FDQcodigonovo.Close;
      FDQcodigoatual.Close;
      FDQcodigoatual.Open;
    end;

end;

procedure TFusuarios.SpeedButton3Click(Sender: TObject);
begin
  FDQusuario.Edit;
  DBEdit2.Enabled := true;
  DBEdit3.Enabled := true;
  DBEdit4.Enabled := true;
  DBEdit5.Enabled := true;
  DBEdit6.Enabled := true;
  DBEdit7.Enabled := true;
  DBEdit8.Enabled := true;
  DBEdit9.Enabled := true;
  DBEdit10.Enabled := true;
  DBEdit11.Enabled := true;
  CBmostrar.Enabled := true;
  SpeedButton1.Enabled := false;
  SpeedButton3.Enabled := false;
  SpeedButton4.Enabled := true;
  SpeedButton2.Enabled := true;
  SpeedButton5.Enabled := false;
  DBGrid1.Enabled := false;
  Label6.Enabled := false;
end;

procedure TFusuarios.SpeedButton4Click(Sender: TObject);
begin
  FDQusuario.Cancel;
  DBEdit2.Enabled := false;
  DBEdit3.Enabled := false;
  DBEdit4.Enabled := false;
  DBEdit5.Enabled := false;
  DBEdit6.Enabled := false;
  DBEdit7.Enabled := false;
  DBEdit8.Enabled := false;
  DBEdit9.Enabled := false;
  DBEdit10.Enabled := false;
  DBEdit11.Enabled := false;
  CBmostrar.Enabled := false;
  SpeedButton1.Enabled := true;
  SpeedButton3.Enabled := true;
  SpeedButton4.Enabled := false;
  SpeedButton2.Enabled := false;
  SpeedButton5.Enabled := true;
  DBGrid1.Enabled := true;
  FDQusuario.Refresh;
  Label6.Enabled := false;

end;

procedure TFusuarios.SpeedButton5Click(Sender: TObject);
begin
  If MessageDlg('Deseja Excluir Esse Usuario Base de dados',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    Begin
      FDQusuario.Delete;
      Showmessage ('Usuario Excluido com Sucesso!');
      FDQusuario.Refresh;
     {   DBEdit2.Enabled := false;
        DBEdit3.Enabled := false;
        DBEdit4.Enabled := false;
        DBEdit5.Enabled := false;
        DBEdit10.Enabled := false;
        DBComboBox1.Enabled := false;
        DBEdit6.Enabled := false;
        }
    end;
    //SpeedButton1.Enabled := true;
end;

procedure TFusuarios.SpeedButton6Click(Sender: TObject);
begin
   Fusuarios.close; //fecha o form
   Label6.Enabled := false;
end;

end.
