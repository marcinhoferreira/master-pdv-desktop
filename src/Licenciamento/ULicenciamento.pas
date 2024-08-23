unit ULicenciamento;

interface

uses
   OnGuard, OgUtil, Classes;

const
   // Terminal de Frente de Caixa
   CKey: TKey = ($63,$06,$0B,$2F,$29,$CD,$1D,$EF,$F0,$29,$F6,$85,$97,$76,$F9,$E5);

var
   MachineModifier: longint;
   MachineKey: TKey;
   Expires: TDateTime;
   RegistrationInfo: TStringList;
   RegistrationFile: String;

procedure Initialize;
function IsReleaseCodeValid(ReleaseCodeString: string;
   const SerialNumber: longint): boolean;
procedure SaveRegistrationInformation(const ReleaseCodeString: string;
   const SerialNumber: longint);
procedure GetRegistrationInformation(var ReleaseCodeString: string;
   var SerialNumber: longint);

implementation

uses
   SysUtils, Forms;

procedure Initialize;
begin
   RegistrationFile := ChangeFileExt(Application.ExeName, '.lic');
   MachineKey := CKey;
   Expires := 0; //StrToDate('31/12/2017');
   MachineModifier := ABS(CreateMachineID([midUser, midSystem, { midNetwork, } midDrives]));
   ApplyModifierToKeyPrim(MachineModifier, MachineKey, SizeOf(MachineKey));
end;

function IsReleaseCodeValid(ReleaseCodeString: string;
   const SerialNumber: longint): boolean;
var
   CalculatedReleaseCode: TCode;
begin
   // Remove spaces from the Release code
   while pos(' ', ReleaseCodeString) > 0 do
      System.Delete(ReleaseCodeString, pos(' ', ReleaseCodeString), 1);

   // Calculate the release code based on the serial number and the calculated machine modifier
   InitSerialNumberCode(MachineKey, SerialNumber, Expires,
      CalculatedReleaseCode);

   // Compare the two release codes
   result := AnsiUpperCase(ReleaseCodeString)
      = AnsiUpperCase(BufferToHex(CalculatedReleaseCode,
      sizeof(CalculatedReleaseCode)));
end;

procedure SaveRegistrationInformation(const ReleaseCodeString: string;
   const SerialNumber: longint);
begin
   // Save the information for the application
   RegistrationInfo := TStringList.Create;
   RegistrationInfo.Add(format('%d', [SerialNumber]));
   RegistrationInfo.Add(AnsiUpperCase(ReleaseCodeString));
   RegistrationInfo.SaveToFile(RegistrationFile);
   RegistrationInfo.Free;
end;

procedure GetRegistrationInformation(var ReleaseCodeString: string;
   var SerialNumber: longint);
begin
   // Save the information for the application
   if FileExists(RegistrationFile) then
      begin
         RegistrationInfo := TStringList.Create;
         RegistrationInfo.LoadFromFile(RegistrationFile);
         SerialNumber := StrToInt(RegistrationInfo[0]);
         ReleaseCodeString := RegistrationInfo[1];
         RegistrationInfo.Free;
      end
   else
      begin
         SerialNumber := 0;
         ReleaseCodeString := '';
      end;
end;

initialization
   Initialize;

end.
