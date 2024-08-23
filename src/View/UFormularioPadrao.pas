unit UFormularioPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmPadrao = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  protected
    { Protected declarations }
//    procedure CMDialogKey(var Msg: TCMDialogKey); message CM_DIALOGKEY;
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

{ TfrmPadrao }

//procedure TfrmPadrao.CMDialogKey(var Msg: TCMDialogKey);
//begin
//   if Msg.CharCode = VK_RETURN then
//      begin
//         GetParentForm(Self).Perform(CM_DIALOGKEY, VK_TAB, 0);
//         Msg.Result := 1;
//      end;
//end;

procedure TfrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      end;
end;

end.
