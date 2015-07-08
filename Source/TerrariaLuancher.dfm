object Form1: TForm1
  Left = 227
  Top = 141
  BorderStyle = bsToolWindow
  Caption = 'Form1'
  ClientHeight = 766
  ClientWidth = 340
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxConfig: TGroupBox
    Left = 10
    Top = 10
    Width = 320
    Height = 375
    Align = alCustom
    Caption = 'Config'
    Color = clMedGray
    DragKind = dkDock
    ParentColor = False
    TabOrder = 0
    object LWorld: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = 'LWorld'
    end
    object LPassword: TLabel
      Left = 8
      Top = 64
      Width = 52
      Height = 13
      Caption = 'LPassword'
    end
    object LPort: TLabel
      Left = 208
      Top = 16
      Width = 25
      Height = 13
      Caption = 'LPort'
    end
    object LLanguage: TLabel
      Left = 8
      Top = 184
      Width = 54
      Height = 13
      Caption = 'LLanguage'
    end
    object LMaxPlayers: TLabel
      Left = 208
      Top = 64
      Width = 60
      Height = 13
      Caption = 'LMaxPlayers'
    end
    object Lmotd: TLabel
      Left = 8
      Top = 328
      Width = 29
      Height = 13
      Caption = 'Lmotd'
    end
    object LAutoCreate: TLabel
      Left = 144
      Top = 112
      Width = 59
      Height = 13
      Caption = 'LAutoCreate'
    end
    object LAutoCreate2: TLabel
      Left = 208
      Top = 112
      Width = 78
      Height = 13
      Caption = 'LAutoCreate2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LAutoCreate3: TLabel
      Left = 208
      Top = 128
      Width = 78
      Height = 13
      Caption = 'LAutoCreate3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LAutoCreate4: TLabel
      Left = 208
      Top = 144
      Width = 78
      Height = 13
      Caption = 'LAutoCreate4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LAutoCreatedWorldName: TLabel
      Left = 8
      Top = 112
      Width = 121
      Height = 13
      Caption = 'LAutoCreatedWorldName'
    end
    object LLanguage2: TLabel
      Left = 64
      Top = 184
      Width = 71
      Height = 13
      Caption = 'LLanguage2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LLanguage3: TLabel
      Left = 64
      Top = 200
      Width = 71
      Height = 13
      Caption = 'LLanguage3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LLanguage4: TLabel
      Left = 64
      Top = 216
      Width = 71
      Height = 13
      Caption = 'LLanguage4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LLanguage1: TLabel
      Left = 64
      Top = 168
      Width = 71
      Height = 13
      Caption = 'LLanguage1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LLanguage5: TLabel
      Left = 64
      Top = 232
      Width = 71
      Height = 13
      Caption = 'LLanguage5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LConfigName: TLabel
      Left = 56
      Top = 328
      Width = 64
      Height = 13
      Caption = 'LConfigName'
    end
    object LSecure: TLabel
      Left = 80
      Top = 296
      Width = 48
      Height = 13
      Caption = 'LSecure'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LUpNp: TLabel
      Left = 208
      Top = 296
      Width = 40
      Height = 13
      Caption = 'LUpNp'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LPriority: TLabel
      Left = 144
      Top = 184
      Width = 37
      Height = 13
      Caption = 'LPriority'
    end
    object LPriority1: TLabel
      Left = 208
      Top = 184
      Width = 54
      Height = 13
      Caption = 'LPriority1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LPriority2: TLabel
      Left = 208
      Top = 200
      Width = 54
      Height = 13
      Caption = 'LPriority2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LPriority3: TLabel
      Left = 208
      Top = 216
      Width = 54
      Height = 13
      Caption = 'LPriority3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LPriority4: TLabel
      Left = 208
      Top = 232
      Width = 54
      Height = 13
      Caption = 'LPriority4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LPriority5: TLabel
      Left = 208
      Top = 248
      Width = 54
      Height = 13
      Caption = 'LPriority5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LPriority0: TLabel
      Left = 208
      Top = 168
      Width = 54
      Height = 13
      Caption = 'LPriority0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LnpcStream: TLabel
      Left = 8
      Top = 248
      Width = 57
      Height = 13
      Caption = 'LnpcStream'
    end
    object EMaxPlayers: TEdit
      Left = 232
      Top = 80
      Width = 30
      Height = 21
      TabOrder = 0
      Text = 'EMaxPlayers'
    end
    object EWorld: TEdit
      Left = 32
      Top = 32
      Width = 150
      Height = 21
      TabOrder = 1
      Text = 'EWorld'
      OnChange = EWorldChange
    end
    object EPort: TEdit
      Left = 232
      Top = 32
      Width = 55
      Height = 21
      TabOrder = 2
      Text = 'EPort'
    end
    object EPassword: TEdit
      Left = 32
      Top = 80
      Width = 150
      Height = 21
      TabOrder = 3
      Text = 'EPassword'
    end
    object ELanguage: TEdit
      Left = 32
      Top = 200
      Width = 30
      Height = 21
      TabOrder = 4
      Text = 'ELanguage'
    end
    object EAutoCreate: TEdit
      Left = 168
      Top = 128
      Width = 30
      Height = 21
      TabOrder = 5
      Text = 'EAutoCreate'
    end
    object Emotd: TEdit
      Left = 32
      Top = 345
      Width = 273
      Height = 21
      TabOrder = 6
      Text = 'Emotd'
    end
    object EConfigName: TEdit
      Left = 72
      Top = 320
      Width = 17
      Height = 21
      Enabled = False
      TabOrder = 7
      Text = 'EConfigName'
    end
    object CheckBoxPassword: TCheckBox
      Left = 8
      Top = 80
      Width = 25
      Height = 17
      Alignment = taLeftJustify
      Caption = '#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = CheckBoxPasswordClick
    end
    object CheckBoxWorld: TCheckBox
      Left = 8
      Top = 32
      Width = 25
      Height = 17
      Alignment = taLeftJustify
      Caption = '#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = CheckBoxWorldClick
    end
    object CheckBoxPort: TCheckBox
      Left = 208
      Top = 32
      Width = 25
      Height = 17
      Alignment = taLeftJustify
      Caption = '#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = CheckBoxPortClick
    end
    object CheckBoxMaxPlayers: TCheckBox
      Left = 208
      Top = 80
      Width = 25
      Height = 17
      Alignment = taLeftJustify
      Caption = '#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = CheckBoxMaxPlayersClick
    end
    object EAutoCreatedWorldName: TEdit
      Left = 32
      Top = 128
      Width = 100
      Height = 21
      TabOrder = 12
      Text = 'EAutoCreatedWorldName'
    end
    object CheckBoxAutoCreatedWorldName: TCheckBox
      Left = 8
      Top = 128
      Width = 25
      Height = 17
      Alignment = taLeftJustify
      Caption = '#'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 13
      OnClick = CheckBoxAutoCreatedWorldNameClick
    end
    object CheckBoxAutoCreate: TCheckBox
      Left = 144
      Top = 128
      Width = 25
      Height = 17
      Alignment = taLeftJustify
      Caption = '#'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 14
      OnClick = CheckBoxAutoCreateClick
    end
    object CheckBoxLanguage: TCheckBox
      Left = 8
      Top = 200
      Width = 25
      Height = 17
      Alignment = taLeftJustify
      Caption = '#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = CheckBoxLanguageClick
    end
    object CheckBoxmotd: TCheckBox
      Left = 8
      Top = 349
      Width = 25
      Height = 17
      Alignment = taLeftJustify
      Caption = '#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnClick = CheckBoxmotdClick
    end
    object CheckBoxSecure: TCheckBox
      Left = 20
      Top = 296
      Width = 60
      Height = 17
      Caption = 'Secure: '
      TabOrder = 17
      OnClick = CheckBoxSecureClick
    end
    object CheckBoxPriority: TCheckBox
      Left = 144
      Top = 200
      Width = 25
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = '#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 18
      OnClick = CheckBoxPriorityClick
    end
    object EPriority: TEdit
      Left = 168
      Top = 200
      Width = 30
      Height = 21
      TabOrder = 19
      Text = 'EPriority'
    end
    object CheckBoxUpNp: TCheckBox
      Left = 156
      Top = 296
      Width = 60
      Height = 13
      Caption = 'UPNP: '
      TabOrder = 20
      OnClick = CheckBoxUpNpClick
    end
    object EnpcStream: TEdit
      Left = 32
      Top = 264
      Width = 30
      Height = 21
      TabOrder = 21
      Text = 'EnpcStream'
    end
    object CheckBoxnpcStream: TCheckBox
      Left = 8
      Top = 264
      Width = 25
      Height = 17
      Alignment = taLeftJustify
      Caption = '#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      OnClick = CheckBoxnpcStreamClick
    end
  end
  object GroupBoxSendServerMessage: TGroupBox
    Left = 10
    Top = 472
    Width = 320
    Height = 140
    Caption = 'Send Server Command'
    Enabled = False
    TabOrder = 1
    object ESendServerCommand: TEdit
      Left = 8
      Top = 15
      Width = 305
      Height = 21
      TabOrder = 0
      Text = 'ESendServerCommand'
    end
    object ButtonSendServerCommand: TButton
      Left = 238
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Send'
      TabOrder = 1
      OnClick = ButtonSendServerCommandClick
    end
    object ButtonMidnight: TButton
      Left = 96
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Midnight'
      TabOrder = 2
      OnClick = ButtonMidnightClick
    end
    object ButtonDusk: TButton
      Left = 8
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Dusk'
      TabOrder = 3
      OnClick = ButtonDuskClick
    end
    object ButtonNoon: TButton
      Left = 8
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Noon'
      TabOrder = 4
      OnClick = ButtonNoonClick
    end
    object ButtonSave: TButton
      Left = 96
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 5
      OnClick = ButtonSaveClick
    end
    object ButtonDawn: TButton
      Left = 8
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Dawn'
      TabOrder = 6
      OnClick = ButtonDawnClick
    end
    object ButtonSettleWatter: TButton
      Left = 96
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Settle Watter'
      TabOrder = 7
      OnClick = ButtonSettleWatterClick
    end
  end
  object ButtonPanel: TPanel
    Left = 10
    Top = 392
    Width = 320
    Height = 65
    Align = alCustom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clMedGray
    ParentBackground = True
    TabOrder = 2
    object ButtonLoadConfig: TButton
      Left = 34
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Load Config'
      TabOrder = 0
      OnClick = ButtonLoadConfigClick
    end
    object ButtonStartServer: TButton
      Left = 120
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Start Server'
      TabOrder = 1
      OnClick = ButtonStartServerClick
    end
    object ButtonStopServer: TButton
      Left = 208
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Stop Server'
      TabOrder = 2
      OnClick = ButtonStopServerClick
    end
    object ButtonHideLuancher: TButton
      Left = 235
      Top = 35
      Width = 80
      Height = 25
      Caption = 'Hide Luancher'
      TabOrder = 3
      OnClick = ButtonHideLuancherClick
    end
    object ButtonHideServer: TButton
      Left = 5
      Top = 35
      Width = 110
      Height = 25
      Caption = 'Hide Server  Window'
      TabOrder = 4
      OnClick = ButtonHideServerClick
    end
    object ButtonShowServer: TButton
      Left = 120
      Top = 35
      Width = 110
      Height = 25
      Caption = 'Show Server Window'
      TabOrder = 5
      OnClick = ButtonShowServerClick
    end
  end
  object GroupBoxServerInfo: TGroupBox
    Left = 10
    Top = 632
    Width = 320
    Height = 97
    Caption = 'Server Info'
    TabOrder = 3
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Label3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 48
      Width = 39
      Height = 13
      Caption = 'Label4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 152
      Top = 24
      Width = 39
      Height = 13
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 152
      Top = 48
      Width = 39
      Height = 13
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 304
  end
  object TimerAutoUpdate: TTimer
    Enabled = False
    OnTimer = TimerAutoUpdateTimer
    Left = 275
    Top = 65535
  end
  object PopupMenuIcon: TPopupMenu
    Left = 82
    Top = 2
    object ShowLuancher1: TMenuItem
      Caption = 'Show Luancher'
      OnClick = ShowLuancher1Click
    end
  end
end
