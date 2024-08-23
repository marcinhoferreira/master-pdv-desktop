unit MasterPDV.Model.Multiplus.TEF;

interface

function IniciaFuncaoMCInterativo(iComando: Integer; sCnpjCliente: PAnsiChar;
  iParcela: Integer; sCupom: PAnsiChar; sValor: PAnsiChar; sNsu: PAnsiChar;
  sData: PAnsiChar; sNumeroPDV: PAnsiChar; sCodigoLoja: PAnsiChar;
  sTipoComunicacao: Integer; sParametro: PAnsiChar): Integer; stdcall;
  external 'TefClientmc.dll';

function AguardaFuncaoMCInterativo(): PAnsiChar; stdcall;
  external 'TefClientmc.dll';

function ContinuaFuncaoMCInterativo(sInformacao: PAnsiChar): Integer; stdcall;
  external 'TefClientmc.dll';

function FinalizaFuncaoMCInterativo(iComando: Integer; sCnpjCliente: PAnsiChar;
  iParcela: Integer; sCupom: PAnsiChar; sValor: PAnsiChar; sNsu: PAnsiChar;
  sData: PAnsiChar; sNumeroPDV: PAnsiChar; sCodigoLoja: PAnsiChar;
  sTipoComunicacao: Integer; sParametro: PAnsiChar): Integer; stdcall;
  external 'TefClientmc.dll';

function CancelarFluxoMCInterativo(): Integer; stdcall;
  external 'TefClientmc.dll';


implementation


end.
