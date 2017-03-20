unit mutex;

interface

implementation

Uses Windows,Unit1;
var
 mHandle: THandle;

initialization
 mHandle := CreateMutex(Nil, True, PChar('ARSSEv'+VERSION+'.'+VERSIONBUILD));

 if GetLastError = ERROR_ALREADY_EXISTS then
   Halt;

finalization
 if mHandle <> 0 then
   CloseHandle(mHandle);
end.