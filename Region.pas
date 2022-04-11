unit Region;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, sEdit, sButton, sSkinManager, Menus;

type
  TForm1 = class(TForm)
    sSkinManager1: TsSkinManager;
    sButton1: TsButton;
    sEdit1: TsEdit;
    sLabel1: TsLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure sButton1Click(Sender: TObject);
    procedure sEdit1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure sEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.sButton1Click(Sender: TObject);
var m:Integer;
begin
  if sEdit1.Text = '' then
  begin
  ShowMessage('Ошибка ввода, введите код региона');
  Exit;
  end;
  m:=StrToInt(sEdit1.Text);
case m of
01: sLabel1.Caption:='Республика адыгея';
02,102: sLabel1.Caption:='Республика Башкортостан';
03,103: sLabel1.Caption:='Республика Бурятия';
04: sLabel1.Caption:='Республика Алтай(Горный Алтай)';
05: sLabel1.Caption:='Республика Дегестан';
06: sLabel1.Caption:='Республика Ингушетия';
07: sLabel1.Caption:='Кабардино-Балкарская Республика';
08: sLabel1.Caption:='Республика Карелия';
09: sLabel1.Caption:='Карачаево-Черкесская Республика';
10: sLabel1.Caption:='Республика Карелия';
11: sLabel1.Caption:='Республика Коми';
12: sLabel1.Caption:='Республика Марий Эл';
13,113: sLabel1.Caption:='республика Мардовия';
14: sLabel1.Caption:='Республика Саха(Якутия)';
15: sLabel1.Caption:='Республика северная Осетия(Алания)';
16,116: sLabel1.Caption:='Республика Тартастан';
17: sLabel1.Caption:='Республика Тыва';
18: sLabel1.Caption:='Удмуртская Республика';
19: sLabel1.Caption:='Республика Хакасия';
21,121: sLabel1.caption:='Чувашская Республика';
22: sLabel1.Caption:='Альтайский Край';
23,93,123: sLabel1.Caption:='Краснодарский край,Сочи';
24,84,88,124: sLabel1.Caption:='Красноярский край';
25,125: sLabel1.Caption:='Приморский Край';
26,126: sLabel1.Caption:='Старвопольский Край';
27: sLabel1.Caption:='Хабаровский Край';
28: sLabel1.Caption:='Амурский Область';
29: sLabel1.Caption:='Архангельская Область';
30: sLabel1.Caption:='Астраханская Область';
31: sLabel1.Caption:='Белгородская Область';
32: sLabel1.Caption:='Брянская Область';
33: sLabel1.Caption:='Владимирская Область';
34,134: sLabel1.Caption:='Волгоградская Область';
35: sLabel1.Caption:='Вологодская Область';
36,136: sLabel1.Caption:='Воронежская Область';
37: sLabel1.Caption:='Ивановская Область';
38,85,138: sLabel1.Caption:='Иркутская Область';
39,91: sLabel1.Caption:='Калининградская Область';
40: sLabel1.Caption:='Калужская область';
41: sLabel1.Caption:='Камчатская Область';
42,142: sLabel1.Caption:='Кемеровская Область';
43: sLabel1.Caption:='Кировская Область';
44: sLabel1.Caption:='Костромская Облость';
45: sLabel1.Caption:='Курганская Область';
46: sLabel1.Caption:='Курская область';
47: sLabel1.Caption:='Лининградская Область';
48: sLabel1.Caption:='Липецкая Область';
49: sLabel1.Caption:='Магаданская Область';
50,90,150,190,750: sLabel1.Caption:='Московская Область';
51: sLabel1.Caption:='Мурманская Область';
52,152: sLabel1.Caption:='Нижегородская Область';
53: sLabel1.Caption:='Новгородская Область';
54,154: sLabel1.Caption:='Новосибирьская Область';
55: sLabel1.Caption:='Омская область';
56: sLabel1.Caption:='Оренбургская Область';
57: sLabel1.Caption:='Орловская Область';
58: sLabel1.Caption:='Пензенская область';
59,81,159: sLabel1.Caption:='пермьская область';
60: sLabel1.Caption:='Псковская Область';
61,161: sLabel1.Caption:='Ростовская область';
62: sLabel1.Caption:='Рязанская Область';
63,163: sLabel1.Caption:='Самарская Область';
64,164: sLabel1.Caption:='Саратовская Область';
65: sLabel1.Caption:='Сахалинская Область';
66,96,196,166: sLabel1.Caption:='Свердловская Область';
67: sLabel1.Caption:='Смоленская Область';
68: sLabel1.Caption:='Тамбовская Область';
69: sLabel1.Caption:='Тверская Область';
70: sLabel1.Caption:='Томская Область';
71: sLabel1.Caption:='Тульская Область';
72: sLabel1.Caption:='Тюменская Область';
73,173: sLabel1.CAption:='Ульяновская Область';
74,174: sLabel1.Caption:='Челябинская Область';
75,80: sLabel1.Caption:='Забайкальский Край';
76: sLabel1.Caption:='Ярославская Область';
77,97,99,177,197,199,777: sLabel1.Caption:='Г.Москва';
78, 98, 178, 198: sLabel1.Caption:='Г.Санкт-Петербург';
79: sLabel1.Caption:='Еврейская Автономная Область';
82: sLabel1.Caption:='Республика Крым';
83: sLabel1.Caption:='Ненецкий Автономный Область';
86, 186: sLabel1.Caption:='Ханты-Манский Автономный округ Югра';
87: sLabel1.Caption:='Чукотский Автономный Область';
89: sLabel1.Caption:='Ямало-Ненецкий Автономный Округ';
92: sLabel1.Caption:='Г.Севастополь';
94: sLabel1.Caption:='Байконур';
95: sLabel1.Caption:='Чеченская Республика';
200..700: sLabel1.Caption:='Регион не сушествует';
20,100,101,104..112: sLabel1.Caption:='Регион не сушествует';
114,115,117..120,122: sLabel1.Caption:='Регион не сушествует';
127..133,135,137,139..141: sLabel1.Caption:='Регион не сушествует';
143..149,151,153,155..158: sLabel1.Caption:='Регион не сушествует';
160,162,165,167..172: sLabel1.Caption:='Регион не сушествует';
175,176,179..185,187..189: sLabel1.Caption:='Регион не сушествует';
191..195,701..749,751..776: sLabel1.Caption:='Регион не сушествует';
778..1000000000 : sLabel1.Caption:='Регион не сушествует';
end;
end;
procedure TForm1.sEdit1Click(Sender: TObject);
begin
sEdit1.Text:='';
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form2.Showmodal;
end;

procedure TForm1.sEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
 #8,'0'..'9' : ;
 else Key := Char(0);
end;
end;

end.
