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
  ShowMessage('������ �����, ������� ��� �������');
  Exit;
  end;
  m:=StrToInt(sEdit1.Text);
case m of
01: sLabel1.Caption:='���������� ������';
02,102: sLabel1.Caption:='���������� ������������';
03,103: sLabel1.Caption:='���������� �������';
04: sLabel1.Caption:='���������� �����(������ �����)';
05: sLabel1.Caption:='���������� ��������';
06: sLabel1.Caption:='���������� ���������';
07: sLabel1.Caption:='���������-���������� ����������';
08: sLabel1.Caption:='���������� �������';
09: sLabel1.Caption:='���������-���������� ����������';
10: sLabel1.Caption:='���������� �������';
11: sLabel1.Caption:='���������� ����';
12: sLabel1.Caption:='���������� ����� ��';
13,113: sLabel1.Caption:='���������� ��������';
14: sLabel1.Caption:='���������� ����(������)';
15: sLabel1.Caption:='���������� �������� ������(������)';
16,116: sLabel1.Caption:='���������� ���������';
17: sLabel1.Caption:='���������� ����';
18: sLabel1.Caption:='���������� ����������';
19: sLabel1.Caption:='���������� �������';
21,121: sLabel1.caption:='��������� ����������';
22: sLabel1.Caption:='���������� ����';
23,93,123: sLabel1.Caption:='������������� ����,����';
24,84,88,124: sLabel1.Caption:='������������ ����';
25,125: sLabel1.Caption:='���������� ����';
26,126: sLabel1.Caption:='�������������� ����';
27: sLabel1.Caption:='����������� ����';
28: sLabel1.Caption:='�������� �������';
29: sLabel1.Caption:='������������� �������';
30: sLabel1.Caption:='������������ �������';
31: sLabel1.Caption:='������������ �������';
32: sLabel1.Caption:='�������� �������';
33: sLabel1.Caption:='������������ �������';
34,134: sLabel1.Caption:='������������� �������';
35: sLabel1.Caption:='����������� �������';
36,136: sLabel1.Caption:='����������� �������';
37: sLabel1.Caption:='���������� �������';
38,85,138: sLabel1.Caption:='��������� �������';
39,91: sLabel1.Caption:='��������������� �������';
40: sLabel1.Caption:='��������� �������';
41: sLabel1.Caption:='���������� �������';
42,142: sLabel1.Caption:='����������� �������';
43: sLabel1.Caption:='��������� �������';
44: sLabel1.Caption:='����������� �������';
45: sLabel1.Caption:='���������� �������';
46: sLabel1.Caption:='������� �������';
47: sLabel1.Caption:='������������� �������';
48: sLabel1.Caption:='�������� �������';
49: sLabel1.Caption:='����������� �������';
50,90,150,190,750: sLabel1.Caption:='���������� �������';
51: sLabel1.Caption:='���������� �������';
52,152: sLabel1.Caption:='������������� �������';
53: sLabel1.Caption:='������������ �������';
54,154: sLabel1.Caption:='�������������� �������';
55: sLabel1.Caption:='������ �������';
56: sLabel1.Caption:='������������ �������';
57: sLabel1.Caption:='��������� �������';
58: sLabel1.Caption:='���������� �������';
59,81,159: sLabel1.Caption:='��������� �������';
60: sLabel1.Caption:='��������� �������';
61,161: sLabel1.Caption:='���������� �������';
62: sLabel1.Caption:='��������� �������';
63,163: sLabel1.Caption:='��������� �������';
64,164: sLabel1.Caption:='����������� �������';
65: sLabel1.Caption:='����������� �������';
66,96,196,166: sLabel1.Caption:='������������ �������';
67: sLabel1.Caption:='���������� �������';
68: sLabel1.Caption:='���������� �������';
69: sLabel1.Caption:='�������� �������';
70: sLabel1.Caption:='������� �������';
71: sLabel1.Caption:='�������� �������';
72: sLabel1.Caption:='��������� �������';
73,173: sLabel1.CAption:='����������� �������';
74,174: sLabel1.Caption:='����������� �������';
75,80: sLabel1.Caption:='������������� ����';
76: sLabel1.Caption:='����������� �������';
77,97,99,177,197,199,777: sLabel1.Caption:='�.������';
78, 98, 178, 198: sLabel1.Caption:='�.�����-���������';
79: sLabel1.Caption:='��������� ���������� �������';
82: sLabel1.Caption:='���������� ����';
83: sLabel1.Caption:='�������� ���������� �������';
86, 186: sLabel1.Caption:='�����-������� ���������� ����� ����';
87: sLabel1.Caption:='��������� ���������� �������';
89: sLabel1.Caption:='�����-�������� ���������� �����';
92: sLabel1.Caption:='�.�����������';
94: sLabel1.Caption:='��������';
95: sLabel1.Caption:='��������� ����������';
200..700: sLabel1.Caption:='������ �� ����������';
20,100,101,104..112: sLabel1.Caption:='������ �� ����������';
114,115,117..120,122: sLabel1.Caption:='������ �� ����������';
127..133,135,137,139..141: sLabel1.Caption:='������ �� ����������';
143..149,151,153,155..158: sLabel1.Caption:='������ �� ����������';
160,162,165,167..172: sLabel1.Caption:='������ �� ����������';
175,176,179..185,187..189: sLabel1.Caption:='������ �� ����������';
191..195,701..749,751..776: sLabel1.Caption:='������ �� ����������';
778..1000000000 : sLabel1.Caption:='������ �� ����������';
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
