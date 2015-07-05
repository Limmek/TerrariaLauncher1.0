unit TerrariaLuancher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ShellApi;


const
  WM_ICONRESPONSE  = WM_USER + 1;

type
  TForm1 = class(TForm)
    GroupBoxConfig: TGroupBox;
    EMaxPlayers: TEdit;
    ButtonLoadConfig: TButton;
    ButtonStartServer: TButton;
    EWorld: TEdit;
    EPort: TEdit;
    EPassword: TEdit;
    ELanguage: TEdit;
    EAutoCreate: TEdit;
    Emotd: TEdit;
    EConfigName: TEdit;
    Timer1: TTimer;
    ButtonSendServerCommand: TButton;
    ESendServerCommand: TEdit;
    CheckBoxPassword: TCheckBox;
    CheckBoxWorld: TCheckBox;
    CheckBoxPort: TCheckBox;
    CheckBoxMaxPlayers: TCheckBox;
    EAutoCreatedWorldName: TEdit;
    CheckBoxAutoCreatedWorldName: TCheckBox;
    CheckBoxAutoCreate: TCheckBox;
    LWorld: TLabel;
    LPassword: TLabel;
    LPort: TLabel;
    CheckBoxLanguage: TCheckBox;
    LLanguage: TLabel;
    LMaxPlayers: TLabel;
    CheckBoxmotd: TCheckBox;
    Lmotd: TLabel;
    LAutoCreate: TLabel;
    LAutoCreate2: TLabel;
    LAutoCreate3: TLabel;
    LAutoCreate4: TLabel;
    LAutoCreatedWorldName: TLabel;
    LLanguage2: TLabel;
    LLanguage3: TLabel;
    LLanguage4: TLabel;
    LLanguage1: TLabel;
    LLanguage5: TLabel;
    LConfigName: TLabel;
    CheckBoxSecure: TCheckBox;
    LSecure: TLabel;
    CheckBoxPriority: TCheckBox;
    EPriority: TEdit;
    CheckBoxUpNp: TCheckBox;
    LUpNp: TLabel;
    LPriority: TLabel;
    LPriority1: TLabel;
    LPriority2: TLabel;
    LPriority3: TLabel;
    LPriority4: TLabel;
    LPriority5: TLabel;
    LPriority0: TLabel;
    EnpcStream: TEdit;
    LnpcStream: TLabel;
    CheckBoxnpcStream: TCheckBox;
    ButtonStopServer: TButton;
    GroupBoxSendServerMessage: TGroupBox;
    ButtonPanel: TPanel;
    GroupBoxServerInfo: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ButtonLoadConfigClick(Sender: TObject);
    procedure ButtonStartServerClick(Sender: TObject);
    procedure ButtonSendServerCommandClick(Sender: TObject);
    procedure CheckBoxAutoCreateClick(Sender: TObject);
    procedure CheckBoxAutoCreatedWorldNameClick(Sender: TObject);
    procedure CheckBoxWorldClick(Sender: TObject);
    procedure CheckBoxPasswordClick(Sender: TObject);
    procedure CheckBoxPortClick(Sender: TObject);
    procedure CheckBoxMaxPlayersClick(Sender: TObject);
    procedure CheckBoxmotdClick(Sender: TObject);
    procedure CheckBoxLanguageClick(Sender: TObject);
    procedure CheckBoxSecureClick(Sender: TObject);
    procedure CheckBoxPriorityClick(Sender: TObject);
    procedure CheckBoxUpNpClick(Sender: TObject);
    procedure CheckBoxnpcStreamClick(Sender: TObject);
    procedure ButtonStopServerClick(Sender: TObject);
    procedure EWorldChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Hide(Sender: TObject);
    procedure ShowTrayIcon();
    procedure HideTrayIcon();
    procedure IconResponse(var Msg: TMessage); message WM_ICONRESPONSE;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    ConfigLoaded, Secure, CheckMaxPlayers, FormSizeLoadConfig,
    FormSizeLoadServerStarted :Boolean;
    Path, PathWorld, CheckWorldParam, CheckMaxPlayersParam, CheckPortParam,
    CheckWorldPathParam, CheckPasswordParam, CheckAutoCreateParam,
    CheckWorldNameParam, CheckMOTDParam, CheckSecureParam,
    CheckLanguageParam, ChackUPNPParam, CheckNPCSteamParam,
    CheckPriorityParam :String;
    ConfigFile :TextFile;
    Serverhandle :hwnd;
    SecureValue, UpNpValue :Integer;
    ServerStartTime: TDateTime ;
    FIconShown: Boolean;
    FTrayIconData: TNotifyIconData;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation




{$R *.dfm}
{

 //Functions

}

function HWndGet(partialTitle: string): hWnd;
var
  hWndTemp: hWnd;
  iLenText: Integer;
  cTitletemp: array[0..254] of Char;
  sTitleTemp: string;
begin
  hWndTemp := FindWindow(nil, nil);
  {Find first window and loop through all subsequent windows in the master window
list}
  while hWndTemp <> 0 do
  begin
    {Retrieve caption text from current window}
    iLenText := GetWindowText(hWndTemp, cTitletemp, 255);
    sTitleTemp := cTitletemp;
    sTitleTemp := UpperCase(copy(sTitleTemp, 1, iLenText));
    {Clean up the return string, preparing for case insensitive comparison.
		Use appropriate method to determine if the current window's caption either
	  starts with or contains passed string}
    partialTitle := UpperCase(partialTitle);
    if pos(partialTitle, sTitleTemp) <> 0 then
      break;
    {Get next window in master window list and continue}
    hWndTemp := GetWindow(hWndTemp, GW_HWNDNEXT);
  end;
  result := hWndTemp;
end;

{

 //Procedures Configuration settings

 }

Procedure ServerUpTime();
begin
 if Form1.Timer1.Enabled = False then
 begin
 Form1.ServerStartTime := Time;
 Form1.Label4.Caption := TimeToStr(Form1.ServerStartTime);
 Form1.Timer1.Enabled := True;
 end
 else
 Form1.Timer1.Enabled := False;
end;


Procedure FormSize();
begin
 Form1.Caption := 'Terraria Luancher 1.0 - Beta';

 Form1.GroupBoxConfig.Visible := False;
 Form1.ButtonPanel.Visible := False;
 Form1.GroupBoxSendServerMessage.Visible := False;
 Form1.GroupBoxServerInfo.Visible := True;

 Form1.GroupBoxConfig.Width := 320;
 Form1.GroupBoxConfig.Height := 375;
 Form1.GroupBoxConfig.Top := 10;
 Form1.GroupBoxConfig.Left := 10;

 Form1.ButtonPanel.Width := 320;
 Form1.ButtonPanel.Height := 34;
 Form1.ButtonPanel.Top := 10;
 Form1.ButtonPanel.Left := 10;

 Form1.GroupBoxSendServerMessage.Width:= 320;
 Form1.GroupBoxSendServerMessage.Height := 70;
 Form1.GroupBoxSendServerMessage.Top := 10;
 Form1.GroupBoxSendServerMessage.Left := 10;

 Form1.GroupBoxServerInfo.Width :=  320;
 Form1.GroupBoxServerInfo.Height :=  100;
 Form1.GroupBoxServerInfo.Top :=  10;
 Form1.GroupBoxServerInfo.Left :=  10;

 if Form1.FormSizeLoadConfig = True then
   begin
    Form1.GroupBoxConfig.Visible := True;
    Form1.ButtonPanel.Visible := True;

    Form1.GroupBoxSendServerMessage.Visible := False;
    Form1.GroupBoxServerInfo.Visible := False;

    Form1.GroupBoxConfig.Top := 10;
    Form1.ButtonPanel.Top := Form1.GroupBoxConfig.Top*2 + Form1.GroupBoxConfig.Height;

    Form1.GroupBoxServerInfo.Top := Form1.ButtonPanel.Top + Form1.ButtonPanel.Height;

    Form1.ClientHeight := Form1.GroupBoxConfig.Top*2  + Form1.GroupBoxConfig.Height + Form1.ButtonPanel.Height + + 10;
    Form1.ClientWidth :=  Form1.GroupBoxConfig.Left*2 + Form1.GroupBoxConfig.Width ;
   end
 else if Form1.FormSizeLoadServerStarted = True then
  begin
    Form1.GroupBoxConfig.Visible := False;

    Form1.ButtonPanel.Visible := True;
    Form1.GroupBoxServerInfo.Visible := True;
    Form1.GroupBoxSendServerMessage.Visible := True;

    Form1.ButtonPanel.Top := 10;
    Form1.GroupBoxSendServerMessage.Top := Form1.ButtonPanel.Top + Form1.ButtonPanel.Height;
    Form1.GroupBoxServerInfo.Top := Form1.GroupBoxSendServerMessage.Top + Form1.GroupBoxSendServerMessage.Height ;

    Form1.ClientHeight := Form1.GroupBoxServerInfo.Top + Form1.GroupBoxServerInfo.Height + 10;
    Form1.ClientWidth :=  Form1.GroupBoxSendServerMessage.Left*2 + Form1.ButtonPanel.Width ;
   end

  else
  Form1.GroupBoxServerInfo.Visible := True;
  end;

procedure LoadConfig();
begin
  if Form1.ConfigLoaded = True Then
   begin
    Form1.ButtonStartServer.Enabled := True;
    Form1.ButtonStopServer.Enabled := False;
   end
 else
  begin
   Form1.ButtonStartServer.Enabled := False;
   Form1.ButtonStopServer.Enabled := False;
  end
 end;

procedure SecureVAC();
begin
 if Form1.CheckBoxSecure.Checked = True then
  begin
   Form1.SecureValue := 1;
   Form1.LSecure.Caption := IntToStr(Form1.SecureValue)+' (On)';
   Form1.LSecure.Font.Color := clGreen;
   Form1.Secure := False;
  end
 else
  begin
   Form1.SecureValue := 0;
   Form1.LSecure.Caption := IntToStr(Form1.SecureValue)+' (OFF)';
   Form1.LSecure.Font.Color := clRed;
   Form1.Secure := True;
  end;
end;

procedure AllowUpNp();
begin
 if Form1.CheckBoxUpNp.Checked = True then
  begin
   Form1.UpNpValue := 1;
   Form1.LUpNp.Caption := IntToStr(Form1.UpNpValue)+' (Allow)';
   Form1.LUpNp.Font.Color := clGreen;
  end
 else
  begin
   Form1.UpNpValue := 0;
   Form1.LUpNp.Caption := IntToStr(Form1.UpNpValue)+' (Reject)';
   Form1.LUpNp.Font.Color := clRed;
  end;
end;

procedure World();
begin
 if Form1.CheckBoxWorld.Checked = False then
  begin
   Form1.EWorld.Enabled := False;
   Form1.CheckBoxWorld.Font.Color := clRed;
   //Form1.CheckWorld := True;
   Form1.CheckWorldParam := '#';
  end
 else
  begin
   Form1.EWorld.Enabled := True;
   Form1.CheckBoxWorld.Font.Color := clGreen;
   //Form1.CheckWorld := False;
   Form1.CheckWorldParam := '';
 end;
end;

procedure Password();
begin
 if Form1.CheckBoxPassword.Checked = False then
  begin
   Form1.EPassword.Enabled := False;
   Form1.CheckBoxPassword.Font.Color := clRed;
   Form1.CheckPasswordParam := '#';
  end
 else
  begin
   Form1.EPassword.Enabled := True;
   Form1.CheckBoxPassword.Font.Color := clGreen;
   Form1.CheckPasswordParam := '';
 end;
end;

procedure Port();
begin
 if Form1.CheckBoxPort.Checked = False then
  begin
   Form1.EPort.Enabled := False;
   Form1.CheckBoxPort.Font.Color := clRed;
   //Form1.CheckPort := True;
   Form1.CheckPortParam := '#';
  end
 else
  begin
   Form1.EPort.Enabled := True;
   Form1.CheckBoxPort.Font.Color := clGreen;
   //Form1.CheckPort := False;
   Form1.CheckPortParam := '';
 end;
end;


procedure MaxPlayers();
begin
 if Form1.CheckBoxMaxPlayers.Checked = False then
  begin
   Form1.EMaxPlayers.Enabled := False;
   Form1.CheckBoxMaxPlayers.Font.Color := clRed;
   Form1.CheckMaxPlayers := True;
   Form1.CheckMaxPlayersParam := '#';
  end
 else
  begin
   Form1.EMaxPlayers.Enabled := True;
   Form1.CheckBoxMaxPlayers.Font.Color := clGreen;
   Form1.CheckMaxPlayers := False;
   Form1.CheckMaxPlayersParam := '';
 end;
end;

procedure MOTD();
begin
 if Form1.CheckBoxmotd.Checked = False then
  begin
   Form1.Emotd.Enabled := False;
   Form1.CheckBoxmotd.Font.Color := clRed;
   Form1.CheckMOTDParam := '#';
  end
 else
  begin
   Form1.Emotd.Enabled := True;
   Form1.CheckBoxmotd.Font.Color := clGreen;
   Form1.CheckMOTDParam := '';
 end;
end;

procedure Language();
begin
 if Form1.CheckBoxLanguage.Checked = False then
  begin
   Form1.ELanguage.Enabled := False;
   Form1.CheckBoxLanguage.Font.Color := clRed;
   Form1.CheckLanguageParam :='#';
  end
 else
  begin
   Form1.ELanguage.Enabled := True;
   Form1.CheckBoxLanguage.Font.Color := clGreen;
   Form1.CheckLanguageParam :='';
 end;
end;

procedure Priority();
begin
 if Form1.CheckBoxPriority.Checked = False then
  begin
   Form1.EPriority.Enabled := False;
   Form1.CheckBoxPriority.Font.Color := clRed;
   Form1.CheckPriorityParam :='#';
  end
 else
  begin
   Form1.EPriority.Enabled := True;
   Form1.CheckBoxPriority.Font.Color := clGreen;
   Form1.CheckPriorityParam :='';
 end;
end;

procedure AutoCreateMap();
begin
 if Form1.CheckBoxAutoCreate.Checked = False then
  begin
   Form1.EAutoCreate.Enabled := False;
   Form1.CheckBoxAutoCreate.Font.Color := clRed;
   Form1.CheckAutoCreateParam := '#';
  end
 else
  begin
   Form1.EAutoCreate.Enabled := True;
   Form1.CheckBoxAutoCreate.Font.Color := clGreen;
    Form1.CheckAutoCreateParam := '';
  end
 end;

procedure AutoCreatedWorldName();
begin
 if Form1.CheckBoxAutoCreatedWorldName.Checked = False then
  begin
   Form1.EAutoCreatedWorldName.Enabled := False;
   Form1.CheckBoxAutoCreatedWorldName.Font.Color := clRed;
   Form1.CheckWorldNameParam := '#';
  end
 else
  begin
   Form1.EAutoCreatedWorldName.Enabled := True;
   Form1.CheckBoxAutoCreatedWorldName.Font.Color := clGreen;
   Form1.CheckWorldNameParam := '';
  end
 end;

procedure npcStream();
begin
 if Form1.CheckBoxnpcStream.Checked = False then
  begin
   Form1.EnpcStream.Enabled := False;
   Form1.CheckBoxnpcStream.Font.Color := clRed;
   Form1.CheckNPCSteamParam := '#';
  end
 else
  begin
   Form1.EnpcStream.Enabled := True;
   Form1.CheckBoxnpcStream.Font.Color := clGreen;
   Form1.CheckNPCSteamParam := '';
  end
 end;

procedure TForm1.FormCreate(Sender: TObject);
 begin
  FormSizeLoadConfig := True;
  FormSize();
  AutoCreateMap();
  LoadConfig();
  AutoCreatedWorldName();
  World();
  Password();
  Port();
  MaxPlayers();
  MOTD();
  Language();
  SecureVAC();
  Priority();
  AllowUpNp();
  npcStream();

  ButtonStartServer.Enabled := False;
  ButtonStopServer.Enabled := False;

  Path := ExtractFilePath(ParamStr(0));
  PathWorld := Path+'worlds\';


  EConfigName.Visible := False;
  LConfigName.Visible := False;


  CheckBoxWorld.Checked := True;
  CheckBoxPassword.Checked := True;
  CheckBoxPort.Checked := True;
  CheckBoxMaxPlayers.Checked := True;
  CheckBoxAutoCreate.Checked := False;
  CheckBoxAutoCreatedWorldName.Checked := False;
  CheckBoxSecure.Checked := True;
  CheckBoxLanguage.Checked :=True;
  CheckBoxmotd.Checked := True;
  CheckBoxPriority.Checked := True;
  CheckBoxUpNp.Checked := True;
  CheckBoxnpcStream.Checked := True;


  LConfigName.Caption := 'Config Name:';
  LWorld.Caption := 'World:';
  LPassword.Caption := 'Password:';
  LPort.Caption := 'Port: Default 7777';
  LLanguage.Caption := 'Language:';
  LLanguage1.Caption := '1 (English)';
  LLanguage2.Caption := '2 (German)';
  LLanguage3.Caption := '3 (Italian)';
  LLanguage4.Caption := '4 (French)';
  LLanguage5.Caption := '5 (Spanish)';
  LMaxPlayers.Caption := 'MaxPlayers: 1-8';
  Lmotd.Caption := 'MOTD:';
  LAutoCreate.Caption := 'World Size:';
  LAutoCreate2.Caption := '1 (Small)';
  LAutoCreate3.Caption := '2 (Medium)';
  LAutoCreate4.Caption := '3 (Large)';
  LAutoCreatedWorldName.Caption := 'Auto Created World Name:';
  LSecure.Caption := IntToStr(SecureValue)+' (On)';
  LPriority.Caption := 'Priority:';
  LPriority0.Caption := '0 (Realtime)';
  LPriority1.Caption := '1 (High)';
  LPriority2.Caption := '2 (Above Normal)';
  LPriority3.Caption := '3 (Normal)';
  LPriority4.Caption := '4 (Below Normal)';
  LPriority5.Caption := '5 (Idle)';
  LnpcStream.Caption := 'NPC Stream: 0-60 ,0=(OFF)';

  EConfigName.Text := 'serverconfig';
  EMaxPlayers.Text := '8';
  EAutoCreate.Text := '3';
  EWorld.Text := 'World1';
  ELanguage.Text := '1';
  EPort.Text := '7777';
  EPassword.Text := '';
  EPriority.Text := '1';
  EAutoCreatedWorldName.Text := 'AutoCreatedWorldName';
  EnpcStream.Text := '60';
  Emotd.Text := 'Message of the day!';


  
 end;

procedure TForm1.ButtonLoadConfigClick(Sender: TObject);
begin
 if FileExists(Path+EConfigName.Text+'.txt') then
  begin
   ShowMessage(EConfigName.Text+'.txt exist!');
   AssignFile(ConfigFile, Path+EConfigName.Text+'.txt');
   Rewrite(ConfigFile);
   WriteLn(ConfigFile, ('#config '+EConfigName.Text));
   WriteLn(ConfigFile, (CheckMaxPlayersParam+'maxplayers='+EMaxPlayers.Text));
   WriteLn(ConfigFile, (CheckWorldParam+'world='+PathWorld+EWorld.Text+'.wld'));
   WriteLn(ConfigFile, (CheckWorldPathParam+'worldpath='+PathWorld));
   WriteLn(ConfigFile, (CheckPortParam+'port='+EPort.Text));
   WriteLn(ConfigFile, (CheckPasswordParam+'password='+EPassword.Text));
   WriteLn(ConfigFile, (CheckAutoCreateParam+'autocreate='+EAutoCreate.Text));
   WriteLn(ConfigFile, (CheckWorldNameParam+'worldname='+EAutoCreatedWorldName.Text));
   WriteLn(ConfigFile, (CheckMOTDParam+'motd='+Emotd.Text));
   WriteLn(ConfigFile, (CheckSecureParam+'secure='+IntToStr(SecureValue)));
   WriteLn(ConfigFile, (CheckLanguageParam+'lang='+ELanguage.Text));
   WriteLn(ConfigFile, (ChackUPNPParam+'upnp='+IntToStr(UpNpValue)));
   WriteLn(ConfigFile, (CheckNPCSteamParam+'npcstream='+EnpcStream.Text));
   WriteLn(ConfigFile, (CheckPriorityParam+'priority='+ EPriority.Text));
   CloseFile(ConfigFile);
   ConfigLoaded := True;
   FormSize();
  end
 else
  begin
   ShowMessage(EConfigName.Text+'.txt not found! Creating file!');
   AssignFile(ConfigFile, Path+EConfigName.Text+'.txt');
   Rewrite(ConfigFile);
   CloseFile(ConfigFile);
   ConfigLoaded := False;
   FormSize();
 end;
 LoadConfig()
end;

procedure TForm1.ButtonStartServerClick(Sender: TObject);
 var
  filename :PChar;
  parameters :PAnsiChar;
 begin
  filename := 'TerrariaServer.exe';
  parameters := '-config serverconfig.txt';
  ShellExecute(ServerHandle,'RunAs',PChar(Path+filename), PChar(parameters),'',SW_SHOWNORMAL);
  ButtonStopServer.Enabled := True;
  ButtonStartServer.Enabled := False;
  ButtonLoadConfig.Enabled := False;
  GroupBoxSendServerMessage.Enabled := True;
  FormSizeLoadServerStarted := True;
  FormSizeLoadConfig := False;
  FormSize();
  ServerUpTime();

 end;


procedure TForm1.ButtonSendServerCommandClick(Sender: TObject);
 var
  theHandle: THandle;
  s:string;
  i:integer;
 begin
  theHandle := HWndGet('Terraria Server');
  if theHandle <> 0 then

    s := ESendServerCommand.Text;
    for i := 1 to Length(s) do
    SendMessage(theHandle, WM_CHAR, Word(s[i]), 0);
    PostMessage(theHandle, WM_KEYDOWN, VK_RETURN, 0);
  end;

procedure TForm1.CheckBoxAutoCreateClick(Sender: TObject);
begin
 AutoCreateMap();
end;

procedure TForm1.CheckBoxAutoCreatedWorldNameClick(Sender: TObject);
begin
AutoCreatedWorldName();
end;

procedure TForm1.CheckBoxWorldClick(Sender: TObject);
begin
World();
end;

procedure TForm1.CheckBoxPasswordClick(Sender: TObject);
begin
Password();
end;

procedure TForm1.CheckBoxPortClick(Sender: TObject);
begin
Port();
end;

procedure TForm1.CheckBoxMaxPlayersClick(Sender: TObject);
begin
MaxPlayers();
end;

procedure TForm1.CheckBoxmotdClick(Sender: TObject);
begin
MOTD();
end;

procedure TForm1.CheckBoxLanguageClick(Sender: TObject);
begin
Language();
end;

procedure TForm1.CheckBoxSecureClick(Sender: TObject);
begin
SecureVAC();
end;

procedure TForm1.CheckBoxPriorityClick(Sender: TObject);
begin
Priority();
end;

procedure TForm1.CheckBoxUpNpClick(Sender: TObject);
begin
AllowUpNp();
end;

procedure TForm1.CheckBoxnpcStreamClick(Sender: TObject);
begin
npcStream();
end;

procedure TForm1.ButtonStopServerClick(Sender: TObject);
 var
  s:string;
  i:integer;
  theHandle: hwnd;
 begin
  theHandle := HWndGet('Terraria Server: '+EWorld.Text);
  ButtonStopServer.Enabled := False;
  FormSizeLoadServerStarted := False;
  FormSizeLoadConfig := True;
  GroupBoxSendServerMessage.Enabled := False;
  FormSize();
  ServerUpTime();
  if theHandle <> 0 then
    s := 'exit';
    for i := 1 to Length(s) do
    SendMessage(theHandle, WM_CHAR, Word(s[i]), 0);
    PostMessage(theHandle, WM_KEYDOWN, VK_RETURN, 0);

 end;

procedure TForm1.EWorldChange(Sender: TObject);
begin
EAutoCreatedWorldName.Text := EWorld.Text;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  CurTime : TDateTime;
  s, t :String;
begin
  CurTime := Now ;
  s :=  TimeToStr(ServerStartTime) ;
  t := TimeToStr(CurTime-ServerStartTime);
  Label3.Caption := 'Server Started: '+s;
  Label4.Caption := 'Server up Time: '+t;
end;

procedure TForm1.ShowTrayIcon;
  begin
    if not FIconShown then
    begin
      with FTrayIconData do
      begin
        uID := 1;
        Wnd := Handle;
        cbSize := SizeOf(FTrayIconData);
        hIcon := Application.Icon.Handle;
        uCallbackMessage := WM_ICONRESPONSE;
        uFlags := NIF_TIP + NIF_MESSAGE + NIF_ICON;
        StrPCopy(szTip, 'Here is your system tray icon, at your service!');
      end;
      Shell_NotifyIcon(NIM_ADD, @FTrayIconData);
      FIconShown := True;
    end;
  end;

procedure TForm1.HideTrayIcon;
  begin
    if FIconShown then
    begin
      Shell_NotifyIcon(NIM_DELETE, @FTrayIconData);
      FIconShown := False;
    end;
  end;

procedure TForm1.Hide(Sender: TObject);
  begin
     if FIconShown then
      begin
      HideTrayIcon;
      end
    else
     begin
      ShowTrayIcon;
      Form1.Visible := false;
     end
  end;



procedure TForm1.IconResponse(var Msg: TMessage);
  var
   pt: TPoint;
  begin
    case Msg.lParam of
      WM_LBUTTONDOWN:
      begin
        Form1.Visible := True;
        HideTrayIcon;
      end;
      WM_RBUTTONDOWN:
      begin
       // GetCursorPos(pt);
       // pmRightClick.Popup(pt.x, pt.y);
      end;
    end;
  end;

procedure TForm1.FormDestroy(Sender: TObject);
  begin
    HideTrayIcon;
  end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if FIconShown then
      begin
      HideTrayIcon;
      end
    else
     begin
      ShowTrayIcon;
      Form1.Visible := false;
     end
end;

end.
