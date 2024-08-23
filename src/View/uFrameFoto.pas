unit uFrameFoto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  System.UITypes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxImage, cxDBEdit, Vcl.StdCtrls, cxButtons,
  cxDBBotoes, Vcl.ExtCtrls, cxGroupBox, Uni, Data.DB, dxSkinOffice2019Colorful,
  dxSkinTheBezier;

type
  TFrameFoto = class(TFrame)
    cxgb_Foto: TcxGroupBox;
    panFotoAlunoFerramentas: TPanel;
    btn_Apagar: TcxDBBotao;
    cxdbi_Foto: TcxDBImage;
    btn_Foto: TcxDBBotao;
    procedure btn_FotoClick(Sender: TObject);
    procedure btn_ApagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

implementation
Uses VCL.Funcoes, UDialogoWebCam_New;

{$R *.dfm}

procedure TFrameFoto.btn_FotoClick(Sender: TObject);
//var
//   aFileName: TFileName;
begin

  if not (cxdbi_Foto.DataBinding.DataSource.State in dsEditModes) then
    Exit;

  try

    dlgWebCam_New := TdlgWebCam_New.Create(Self);

    //O Valor da TAG cxdbi_Foto Definirá o tamanho para salvar a foto
    //0-3x4 e 1-Tamanho da Tela de Foto

    if cxdbi_Foto.Tag = 1 then
    begin

      dlgWebCam_New.pnl_foto.Align    := alClient;
      dlgWebCam_New.img_foto1.Top     := 0;
      dlgWebCam_New.img_foto1.Left    := 0;
      dlgWebCam_New.img_foto1.Tag     := 1;

      dlgWebCam_New.qri_Foto.Width    := dlgWebCam_New.Panel1.Width;
      dlgWebCam_New.qri_Foto.Height   := dlgWebCam_New.Panel1.Height;

      dlgWebCam_New.Shape2.Visible    := False;

    end;

    if dlgWebCam_New.ShowModal = mrok then
    begin

      if (not cxdbi_Foto.DataBinding.Field.IsNull) then
        if Not Confirmacao('Deseja SUBSTITUIR a FOTO Antiga?') then
          Exit;

//      CopyFile(PChar(dlgWebCam_New.v_File_Name), PChar(aFileName), False);
      (TUniQuery(cxdbi_Foto.DataBinding.DataSource.DataSet).FieldByName(cxdbi_Foto.DataBinding.DataField) as TBlobField).LoadFromFile(dlgWebCam_New.v_File_Name);

    end;

  except
    on E: Exception do
       MessageDlg(E.Message, mtError, [mbOk], 0);
  end;

  FreeAndNil(dlgWebCam_New);

end;

procedure TFrameFoto.btn_ApagarClick(Sender: TObject);
begin

  if (cxdbi_Foto.DataBinding.DataSource.State In dsEditModes) And
     (not cxdbi_Foto.DataBinding.Field.IsNull) And
     Confirmacao('Deseja Realmente Limpar a Foto do Aluno?') then
    (TUniQuery(cxdbi_Foto.DataBinding.DataSource.DataSet).FieldByName(cxdbi_Foto.DataBinding.DataField) As TBlobField).Clear;


end;

end.
