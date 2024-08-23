unit MasterPDV.View.VendaTouchScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFormularioPrivilegios, AdvSmoothPanel;

type
  TfrmVendaTouchScreen = class(TfrmPrivilegios)
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    AdvSmoothPanel4: TAdvSmoothPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendaTouchScreen: TfrmVendaTouchScreen;

implementation

{$R *.dfm}

end.
