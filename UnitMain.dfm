object FMainForm: TFMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Chess'
  ClientHeight = 811
  ClientWidth = 1384
  Color = clBtnFace
  Constraints.MinHeight = 850
  Constraints.MinWidth = 1400
  DoubleBuffered = True
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseDown = FormMouseDown
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 21
  object TKillLabel: TLabel
    Left = 728
    Top = 0
    Width = 96
    Height = 21
    Alignment = taCenter
    Caption = 'Killed Pieces'
  end
  object TIconsRadioGroup: TRadioGroup
    Left = 0
    Top = 706
    Width = 1384
    Height = 105
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Icons of chess pieces:'
    Columns = 8
    Items.Strings = (
      'standard'
      'metal'
      'fantasy'
      'kingdom'
      'cardinal'
      'dilena'
      'symmetric'
      'spatial')
    TabOrder = 0
    OnClick = TIconsRadioGroupClick
  end
  object TLogMemo: TMemo
    Left = 1084
    Top = 0
    Width = 300
    Height = 706
    TabStop = False
    Align = alRight
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdLeftToRight
    BorderStyle = bsNone
    Color = clBtnFace
    ParentBiDiMode = False
    PopupMenu = TEmptyPopupMenu
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object TEmptyPopupMenu: TPopupMenu
    Left = 488
    Top = 408
  end
  object Menu: TMainMenu
    Left = 736
    Top = 440
    object C1: TMenuItem
      Caption = 'Game'
      object Sound: TMenuItem
        Caption = 'Sound'
        Checked = True
        OnClick = SoundClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Reverse: TMenuItem
        Caption = 'Reverse the Board'
        OnClick = ReverseClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Reset: TMenuItem
        Caption = 'Reset Game'
        OnClick = ResetClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object ExitGame: TMenuItem
        Caption = 'Exit'
        ShortCut = 27
        OnClick = ExitGameClick
      end
    end
    object F1: TMenuItem
      Caption = 'File'
      object TSaveLog: TMenuItem
        Caption = 'Save Log'
        ShortCut = 16460
        OnClick = TSaveLogClick
      end
      object SaveGame: TMenuItem
        Break = mbBreak
        Caption = 'Save Game'
        ShortCut = 16467
        OnClick = SaveGameClick
      end
      object LoadGame: TMenuItem
        Break = mbBreak
        Caption = 'Load Game'
        ShortCut = 16463
        OnClick = LoadGameClick
      end
    end
    object H1: TMenuItem
      Caption = 'Help'
      object About: TMenuItem
        Caption = 'About'
        ShortCut = 113
        OnClick = AboutClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Guide: TMenuItem
        Caption = 'How to play'
        ShortCut = 112
        OnClick = GuideClick
      end
    end
  end
  object OpenGame: TOpenDialog
    Filter = #1060#1072#1081#1083'|*.dat'
    Left = 688
    Top = 496
  end
  object SaveFile: TSaveDialog
    Filter = #1060#1072#1081#1083'|*.txt'
    Left = 592
    Top = 488
  end
  object SaveParty: TSaveDialog
    Filter = #1060#1072#1081#1083'|*.dat'
    Left = 552
    Top = 416
  end
end
