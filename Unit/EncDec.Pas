unit EncDec;

interface

   function EncodeString(Str: string): string;
   function DecodeString(Str: string): string;

implementation

const

   TheTable =
     '~!@#$%^&*()_+|\;-0987654321`?><MNBVCXZzxcvbnm,./}{[]qwertyuiopasd';
   //Nih tabel karakternya, ganti aja sama kita, pokoknya 65 karakter ASCII,
   //jangan ada karakter yang sama.

function Encode3to4(const Value, Table: string): string;
var
   c: Byte;
   n, l: Integer;
   Count: Integer;
   DOut: array[0..3] of Byte;
begin
   setlength(Result, ((Length(Value) + 2) div 3) * 4);
   l := 1;
   Count := 1;
   while Count <= Length(Value) do
   begin
     c := Ord(Value[Count]);
     Inc(Count);
     DOut[0] := (c and $FC) shr 2;
     DOut[1] := (c and $03) shl 4;
     if Count <= Length(Value) then
     begin
       c := Ord(Value[Count]);
       Inc(Count);
       DOut[1] := DOut[1] + (c and $F0) shr 4;
       DOut[2] := (c and $0F) shl 2;
       if Count <= Length(Value) then
       begin
         c := Ord(Value[Count]);
         Inc(Count);
         DOut[2] := DOut[2] + (c and $C0) shr 6;
         DOut[3] := (c and $3F);
       end
       else
       begin
         DOut[3] := $40;
       end;
     end
     else
     begin
       DOut[2] := $40;
       DOut[3] := $40;
     end;
     for n := 0 to 3 do
     begin
       Result[l] := Table[DOut[n] + 1];
       Inc(l);
     end;
   end;
end;

function Decode4to3(const Value, Table: string): string;
var
   x, y, n, l: Integer;
   d: array[0..3] of Byte;
begin
   SetLength(Result, Length(Value));
   x := 1;
   l := 1;
   while x < Length(Value) do
   begin
     for n := 0 to 3 do
     begin
       if x > Length(Value) then
         d[n] := 64
       else
       begin
         y := Pos(Value[x], Table);
         if y < 1 then
           y := 1;
         d[n] := y - 1;
       end;
       Inc(x);
     end;
     Result[l] := Char((D[0] and $3F) shl 2 + (D[1] and $30) shr 4);
     Inc(l);
     if d[2] <> 64 then
     begin
       Result[l] := Char((D[1] and $0F) shl 4 + (D[2] and $3C) shr 2);
       Inc(l);
       if d[3] <> 64 then
       begin
         Result[l] := Char((D[2] and $03) shl 6 + (D[3] and $3F));
         Inc(l);
       end;
     end;
   end;
   Dec(l);
   SetLength(Result, l);
end;


function EncodeString(Str: string): string;
begin
   Result := Encode3To4(Str, TheTable);
end;

function DecodeString(Str: string): string;
begin
   Result := Decode4To3(Str, TheTable);
end;

end.
