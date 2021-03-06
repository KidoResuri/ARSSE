object Settings1: TSettings1
  Left = 353
  Top = 149
  BorderStyle = bsDialog
  Caption = 'Configuration of Localhost'
  ClientHeight = 428
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 464
    Height = 428
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'General'
      object LocalSettings: TGroupBox
        Left = 0
        Top = 136
        Width = 457
        Height = 201
        Caption = 'Server-Specific Settings'
        TabOrder = 0
        object Label3: TLabel
          Left = 272
          Top = 113
          Width = 43
          Height = 13
          Caption = 'seconds:'
        end
        object savepass: TCheckBox
          Left = 8
          Top = 16
          Width = 129
          Height = 17
          Caption = 'save server password'
          TabOrder = 0
        end
        object savelog: TCheckBox
          Left = 8
          Top = 32
          Width = 361
          Height = 17
          Caption = 'save message log'
          TabOrder = 1
        end
        object hideRegistered: TCheckBox
          Left = 8
          Top = 48
          Width = 193
          Height = 17
          Caption = 'hide "Registering Server" messages'
          TabOrder = 3
        end
        object hideKills: TCheckBox
          Left = 8
          Top = 64
          Width = 113
          Height = 17
          Caption = 'hide kill messages'
          TabOrder = 4
        end
        object autoswap: TCheckBox
          Left = 8
          Top = 80
          Width = 265
          Height = 17
          Caption = 'automatically swap teams after every map change'
          TabOrder = 5
        end
        object autobalance: TCheckBox
          Left = 8
          Top = 96
          Width = 273
          Height = 17
          Caption = 'automatically balance teams if difference is more than'
          TabOrder = 6
        end
        object balancediff: TEdit
          Left = 280
          Top = 92
          Width = 20
          Height = 21
          TabOrder = 7
          Text = '2'
        end
        object AutoMsgTime: TEdit
          Left = 240
          Top = 113
          Width = 25
          Height = 21
          TabOrder = 9
          Text = '60'
        end
        object autosay: TCheckBox
          Left = 8
          Top = 112
          Width = 225
          Height = 17
          Caption = 'automatically send server message(s) every'
          TabOrder = 8
        end
        object AutoMsgList: TMemo
          Left = 32
          Top = 136
          Width = 393
          Height = 49
          ScrollBars = ssVertical
          TabOrder = 10
          OnKeyDown = FormKeyDown
        end
        object OpenLogs: TButton
          Left = 368
          Top = 32
          Width = 83
          Height = 17
          Caption = 'open logs folder'
          TabOrder = 2
          OnClick = OpenLogsClick
        end
      end
      object GlobalSettings: TGroupBox
        Left = 0
        Top = 0
        Width = 457
        Height = 129
        Caption = 'Global Settings'
        TabOrder = 1
        object Label1: TLabel
          Left = 196
          Top = 18
          Width = 43
          Height = 13
          Caption = 'seconds.'
        end
        object Label26: TLabel
          Left = 8
          Top = 98
          Width = 85
          Height = 13
          Caption = 'Admin chat name:'
        end
        object Auto: TCheckBox
          Left = 8
          Top = 16
          Width = 153
          Height = 17
          Caption = 'automatically refresh every'
          TabOrder = 0
        end
        object mintotray: TCheckBox
          Left = 8
          Top = 32
          Width = 137
          Height = 17
          Caption = 'minimize to system tray'
          TabOrder = 2
        end
        object sortrefresh: TCheckBox
          Left = 8
          Top = 64
          Width = 161
          Height = 17
          Caption = 'automatically sort on refresh'
          TabOrder = 4
        end
        object refresh: TEdit
          Left = 160
          Top = 16
          Width = 33
          Height = 21
          TabOrder = 1
          OnKeyDown = FormKeyDown
        end
        object autoupdate: TCheckBox
          Left = 8
          Top = 80
          Width = 201
          Height = 17
          Caption = 'automatically check for updates every'
          TabOrder = 5
        end
        object ManualUpdate: TButton
          Left = 312
          Top = 80
          Width = 113
          Height = 17
          Caption = 'check updates now'
          TabOrder = 7
        end
        object updatefreq: TComboBox
          Left = 216
          Top = 77
          Width = 73
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 6
          Text = 'month'
          Items.Strings = (
            'month'
            'week'
            'day')
        end
        object PlayersOnTab: TCheckBox
          Left = 8
          Top = 48
          Width = 249
          Height = 17
          Caption = 'show player numbers on tabs while connected'
          TabOrder = 3
        end
        object AdminName: TEdit
          Left = 96
          Top = 96
          Width = 113
          Height = 21
          TabOrder = 8
          OnKeyDown = FormKeyDown
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'IRC'
      ImageIndex = 3
      object Label11: TLabel
        Left = 48
        Top = 4
        Width = 55
        Height = 13
        Caption = 'IRC Server:'
      end
      object Label12: TLabel
        Left = 272
        Top = 4
        Width = 22
        Height = 13
        Caption = 'Port:'
      end
      object Label13: TLabel
        Left = 48
        Top = 29
        Width = 51
        Height = 13
        Caption = 'Nickname:'
      end
      object Label14: TLabel
        Left = 56
        Top = 77
        Width = 42
        Height = 13
        Caption = 'Channel:'
      end
      object Label15: TLabel
        Left = 34
        Top = 101
        Width = 63
        Height = 13
        Caption = 'Channel Key:'
      end
      object Label17: TLabel
        Left = 16
        Top = 221
        Width = 82
        Height = 13
        Caption = 'AUTH Password:'
      end
      object Label16: TLabel
        Left = 16
        Top = 197
        Width = 84
        Height = 13
        Caption = 'AUTH Username:'
      end
      object Label6: TLabel
        Left = 48
        Top = 53
        Width = 53
        Height = 13
        Caption = 'Alternative:'
      end
      object Label7: TLabel
        Left = 48
        Top = 150
        Width = 52
        Height = 13
        Caption = 'AUTH Bot:'
      end
      object Label19: TLabel
        Left = 272
        Top = 77
        Width = 78
        Height = 13
        Caption = 'Command prefix:'
      end
      object Label8: TLabel
        Left = 16
        Top = 174
        Width = 83
        Height = 13
        Caption = 'AUTH Command:'
      end
      object IRCServer: TEdit
        Left = 104
        Top = 0
        Width = 165
        Height = 21
        TabOrder = 0
        OnKeyDown = FormKeyDown
      end
      object IRCPort: TEdit
        Left = 301
        Top = 0
        Width = 35
        Height = 21
        TabOrder = 1
        Text = '6667'
        OnKeyDown = FormKeyDown
      end
      object IRCNick: TEdit
        Left = 104
        Top = 25
        Width = 165
        Height = 21
        TabOrder = 2
        OnKeyDown = FormKeyDown
      end
      object IRCChannel: TEdit
        Left = 104
        Top = 73
        Width = 165
        Height = 21
        TabOrder = 4
        OnKeyDown = FormKeyDown
      end
      object IRCKey: TEdit
        Left = 104
        Top = 97
        Width = 165
        Height = 21
        PasswordChar = '*'
        TabOrder = 6
        OnKeyDown = FormKeyDown
      end
      object QNetPass: TEdit
        Left = 104
        Top = 218
        Width = 165
        Height = 21
        PasswordChar = '*'
        TabOrder = 11
        OnKeyDown = FormKeyDown
      end
      object QNetUser: TEdit
        Left = 104
        Top = 194
        Width = 165
        Height = 21
        TabOrder = 10
        OnKeyDown = FormKeyDown
      end
      object QNetAuth: TCheckBox
        Left = 18
        Top = 125
        Width = 119
        Height = 17
        Caption = 'enable AUTH/Login'
        TabOrder = 7
      end
      object IRCAltNick: TEdit
        Left = 104
        Top = 49
        Width = 165
        Height = 21
        TabOrder = 3
        OnKeyDown = FormKeyDown
      end
      object QNetBot: TEdit
        Left = 104
        Top = 146
        Width = 165
        Height = 21
        TabOrder = 8
        OnKeyDown = FormKeyDown
      end
      object prefix: TEdit
        Left = 352
        Top = 74
        Width = 17
        Height = 21
        TabOrder = 5
        Text = '!'
        OnKeyDown = FormKeyDown
      end
      object QNetCmd: TEdit
        Left = 104
        Top = 170
        Width = 165
        Height = 21
        TabOrder = 9
        OnKeyDown = FormKeyDown
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Events'
      ImageIndex = 1
      object EventList: TListView
        Left = 0
        Top = 0
        Width = 457
        Height = 313
        Checkboxes = True
        Columns = <
          item
            Caption = 'Event'
            Width = 150
          end
          item
            Caption = 'Script file'
            Width = 289
          end>
        FlatScrollBars = True
        FullDrag = True
        GridLines = True
        Items.Data = {
          A20200001200000000000000FFFFFFFFFFFFFFFF0100000000000000064F6E4C
          6F61640000000000FFFFFFFFFFFFFFFF0100000000000000064F6E4578697400
          00000000FFFFFFFFFFFFFFFF0100000000000000094F6E436F6E6E6563740000
          000000FFFFFFFFFFFFFFFF01000000000000000C4F6E446973636F6E6E656374
          0000000000FFFFFFFFFFFFFFFF01000000000000000D4F6E4A6F696E52657175
          6573740000000000FFFFFFFFFFFFFFFF01000000000000000C4F6E506C617965
          724A6F696E0000000000FFFFFFFFFFFFFFFF01000000000000000D4F6E506C61
          7965724C656176650000000000FFFFFFFFFFFFFFFF01000000000000000D4F6E
          506C61796572537065616B187363726970745C4F6E506C61796572537065616B
          2E74787400000000FFFFFFFFFFFFFFFF01000000000000000E4F6E41646D696E
          436F6E6E6563740000000000FFFFFFFFFFFFFFFF0100000000000000114F6E41
          646D696E446973636F6E6E6563740000000000FFFFFFFFFFFFFFFF0100000000
          0000000A4F6E54696D654C6566740000000000FFFFFFFFFFFFFFFF0100000000
          000000064F6E44617461117363726970745C4F6E446174612E74787400000000
          FFFFFFFFFFFFFFFF0100000000000000094F6E526566726573680000000000FF
          FFFFFFFFFFFFFF0100000000000000084F6E4952434D73670000000000FFFFFF
          FFFFFFFFFF0100000000000000094F6E4952434A6F696E0000000000FFFFFFFF
          FFFFFFFF0100000000000000094F6E495243506172740000000000FFFFFFFFFF
          FFFFFF01000000000000000C4F6E495243436F6E6E6563740000000000FFFFFF
          FFFFFFFFFF01000000000000000F4F6E495243446973636F6E6E65637400FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
        ReadOnly = True
        RowSelect = True
        PopupMenu = EventPopup
        TabOrder = 0
        ViewStyle = vsReport
        OnDblClick = EventListDblClick
        OnMouseDown = EventListMouseDown
        OnSelectItem = EventListSelectItem
      end
      object EventDesc: TMemo
        Left = 1
        Top = 318
        Width = 448
        Height = 44
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 1
      end
      object ScriptFileEdit: TEdit
        Left = 262
        Top = 54
        Width = 121
        Height = 18
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        TabOrder = 2
        Text = 'ScriptFileEdit'
        Visible = False
        OnExit = ScriptFileEditExit
        OnKeyDown = FormKeyDown
        OnKeyPress = ScriptFileEditKeyPress
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Timers'
      ImageIndex = 5
      object TimerList: TListView
        Left = 0
        Top = 0
        Width = 457
        Height = 329
        Checkboxes = True
        Columns = <
          item
            Caption = 'Timer'
            MinWidth = 145
            Width = 145
          end
          item
            Caption = 'Repeat'
            MinWidth = 47
            Width = 47
          end
          item
            Caption = 'Interval'
            MinWidth = 47
            Width = 47
          end
          item
            Caption = 'Script File'
            MinWidth = 180
            Width = 180
          end>
        FlatScrollBars = True
        GridLines = True
        ReadOnly = True
        RowSelect = True
        PopupMenu = TimerPopup
        TabOrder = 0
        ViewStyle = vsReport
        OnDblClick = TimerListDblClick
        OnMouseDown = TimerListMouseDown
      end
      object AddTimer: TButton
        Left = 0
        Top = 332
        Width = 89
        Height = 21
        Caption = 'Add Timer'
        TabOrder = 1
        OnClick = AddTimerClick
      end
      object EditTimer: TButton
        Left = 200
        Top = 332
        Width = 75
        Height = 21
        Caption = 'Edit Timer'
        TabOrder = 3
        OnClick = EditTimerClick
      end
      object DeleteTimer: TButton
        Left = 104
        Top = 332
        Width = 81
        Height = 21
        Caption = 'Delete Timer'
        TabOrder = 2
        OnClick = DeleteTimerClick
      end
      object TimerEdit: TEdit
        Left = 248
        Top = 48
        Width = 121
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        TabOrder = 4
        Text = 'TimerEdit'
        Visible = False
        OnExit = TimerEditExit
        OnKeyDown = FormKeyDown
        OnKeyPress = TimerEditKeyPress
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Script Editor'
      ImageIndex = 2
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 49
        Height = 13
        Caption = 'Script File:'
      end
      object Label4: TLabel
        Left = 0
        Top = 40
        Width = 70
        Height = 13
        Caption = 'Script Content:'
      end
      object Label5: TLabel
        Left = 240
        Top = 0
        Width = 122
        Height = 13
        Caption = 'Commands and Variables:'
      end
      object ScriptFile: TEdit
        Left = 0
        Top = 16
        Width = 233
        Height = 21
        TabOrder = 0
        OnKeyDown = FormKeyDown
      end
      object ScriptEditor: TRichEdit
        Left = 0
        Top = 56
        Width = 455
        Height = 287
        PlainText = True
        ScrollBars = ssBoth
        TabOrder = 3
        WantTabs = True
        WordWrap = False
        OnKeyDown = FormKeyDown
      end
      object CommandList: TComboBox
        Left = 240
        Top = 16
        Width = 177
        Height = 21
        AutoComplete = False
        DropDownCount = 25
        ItemHeight = 13
        TabOrder = 1
        Text = '/say'
        OnKeyDown = FormKeyDown
        Items.Strings = (
          '/say'
          '/shutdown'
          '/addbot'
          '/kick'
          '/kicklast'
          '/kickall '
          '/ban'
          '/banip'
          '/banname'
          '/unbanip'
          '/unbanname'
          '/map'
          '/nextmap'
          '/restart'
          '/adm'
          '/admip'
          '/unadm'
          '/respawntime'
          '/maxrespawntime'
          '/limit'
          '/timelimit'
          '/password'
          '/setteam'
          '/setteamall'
          '/spectall'
          '/swapteams'
          '/friendlyfire'
          '/vote%'
          '/bonus'
          '/maxplayers'
          '/load'
          '/loadwep '
          '/loadconf'
          '/kill'
          '/advance'
          '/realistic'
          '/survival'
          '/gamemode'
          ''
          'if '
          'endif'
          'else'
          ' = '
          ' <> '
          'write '
          'IRCmsg '
          'ADMINmsg '
          ''
          '$PLAYER_NAME'
          '$PLAYER_IP'
          '$PLAYER_NUM'
          '$PLAYER_SCORE'
          '$PLAYER_DEATHS'
          '$PLAYER_RATE'
          '$PLAYER_PING'
          '$PLAYER_IP'
          '$PLAYER_PORT'
          '$PLAYER_TEAM'
          '$SERVER_IP'
          '$SERVER_PORT'
          '$SERVER_NAME'
          '$SERVER_NUM'
          '$SERVER_COUNT'
          '$MESSAGE'
          '$TEAMCHAT'
          '$TIME_LEFT'
          '$DATA'
          '$ADMIN_IP'
          '$CLOCK'
          '$VERSION'
          '$LOGIN_SUCCESS'
          '$ALPHA_PLAYERS'
          '$BRAVO_PLAYERS'
          '$CHARLIE_PLAYERS'
          '$DELTA_PLAYERS'
          '$ALPHA_SCORE'
          '$BRAVO_SCORE'
          '$CHARLIE_SCORE'
          '$DELTA_SCORE'
          '$MAXPLAYERS'
          '$MAP'
          '$NEXTMAP')
      end
      object LoadScript: TButton
        Left = 83
        Top = 344
        Width = 86
        Height = 21
        Caption = 'Load Script'
        TabOrder = 5
        OnClick = LoadScriptClick
      end
      object InsertCmd: TButton
        Left = 419
        Top = 16
        Width = 36
        Height = 21
        Caption = 'Insert'
        TabOrder = 2
        OnClick = InsertCmdClick
      end
      object SaveScript: TButton
        Left = 0
        Top = 344
        Width = 75
        Height = 21
        Caption = 'Save Script'
        TabOrder = 4
        OnClick = SaveScriptClick
      end
      object NewScript: TButton
        Left = 176
        Top = 344
        Width = 75
        Height = 21
        Caption = 'New Script'
        TabOrder = 6
        OnClick = NewScriptClick
      end
      object ScriptHelp: TButton
        Left = 352
        Top = 344
        Width = 99
        Height = 21
        Caption = 'Documentation'
        TabOrder = 7
        OnClick = ScriptHelpClick
      end
    end
    object Colors: TTabSheet
      Caption = 'Colors'
      ImageIndex = 6
      object ItemColors: TGroupBox
        Left = 0
        Top = 0
        Width = 457
        Height = 209
        Caption = 'Colors of main console'
        TabOrder = 0
        object Label10: TLabel
          Left = 48
          Top = 20
          Width = 67
          Height = 13
          Caption = 'Main Console:'
        end
        object Label18: TLabel
          Left = 56
          Top = 44
          Width = 56
          Height = 13
          Caption = 'Normal text:'
        end
        object Label20: TLabel
          Left = 88
          Top = 68
          Width = 25
          Height = 13
          Caption = 'Chat:'
        end
        object Label21: TLabel
          Left = 64
          Top = 92
          Width = 54
          Height = 13
          Caption = 'Team chat:'
        end
        object Label22: TLabel
          Left = 64
          Top = 140
          Width = 53
          Height = 13
          Caption = 'Admin Say:'
        end
        object Label23: TLabel
          Left = 56
          Top = 116
          Width = 57
          Height = 13
          Caption = 'Muted chat:'
        end
        object Label24: TLabel
          Left = 32
          Top = 188
          Width = 82
          Height = 13
          Caption = 'Private Message:'
        end
        object Label25: TLabel
          Left = 56
          Top = 164
          Width = 57
          Height = 13
          Caption = 'Admin Chat:'
        end
        object Label28: TLabel
          Left = 272
          Top = 20
          Width = 24
          Height = 13
          Caption = 'Font:'
        end
        object mainConsole: TColorBox
          Left = 120
          Top = 16
          Width = 145
          Height = 22
          Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 0
        end
        object normalText: TColorBox
          Left = 120
          Top = 40
          Width = 145
          Height = 22
          Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 2
        end
        object Chat: TColorBox
          Left = 120
          Top = 64
          Width = 145
          Height = 22
          Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 3
        end
        object teamChat: TColorBox
          Left = 120
          Top = 88
          Width = 145
          Height = 22
          Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 4
        end
        object Say: TColorBox
          Left = 120
          Top = 136
          Width = 145
          Height = 22
          Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 6
        end
        object mutedChat: TColorBox
          Left = 120
          Top = 112
          Width = 145
          Height = 22
          Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 5
        end
        object PM: TColorBox
          Left = 120
          Top = 184
          Width = 145
          Height = 22
          Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 8
        end
        object AdminChat: TColorBox
          Left = 120
          Top = 160
          Width = 145
          Height = 22
          Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
          ItemHeight = 16
          TabOrder = 7
        end
        object FontButton: TButton
          Left = 304
          Top = 16
          Width = 145
          Height = 22
          Caption = 'Font: '
          TabOrder = 1
          OnClick = FontButtonClick
        end
      end
      object CustomColorList: TListView
        Left = 0
        Top = 210
        Width = 457
        Height = 133
        Columns = <
          item
            Caption = 'Message'
            Width = 294
          end
          item
            Caption = 'Color'
            Width = 145
          end>
        ColumnClick = False
        FlatScrollBars = True
        GridLines = True
        ReadOnly = True
        RowSelect = True
        PopupMenu = ColorPopup
        TabOrder = 1
        ViewStyle = vsReport
        OnDblClick = CustomColorListDblClick
        OnMouseDown = CustomColorListMouseDown
      end
      object AddCustomColor: TButton
        Left = 0
        Top = 344
        Width = 97
        Height = 21
        Caption = 'Add Custom Line'
        TabOrder = 2
        OnClick = AddCustomColorClick
      end
      object DeleteCustomColor: TButton
        Left = 112
        Top = 344
        Width = 113
        Height = 21
        Caption = 'Delete Custom Line'
        TabOrder = 3
        OnClick = DeleteCustomColorClick
      end
      object ColorPicker: TColorBox
        Left = 272
        Top = 232
        Width = 145
        Height = 22
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvRaised
        DropDownCount = 10
        ItemHeight = 16
        TabOrder = 4
        Visible = False
        OnChange = ColorPickerExit
        OnExit = ColorPickerExit
      end
      object LineEdit: TEdit
        Left = 272
        Top = 272
        Width = 121
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvRaised
        BorderStyle = bsNone
        TabOrder = 5
        Text = 'LineEdit'
        Visible = False
        OnExit = LineEditExit
        OnKeyDown = FormKeyDown
        OnKeyPress = LineEditKeyPress
      end
      object DefaultColors: TButton
        Left = 320
        Top = 344
        Width = 135
        Height = 21
        Caption = 'Default Colors and Font'
        TabOrder = 6
        OnClick = DefaultColorsClick
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Hotkeys'
      ImageIndex = 7
      object Label27: TLabel
        Left = 8
        Top = 0
        Width = 160
        Height = 13
        Caption = 'Current list of Hotkeys. Read-only.'
      end
      object HotkeyList: TListView
        Left = 0
        Top = 24
        Width = 457
        Height = 337
        Columns = <
          item
            Caption = 'Hotkey'
            Width = 85
          end
          item
            Caption = 'Action'
            Width = 354
          end>
        GridLines = True
        Items.Data = {
          600300000F00000000000000FFFFFFFFFFFFFFFF010000000000000006437472
          6C2B622442616E2073656C656374656420706C617965722028696E20706C6179
          6572206C6973742900000000FFFFFFFFFFFFFFFF010000000000000006437472
          6C2B6319436F6E6E65637420746F2063757272656E7420736572766572000000
          00FFFFFFFFFFFFFFFF0100000000000000064374726C2B641E446973636F6E6E
          6563742066726F6D2063757272656E742073657276657200000000FFFFFFFFFF
          FFFFFF0100000000000000064374726C2B6510546F67676C652043686174206D
          6F646500000000FFFFFFFFFFFFFFFF0100000000000000084374726C2B456E64
          185363726F6C6C20636F6E736F6C6520746F20626F74746F6D00000000FFFFFF
          FFFFFFFFFF0100000000000000094374726C2B486F6D65155363726F6C6C2063
          6F6E736F6C6520746F20746F7000000000FFFFFFFFFFFFFFFF01000000000000
          00064374726C2B6916457870616E642073657276657220696E666F2D62617200
          000000FFFFFFFFFFFFFFFF0100000000000000064374726C2B6B254B69636B20
          73656C656374656420706C617965722028696E20706C61796572206C69737429
          00000000FFFFFFFFFFFFFFFF0100000000000000064374726C2B701353657420
          7365727665722070617373776F726400000000FFFFFFFFFFFFFFFF0100000000
          0000000E4374726C2B5061676520446F776E135363726F6C6C20636F6E736F6C
          6520646F776E00000000FFFFFFFFFFFFFFFF01000000000000000C4374726C2B
          50616765205570115363726F6C6C20636F6E736F6C6520757000000000FFFFFF
          FFFFFFFFFF0100000000000000064374726C2B7225506572666F726D20736372
          697074207265636F6D70696C6520282F7265636F6D70696C652900000000FFFF
          FFFFFFFFFFFF0100000000000000064374726C2B741353656E64207365727665
          72206D65737361676500000000FFFFFFFFFFFFFFFF0100000000000000064374
          726C2B7716546F67676C652041646D696E2063686174206D6F646500000000FF
          FFFFFFFFFFFFFF0100000000000000064374726C2B7A2B53656E6420504D2074
          6F2073656C656374656420706C617965722028696E20706C61796572206C6973
          7429FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ReadOnly = True
        RowSelect = True
        SortType = stBoth
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'About'
      ImageIndex = 4
      object Label9: TLabel
        Left = 64
        Top = 8
        Width = 330
        Height = 19
        Caption = 'Advanced Remote Soldat Server Enchanter'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AboutBox: TRichEdit
        Left = 16
        Top = 40
        Width = 425
        Height = 313
        Cursor = crArrow
        TabStop = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          
            'The purpose of this project is to create the ultimate Soldat Ser' +
            'ver '
          
            'Administrator Tool. You are free to distribute it for free in an' +
            'y way.'
          'Just send me an email to let me know. If you find any kind '
          'of bug please email me. '
          'Disassembling and modifying the main executable is prohibited.'
          ''
          
            'Thanks to those who tested it and helped me to create this appli' +
            'cation.'
          
            'Special thanks to Michal Marcinkowski for releasing the source o' +
            'f the '
          'original Soldat Admin.'
          ''
          'Programmed by KeFear and Shoozza.'
          ''
          'Contact:'
          'KeFear:    E-mail/MSN:    hlaki@freemail.hu'
          'Shoozza: E-mail/Jabber: Shoozza@selfkill.com'
          ''
          'IRC: #Soldat.ARSSE @ irc.quakenet.org'
          ''
          ''
          ''
          'Copyright '#169' 2006-2008 Hars'#225'nyi L'#225'szl'#243' and Gregor Adam Cieslak')
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnMouseDown = AboutBoxMouseDown
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 396
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 248
    Top = 396
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object EventPopup: TPopupMenu
    AutoPopup = False
    Left = 8
    Top = 400
    object LoadScript1: TMenuItem
      Caption = 'Load Script'
      OnClick = LoadScript1Click
    end
    object EditScript1: TMenuItem
      Caption = 'Edit Script'
      OnClick = EditScript1Click
    end
    object ClearScript1: TMenuItem
      Caption = 'Clear Script'
      OnClick = ClearScript1Click
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '.txt'
    Left = 40
    Top = 400
  end
  object SaveDialog: TSaveDialog
    Left = 72
    Top = 400
  end
  object TimerPopup: TPopupMenu
    AutoPopup = False
    Left = 348
    Top = 395
    object NewTimer1: TMenuItem
      Caption = 'New Timer'
      OnClick = AddTimerClick
    end
    object DeleteTimer1: TMenuItem
      Caption = 'Delete Timer'
      OnClick = DeleteTimerClick
    end
    object EditScript2: TMenuItem
      Caption = 'Edit Script'
      OnClick = EditTimerClick
    end
    object LoadScriptfromfile1: TMenuItem
      Caption = 'Load Script'
      OnClick = LoadScriptfromfile1Click
    end
  end
  object ColorPopup: TPopupMenu
    AutoPopup = False
    Left = 388
    Top = 395
    object NewColorLine1: TMenuItem
      Caption = 'Add Line'
      OnClick = AddCustomColorClick
    end
    object DeleteLine1: TMenuItem
      Caption = 'Delete Line'
      OnClick = DeleteCustomColorClick
    end
    object EditText1: TMenuItem
      Caption = 'Edit Text'
      Enabled = False
    end
    object ModifyColod1: TMenuItem
      Caption = 'Modify Color'
      Enabled = False
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 428
    Top = 395
  end
end
