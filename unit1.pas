unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  BGRABitmapTypes;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Edit1Change(Sender: TObject);
var
  p: TBGRAPixel;
  c: TColor;
begin
  if leftStr(Edit1.Text, 1) = '#' then
    p.FromString(Edit1.Text)
  else
    ShowMessage('please put color start with # ');
  c := p;
  Edit2.Text := ColorToString(c);
  Panel1.Color := c;
end;

procedure TForm1.Edit1Click(Sender: TObject);
begin
  Edit1.SetFocus;
  edit1.SelectAll;
end;

end.
