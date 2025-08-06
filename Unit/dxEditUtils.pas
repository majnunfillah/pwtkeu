unit dxEditUtils;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus;

procedure ClosePopupForm(AControl: TControl; AAccept: Boolean); // PopupEdit

implementation

uses
  dxExEdtr;

procedure ClosePopupForm(AControl: TControl; AAccept: Boolean);
begin
  if GetParentForm(AControl) is TdxPopupEditForm then
    TdxPopupEditForm(GetParentForm(AControl)).ClosePopup(AAccept);
end;

end.
