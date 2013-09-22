unit MAC;
{********************************************************}
{                     unit MainMAC                       }
{                                                        }
{   Retrieving the MAC-Address (Media Access Control)    }
{                                                        }
{         Copyright (c) 1997,1998 Vlad Sharnin           }
{                                                        }
{             E-mail: vladshar@ufanet.ru                 }
{          Home page: http://vladshar.ufanet.ru          }
{                                                        }
{********************************************************}
{
 My other products:

- NBLib32 (NetBios Library for Win32) - shareware native
  components collection for peer-to-peer networking
  LAN&WAN via NetBios under Windows 95/98/NT.
  For D2/3/4 & BCB 1/3.

- Port95 - freeware Delphi-unit for access to the I/O ports
  in traditional by Pascal-style under Win95/98.
  For D2/3/4 & BCB 1/3.

Coming soon:

- Shareware NBLib32 as ActiveX Control (OCX)
- Freeware NBLib16 1.00b - compatible with NBLib32
  components collection for Delphi 1

{********************************************************}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, NB30;
implementation

type
 TNBLanaResources = (lrAlloc, lrFree);
type
 PMACAddress = ^TMACAddress;
 TMACAddress = array[0..5] of Byte;
{
The LanaEnum parameter specifies structure describing accessible numbers Lana.
The amounty Lana is defined by number of the installed network cards and network
protocols for each of them. Each accessible Lana identifies a unique combination
of one driver of the protocol and one network card. Each structure NCB contains
a field ncb_lana_num, in which necessary number Lana (i.e. identifier of pair
protocol/MAC) should be written.
In systems with one network card, Lana = 0, usually corresponds
"to the protocol by default".
}

// Get the list of adapters
function GetLanaEnum(LanaEnum: PLanaEnum): Byte;
var
  LanaEnumNCB: PNCB;
begin
  New(LanaEnumNCB);
  ZeroMemory(LanaEnumNCB, SizeOf(TNCB));
  try
    with LanaEnumNCB^ do
    begin
      ncb_buffer := PChar(LanaEnum);
      ncb_length := SizeOf(TLanaEnum);
      ncb_command  := Char(NCBENUM);
      NetBios(LanaEnumNCB);
      Result := Byte(ncb_cmd_cplt);
    end;
  finally
    Dispose(LanaEnumNCB);
  end;
end;

function ResetLana(LanaNum, ReqSessions, ReqNames: Byte;
  LanaRes: TNBLanaResources): Byte;
var
  ResetNCB: PNCB;
begin
  New(ResetNCB);
  ZeroMemory(ResetNCB, SizeOf(TNCB));
  try
    with ResetNCB^ do
    begin
      ncb_lana_num := Char(LanaNum);        // Set Lana_Num
      ncb_lsn := Char(LanaRes);             // Allocation of new resources
      ncb_callname[0] := Char(ReqSessions); // Query of max sessions
      ncb_callname[1] := #0;                // Query of max NCBs (default)
      ncb_callname[2] := Char(ReqNames);    // Query of max names
      ncb_callname[3] := #0;                // Query of use NAME_NUMBER_1
      ncb_command  := Char(NCBRESET);
      NetBios(ResetNCB);
      Result := Byte(ncb_cmd_cplt);
    end;
  finally
    Dispose(ResetNCB);
  end;
end;

function GetMACAddress(LanaNum: Byte; MACAddress: PMACAddress): Byte;
var
  AdapterStatus: PAdapterStatus;
  StatNCB: PNCB;
begin
  New(StatNCB);
  ZeroMemory(StatNCB, SizeOf(TNCB));
  StatNCB.ncb_length := SizeOf(TAdapterStatus) +  255 * SizeOf(TNameBuffer);
  GetMem(AdapterStatus, StatNCB.ncb_length);
  try
    with StatNCB^ do
    begin
      ZeroMemory(MACAddress, SizeOf(TMACAddress));
      ncb_buffer := PChar(AdapterStatus);
      ncb_callname := '*              ' + #0;
      ncb_lana_num := Char(LanaNum);
      ncb_command  := Char(NCBASTAT);
      NetBios(StatNCB);
      Result := Byte(ncb_cmd_cplt);
      if Result = NRC_GOODRET then
        MoveMemory(MACAddress, AdapterStatus, SizeOf(TMACAddress));
    end;
  finally
    FreeMem(AdapterStatus);
    Dispose(StatNCB);
  end;
end;

end.
