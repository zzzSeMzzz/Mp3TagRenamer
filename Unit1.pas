unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mp3FileUtils, Vcl.ExtCtrls,
  FileCtrl, Vcl.Buttons, sSpeedButton;

type
  TForm1 = class(TForm)
    od: TOpenDialog;
    Button1: TButton;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    Memo1: TMemo;
    flb: TFileListBox;
    sSpeedButton1: TsSpeedButton;
    Button2: TButton;
    Edit1: TEdit;
    cb: TComboBox;
    Button3: TButton;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure flbClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Id3v2Tag: TId3v2Tag;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var stream: TFilestream;
begin
  if od.Execute(handle) then begin
    stream := TFileStream.Create(od.FileName, fmOpenRead or fmShareDenyWrite);
    Id3v2Tag.ReadFromStream(stream);

    labelededit1.Text:= Id3v2Tag.Artist;
    labelededit2.Text:= Id3v2Tag.Album;
    labelededit3.Text:= Id3v2Tag.Title;
    labelededit4.Text:= Id3v2Tag.Year;
    labelededit5.Text:= Id3v2Tag.Genre;
    labelededit6.Text:= Id3v2Tag.Comment;
    labelededit7.Text:= Id3v2Tag.Track;
    labelededit8.Text:= inttostr(Id3v2Tag.Rating);
    labelededit9.Text:= Id3v2Tag.Lyrics;

  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
    stream: TFilestream;
    id3v2Tag2:TId3v2Tag;
begin
id3v2Tag2:=TId3v2Tag.Create;
flb.OnClick:=nil;
try
  for I := 0 to flb.Items.Count-1 do begin
    flb.ItemIndex:=i;
    memo1.Lines.Add('Попытка замены в '+flb.FileName);
    stream := TFileStream.Create(flb.FileName, fmOpenRead or fmShareDenyWrite);
    Id3v2Tag2.ReadFromStream(stream);
     case cb.ItemIndex of
       1: Id3v2Tag2.Album:=edit1.Text;
     end;
    stream.Free;
    id3v2Tag2.WriteToFile(flb.FileName);
    memo1.Lines.Add('Успешно');
  end;
except on E:Exception do
 memo1.Lines.Add(e.Message);
end;
id3v2Tag2.Free;
memo1.Lines.Add('Готово!');
flb.OnClick:=flbClick;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i, p1:integer;
    stream: TFilestream;
    id3v2Tag2:TId3v2Tag;
    fn, artist, track, separator: String;
begin
id3v2Tag2:=TId3v2Tag.Create;
flb.OnClick:=nil;
try
  for I := 0 to flb.Items.Count-1 do begin
    flb.ItemIndex:=i;
    memo1.Lines.Add('Попытка замены в '+flb.FileName);
    stream := TFileStream.Create(flb.FileName, fmOpenRead or fmShareDenyWrite);
    Id3v2Tag2.ReadFromStream(stream);
    stream.Free;
    fn:= ExtractFileName(flb.FileName);
    if(Edit1.Text<>'') then separator:= Edit1.Text else separator:= ' - ';
    p1:=pos(separator, fn);
    if(p1<>0)then begin
      artist:= Copy(fn, 1, p1);
      track:= Copy(fn, p1+length(separator), length(fn));
      memo1.Lines.Add('Артист: '+artist+' Трэк: '+track);
      if(CheckBox1.Checked) then begin
        Id3v2Tag2.Artist:=artist;
        Id3v2Tag2.Track:=track;
        Id3v2Tag2.Title:=track;
      end else begin
        if(Id3v2Tag2.Artist='')then Id3v2Tag2.Artist:=artist;
        if(Id3v2Tag2.Track='')then Id3v2Tag2.Track:=track;
        if(Id3v2Tag2.Title='')then Id3v2Tag2.Title:=track;
      end;

      id3v2Tag2.WriteToFile(flb.FileName);
      memo1.Lines.Add('Успешно');
    end;



  end;
except on E:Exception do
 memo1.Lines.Add(e.Message);
end;
id3v2Tag2.Free;
memo1.Lines.Add('Готово!');
flb.OnClick:=flbClick;
end;

procedure TForm1.flbClick(Sender: TObject);
var stream:TFilestream;
begin
if flb.ItemIndex=-1 then exit;

try
    stream := TFileStream.Create(flb.FileName, fmOpenRead or fmShareDenyWrite);
    Id3v2Tag.ReadFromStream(stream);

    labelededit1.Text:= Id3v2Tag.Artist;
    labelededit2.Text:= Id3v2Tag.Album;
    labelededit3.Text:= Id3v2Tag.Title;
    labelededit4.Text:= Id3v2Tag.Year;
    labelededit5.Text:= Id3v2Tag.Genre;
    labelededit6.Text:= Id3v2Tag.Comment;
    labelededit7.Text:= Id3v2Tag.Track;
    labelededit8.Text:= inttostr(Id3v2Tag.Rating);
    labelededit9.Text:= Id3v2Tag.Lyrics;
    stream.Free;
except on E:Exception do
   memo1.Lines.Add(e.Message);
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Id3v2Tag:= TId3v2Tag.Create;
end;

procedure TForm1.sSpeedButton1Click(Sender: TObject);
var chosenDirectory:string;
begin
if SelectDirectory('Выберите каталог', '', chosenDirectory) then
 flb.Directory:=chosenDirectory;
end;

end.
