unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Soap.InvokeRegistry, Soap.Rio,
  Soap.SOAPHTTPClient, Vcl.StdCtrls, XSBuiltIns, IjstshWebService, Vcl.ComCtrls,
  Vcl.Buttons, ActiveX;

type
  TForm2 = class(TForm)
    HTTPRIO1: THTTPRIO;
    Memo1: TMemo;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;

    procedure countText(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure loadHistory(Sender: TObject);
    procedure ComboBox1DblClick(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
    historyList: TStringList;

    procedure saveHistory;
  public
    { Public declarations }
  end;

type
  TMyThread = class(TThread)
  protected
    procedure Execute; override;
  end;

var
  Form2: TForm2;
  sysDirWithFilename: string;

implementation

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
var
  MyThread: TMyThread;
begin
  MyThread := TMyThread.Create(False);
end;

procedure TMyThread.Execute;
var
  rtnValue: integer; // Return Value From SMS Webservice.
  svr: IjstshWebServicePortType;
  timeStamp: TXSDateTime;
  nowTime: TDateTime;
begin

  COINITIALIZE(nil);
  // Disable Send Button
  rtnValue := 5;
  Form2.BitBtn1.Enabled := False;
  Form2.StatusBar1.Panels[0].Text := 'Sending...';

  Form2.saveHistory;

  nowTime := Now;
  timeStamp := TXSDateTime.Create;

  svr := getIjstshWebServicePortType(true, '', nil);
  try
    rtnValue := svr.sendMessages('senderId', Form2.ComboBox1.Text, 'area',
      Form2.Memo1.Text, timeStamp, timeStamp, '96196', 'senderName', '69');
  except
    ShowMessage('Check your content and try again.');
  end;
  case rtnValue of
    0:
      Form2.StatusBar1.Panels[0].Text := 'ERROR: Message Quota Exceeded.';
    1:
      Form2.StatusBar1.Panels[0].Text := 'ERROR: Sensitve Content Detected.';
    2:
      Form2.StatusBar1.Panels[0].Text :=
        'ERROR: Wrong Phone Number(s) Included.';
    3:
      Form2.StatusBar1.Panels[0].Text := 'ERROR: Unknown Error.';
    4:
      Form2.StatusBar1.Panels[0].Text := 'SUCCEED: Sent.';
  else
    Form2.StatusBar1.Panels[0].Text := 'ERROR: Unknown Error.';
  end;

  Form2.BitBtn1.Enabled := true;
  CoUninitialize;

end;

procedure TForm2.ComboBox1DblClick(Sender: TObject);
var
  confm: integer;
begin
  confm := MessageDlg('Clear the recent history?', mtConfirmation,
    [mbyes, mbno], 1);
  if confm = 6 then
  begin
    Form2.ComboBox1.Text := '';
    Form2.historyList.Free;
    Form2.historyList := TStringList.Create;
    Form2.ComboBox1.Items := Form2.historyList;
    Form2.historyList.SaveToFile(sysDirWithFilename);
  end;
end;

procedure TForm2.countText(Sender: TObject);
var
  str: string;
  i, eng, chn, counter: integer;
begin
  str := Memo1.Text;
  eng := 0;
  chn := 0;
  for i := 1 to length(str) do
  begin
    if (ord(str[i]) >= 33) and (ord(str[i]) <= 126) then
    begin
      inc(eng);
    end
    else if (ord(str[i]) >= 127) then
    begin
      inc(chn);
    end;
  end;
  counter := trunc((eng + chn * 2) / 140) + 1;
  if counter > 5 then
  begin
    BitBtn1.Font.Color := clRed;
    // BitBtn1.Enabled := False;
  end
  else
  begin
    BitBtn1.Font.Color := clBlack;
    // BitBtn1.Enabled := True;
  end;

  StatusBar1.Panels[1].Text := inttostr(eng + chn * 2) + ' Char(s)';
  BitBtn1.Caption := 'Send (' + inttostr(counter) + '/5)';

  Form2.BitBtn1.Enabled := true;
  Form2.loadHistory(self);
end;

procedure TForm2.loadHistory(Sender: TObject);
begin
  // Set the ComboBox Hint
  Form2.ComboBox1.Hint := '*Use Comma(,) to seperate multiple numbers.' + #13#10
    + '*Double click this area to clear recent history.';

  // Fetch the System Dir
  sysDirWithFilename := GetEnvironmentVariable('TMP') + '\history.sms';

  // Load history from the file.
  Form2.historyList := TStringList.Create;
  try
    Form2.historyList.LoadFromFile(sysDirWithFilename);
    Form2.ComboBox1.Items := Form2.historyList;
  except
    Form2.historyList.SaveToFile(sysDirWithFilename);
  end;

end;

procedure TForm2.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  begin
    if (Shift = [ssCtrl]) and (Key = 65) then
      Memo1.SelectAll;
  end;
end;

procedure TForm2.saveHistory;
var
  i: integer;
begin
  if Form2.historyList = nil then
    Form2.historyList := TStringList.Create;

  for i := 0 to Form2.historyList.Count - 1 do
  begin
    try
      if Form2.historyList.Strings[i] = Form2.ComboBox1.Text then
      begin
        Form2.historyList.Delete(i);
      end;
    except
      break;
    end;
  end;

  if Form2.ComboBox1.Text <> '' then
    Form2.historyList.Insert(0, Form2.ComboBox1.Text);

  Form2.ComboBox1.Items := Form2.historyList;
  Form2.historyList.SaveToFile(sysDirWithFilename);
end;

end.
