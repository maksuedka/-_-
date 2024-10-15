unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Menus, System.IOUtils, Vcl.Imaging.jpeg, MMSystem, ShellAPI;

type
  TForm1 = class(TForm)
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SpeedButton3: TSpeedButton;
    Image2: TImage;
    Image3: TImage;
    Panel5: TPanel;
    Edit2: TEdit;
    BitBtn4: TBitBtn;
    Panel6: TPanel;
    Image4: TImage;
    Image5: TImage;
    SpeedButton10: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    ScrollBox1: TScrollBox;
    MainMenu1: TMainMenu;
    G1: TMenuItem;
    N1: TMenuItem;
    Panel7: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    RadioGroup6: TRadioGroup;
    RadioGroup7: TRadioGroup;
    RadioGroup8: TRadioGroup;
    RadioGroup9: TRadioGroup;
    RadioGroup10: TRadioGroup;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel8: TPanel;
    SpeedButton2: TSpeedButton;
    Panel10: TPanel;
    Edit1: TEdit;
    Panel9: TPanel;
    Image1: TImage;
    BitBtn5: TBitBtn;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Panel11: TPanel;
    SpeedButton34: TSpeedButton;
    Memo1: TMemo;
    Label1: TLabel;
    N5: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
    FFileLines: TStringList;
    FCurrentLine: Integer;
    FFileSentences: TFileStream;
    FFileTranslations: TFileStream;
    FCurrentSentence: String;
    FCurrentTranslation: String;
    FSentences: TStringList;
    FTranslations: TStringList;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  nazvanie: string;
  f: textfile;
  bal, pred: integer;
  SentencesFileName, TranslationsFileName: String;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FSentences := TStringList.Create;
  FTranslations := TStringList.Create;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Panel11.Visible:=True;
  Memo1.Visible:=True;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('������ ����� ����������� �������� � �� �����, ������� �� ������.');
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  Panel11.Visible:=True;
  Memo1.Visible:=True;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('�������� �������� �������� ���������, ������������ �� ���������, �� ���������� ����� (����� ������ ��� ������ �������� � ������ ����������)');
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  Panel11.Visible:=True;
  Memo1.Visible:=True;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('�������� ����������� � ��������, �� ���������� (����� ������ ��� ������ �������� � � ����� ��������� �����).');
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  ShellExecute(0,PChar('Open'),PChar('�������.chm'),nil,nil,SW_SHOW);
end;

procedure TForm1.SpeedButton34Click(Sender: TObject);
begin
  Panel11.Visible:=False;
  Memo1.Lines.Clear;
  Memo1.Visible:=False;
  Label1.Visible:=False;
  Label1.Caption:='';
end;
//�������

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  PlaySound('�����\letter-a.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  PlaySound('�����\letter-b.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
  PlaySound('�����\letter-c.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
  PlaySound('�����\letter-d.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
  PlaySound('�����\letter-e.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
  PlaySound('�����\letter-f.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
begin
PlaySound('�����\letter-j.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton18Click(Sender: TObject);
begin
  PlaySound('�����\letter-g.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton19Click(Sender: TObject);
begin
  PlaySound('�����\letter-h.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
begin
  PlaySound('�����\letter-i.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
  PlaySound('�����\letter-k.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
begin
  PlaySound('�����\letter-l.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton20Click(Sender: TObject);
begin
  PlaySound('�����\letter-m.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton21Click(Sender: TObject);
begin
  PlaySound('�����\letter-n.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton22Click(Sender: TObject);
begin
  PlaySound('�����\letter-r.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton23Click(Sender: TObject);
begin
  PlaySound('�����\letter-q.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton24Click(Sender: TObject);
begin
  PlaySound('�����\letter-o.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton25Click(Sender: TObject);
begin
  PlaySound('�����\letter-p.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton26Click(Sender: TObject);
begin
  PlaySound('�����\letter-s.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton27Click(Sender: TObject);
begin
  PlaySound('�����\letter-t.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton28Click(Sender: TObject);
begin
  PlaySound('�����\letter-x.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton29Click(Sender: TObject);
begin
  PlaySound('�����\letter-w.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton30Click(Sender: TObject);
begin
  PlaySound('�����\letter-u.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton31Click(Sender: TObject);
begin
  PlaySound('�����\letter-v.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton32Click(Sender: TObject);
begin
  PlaySound('�����\letter-y.wav', 0, SND_ASYNC);
end;

procedure TForm1.SpeedButton33Click(Sender: TObject);
begin
  PlaySound('�����\letter-z.wav', 0, SND_ASYNC);
end;



procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Panel4.Visible:=False;
  Panel1.Visible:=True;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Panel4.Visible:=True;
  Panel1.Visible:=False;
end;

//�����

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  index:integer;
begin
  Randomize;
  index := Random(10) + 1;
  case index of
    1: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\�������.png');
          nazvanie:='bus';
        end;
    2: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\�����.png');
          nazvanie:='door';
        end;
    3: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\������.png');
          nazvanie:='tree';
        end;
    4: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\�������.png');
          nazvanie:='bed';
        end;
    5: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\����.png');
          nazvanie:='moon';
        end;
    6: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\������.png');
          nazvanie:='car';
        end;
    7: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\�����.png');
          nazvanie:='ball';
        end;
    8: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\����.png');
          nazvanie:='window';
        end;
    9: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\�������.png');
          nazvanie:='cookie';
        end;
    10: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\���.png');
          nazvanie:='juice';
        end;
    11: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\������.png');
          nazvanie:='sun';
        end;
    12: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\����.png');
          nazvanie:='table';
        end;
    13: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\����.png');
          nazvanie:='chair';
        end;
    14: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\����.png');
          nazvanie:='bread';
        end;
    15: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\������.png');
          nazvanie:='flower';
        end;
  end;
  Edit1.Text:='';
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
var
  index:integer;
begin
  Panel4.Visible:=False;
  Panel2.Visible:=True;
  Randomize;
  index := Random(10) + 1;
  case index of
    1: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\�������.png');
          nazvanie:='bus';
        end;
    2: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\�����.png');
          nazvanie:='door';
        end;
    3: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\������.png');
          nazvanie:='tree';
        end;
    4: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\�������.png');
          nazvanie:='bed';
        end;
    5: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\����.png');
          nazvanie:='moon';
        end;
    6: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\������.png');
          nazvanie:='car';
        end;
    7: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\�����.png');
          nazvanie:='ball';
        end;
    8: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\����.png');
          nazvanie:='window';
        end;
    9: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\�������.png');
          nazvanie:='cookie';
        end;
    10: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\���.png');
          nazvanie:='juice';
        end;
    11: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\������.png');
          nazvanie:='sun';
        end;
    12: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\����.png');
          nazvanie:='table';
        end;
    13: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\����.png');
          nazvanie:='chair';
        end;
    14: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\����.png');
          nazvanie:='bread';
        end;
    15: begin
          Image1.Picture.LoadFromFile(ExtractFilePath(ParamStr(0))+'\��������\������.png');
          nazvanie:='flower';
        end;
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Panel4.Visible:=True;
  Panel2.Visible:=False;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  if Edit1.Text=nazvanie then
    begin
      Panel11.Visible:=True;
      Label1.Visible:=True;
      Label1.Caption:='';
      Label1.Caption:='��������� :)'
    end
  else
  begin
    Panel11.Visible:=True;
    Label1.Visible:=True;
    Label1.Caption:='';
    Label1.Caption:='����������� :(';
    Edit1.Text:='���������� �����: ' + nazvanie;
  end;
end;

//�����������

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
  Panel4.Visible := False;
  Panel3.Visible := True;
  // ������������� ����� ������
  SentencesFileName := 'sentences.txt';
  TranslationsFileName := 'translations.txt';
  // ������� ������ �����
  FSentences := TStringList.Create;
  FTranslations := TStringList.Create;
  FSentences.LoadFromFile(SentencesFileName);
  FTranslations.LoadFromFile(TranslationsFileName);
  // ���������� ������ ����������� � Panel5
  FCurrentSentence := FSentences[0];
  Panel5.Caption := FCurrentSentence;
  // ������ ������� ������� �����������
  FCurrentTranslation := FTranslations[0];
  // ����������� �������
  // FreeAndNil(FSentences); // �� ����������� ������ �����
  // FreeAndNil(FTranslations);
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
  UserSentence: String;
begin
  // �������� ����� �� Edit2
  UserSentence := Edit2.Text;

  // ��������� ����������� ������������ � ���������
  if UserSentence = FCurrentTranslation then
    begin
      Panel11.Visible:=True;
      Label1.Visible:=True;
      Label1.Caption:='';
      Label1.Caption:='��������� :)'
    end
  else
  begin
    Panel11.Visible:=True;
    Label1.Visible:=True;
    Label1.Caption:='';
    Label1.Caption:='���������� :(';
    // ���������� ���������� ������� � Edit2
    Edit2.Text := '���������: '+FCurrentTranslation;
  end;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  pred := Random(FCurrentSentence.Length);
  FCurrentSentence := FSentences[pred];
  FCurrentTranslation := FTranslations[pred];
  Panel5.Caption := FCurrentSentence;
  Edit2.Text:='';
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Panel4.Visible:=True;
  Panel3.Visible:=False;
end;

//�������

procedure TForm1.C1Click(Sender: TObject);
begin
  showmessage('�������')
end;

//����

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  bal:=0;
  if RadioGroup1.ItemIndex=0 then
    bal:=bal+1;
  if RadioGroup2.ItemIndex=2 then
    bal:=bal+1;
  if RadioGroup3.ItemIndex=2 then
    bal:=bal+1;
  if RadioGroup4.ItemIndex=0 then
    bal:=bal+1;
  if RadioGroup5.ItemIndex=1 then
    bal:=bal+1;
  if RadioGroup6.ItemIndex=3 then
    bal:=bal+1;
  if RadioGroup7.ItemIndex=2 then
    bal:=bal+1;
  if RadioGroup8.ItemIndex=1 then
    bal:=bal+1;
  if RadioGroup9.ItemIndex=1 then
    bal:=bal+1;
  if RadioGroup10.ItemIndex=2 then
    bal:=bal+1;
  Panel8.Visible:=True;
  Panel8.Caption:='������: '+IntToStr(bal);
  if bal<4 then
    begin
      Panel11.Visible:=True;
      Memo1.Visible:=True;
      Memo1.Lines.Clear;
      Memo1.Lines.Add('�� �������������! �� ��� �� ���������� ����. ��������� ���������!');
    end;
  if (bal>3) and (bal<7) then
    begin
        Panel11.Visible:=True;
        Memo1.Visible:=True;
        Memo1.Lines.Clear;
        Memo1.Lines.Add('�������� ������! �� �� ������� � ������.');
      end;
  if (bal>6) and (bal<10) then
  begin
    Panel11.Visible:=True;
    Memo1.Visible:=True;
    Memo1.Lines.Clear;
    Memo1.Lines.Add('�� ��������� ������! �� ������� ������� �������.');
  end;
  if bal=10 then
    begin
      Panel11.Visible:=True;
      Memo1.Visible:=True;
      Memo1.Lines.Clear;
      Memo1.Lines.Add('�����������! �� ������� ���������!');
    end;
  SpeedButton4.Visible:=False;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Panel6.Visible:=True;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  Panel6.Visible:=False;
  bal:=0;
  Panel8.Visible:=False;
  Panel8.Caption:=IntToStr(bal);
  SpeedButton4.Visible:=True;
  RadioGroup1.ItemIndex:=-1;
  RadioGroup2.ItemIndex:=-1;
  RadioGroup3.ItemIndex:=-1;
  RadioGroup4.ItemIndex:=-1;
  RadioGroup5.ItemIndex:=-1;
  RadioGroup6.ItemIndex:=-1;
  RadioGroup7.ItemIndex:=-1;
  RadioGroup8.ItemIndex:=-1;
  RadioGroup9.ItemIndex:=-1;
  RadioGroup10.ItemIndex:=-1;
  ScrollBox1.VertScrollBar.Position:=0;
end;

end.
