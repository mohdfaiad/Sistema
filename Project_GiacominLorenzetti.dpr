program Project_GiacominLorenzetti;

uses
  Vcl.Forms,
  Ulogin in 'Ulogin.pas' {Flogin},
  Uponto in 'Uponto.pas' {Fponto},
  Uconferencia in 'Uconferencia.pas' {Fconferencia},
  Ueditahoras in 'Ueditahoras.pas' {Form2},
  Uconnection in 'Uconnection.pas' {DataModule2: TDataModule},
  Umenu in 'Umenu.pas' {Fmenu},
  Uusuarios in 'Uusuarios.pas' {Fusuarios},
  Uerro in 'Uerro.pas' {Ferro},
  Uduvidas in 'Uduvidas.pas' {Fduvidas},
  Uresolvido in 'Uresolvido.pas' {Fresolvido},
  Uimportaexcel in 'Uimportaexcel.pas' {Fimportaexcel},
  Uimportamdfe in 'Uimportamdfe.pas' {Fimportamdfe},
  Udescarga in 'Udescarga.pas' {Fdescarga},
  Ucelular in 'Ucelular.pas' {FCelular},
  Urelatorios in 'Urelatorios.pas' {Frelatorios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFlogin, Flogin);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TFmenu, Fmenu);
  Application.CreateForm(TFusuarios, Fusuarios);
  Application.CreateForm(TFerro, Ferro);
  Application.CreateForm(TFduvidas, Fduvidas);
  Application.CreateForm(TFresolvido, Fresolvido);
  Application.CreateForm(TFimportaexcel, Fimportaexcel);
  Application.CreateForm(TFimportamdfe, Fimportamdfe);
  Application.CreateForm(TFdescarga, Fdescarga);
  Application.CreateForm(TFCelular, FCelular);
  Application.CreateForm(TFrelatorios, Frelatorios);
  Application.Run;
end.
