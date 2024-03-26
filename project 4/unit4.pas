unit unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var a, b, h, y: integer;
begin
  a:=strtoint(Edit1.Text);
  b:=strtoint(Edit2.Text);
  h:=strtoint(Edit3.Text);
  if a<=b then
  begin
    memo1.lines.add('Дан отрезок ['+IntToStr(a)+', '+IntToStr(b)+'] c шагом '+IntToStr(h));
    while a<=b do
    begin
      y:=sqr(a);
      memo1.lines.add('Для Х равному '+IntToStr(a)+' функция будет равна '+IntToStr(y));
      a+=h;
    end
  end
  else memo1.lines.add('Введите корректные значения отрезка');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.

