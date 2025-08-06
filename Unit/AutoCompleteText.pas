unit AutoCompleteText;

interface

uses
  stdctrls, sysutils, classes, ADODB;

Var ListValues : TStringList;

function EditComplete(myKey:integer;mEdit: TEdit; mItems: TStrings; mCase: Boolean = True): Boolean;
procedure GetDataAutoComplete(ADOQuery : TADOQuery);

implementation



function EditComplete(myKey:integer;mEdit: TEdit; mItems: TStrings; mCase: Boolean = True): Boolean;
var
 I, T: Integer;
 vSubStr, S: string;
begin
Result := False;
case myKey of
    8, 13, 46, 37..40: ;// jangan cari jika myKey adalah backspace, enter, delete atau panah kanan-kiri
else
 if (not Assigned(mEdit)) or (not Assigned(mItems)) then
     Exit;
 vSubStr := mEdit.Text;
 if not mCase then vSubStr := UpperCase(vSubStr);
    for I := 0 to Pred(mItems.Count) do
    begin
      S := mItems[I];
      if not mCase then
         S := UpperCase(S);
      if (Pos(vSubStr, S) = 1) and (vSubStr <> S) then
      begin
         T := Length(vSubStr);
         mEdit.Text := mItems[I];
         mEdit.SelStart := T;
         mEdit.SelLength := Length(mItems[I]) - T;
         Result := True;
         Break;
      end;
    end;
end;
end;

procedure GetDataAutoComplete(ADOQuery : TADOQuery);
Begin
  ListValues.Free;
  ListValues := TStringList.Create;
  while not ADOQuery.Eof do
      begin
      ListValues.Add(ADOQuery.Fields[0].Value);
      ADOQuery.Next;
      end;
End;

end.
 
