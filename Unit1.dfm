object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sSpeedButton1: TsSpeedButton
    Left = 554
    Top = 24
    Width = 23
    Height = 22
    OnClick = sSpeedButton1Click
  end
  object Button1: TButton
    Left = 8
    Top = 363
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 24
    Width = 201
    Height = 21
    EditLabel.Width = 66
    EditLabel.Height = 13
    EditLabel.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1080
    TabOrder = 1
  end
  object LabeledEdit2: TLabeledEdit
    Left = 8
    Top = 66
    Width = 201
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = #1040#1083#1100#1073#1086#1084
    TabOrder = 2
  end
  object LabeledEdit3: TLabeledEdit
    Left = 8
    Top = 101
    Width = 201
    Height = 21
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    TabOrder = 3
  end
  object LabeledEdit4: TLabeledEdit
    Left = 8
    Top = 136
    Width = 201
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = #1043#1086#1076
    TabOrder = 4
  end
  object LabeledEdit5: TLabeledEdit
    Left = 8
    Top = 170
    Width = 201
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = #1046#1072#1085#1088
    TabOrder = 5
  end
  object LabeledEdit6: TLabeledEdit
    Left = 8
    Top = 208
    Width = 201
    Height = 21
    EditLabel.Width = 67
    EditLabel.Height = 13
    EditLabel.Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
    TabOrder = 6
  end
  object LabeledEdit7: TLabeledEdit
    Left = 8
    Top = 248
    Width = 201
    Height = 21
    EditLabel.Width = 23
    EditLabel.Height = 13
    EditLabel.Caption = #1058#1088#1101#1082
    TabOrder = 7
  end
  object LabeledEdit8: TLabeledEdit
    Left = 8
    Top = 296
    Width = 201
    Height = 21
    EditLabel.Width = 41
    EditLabel.Height = 13
    EditLabel.Caption = #1056#1077#1081#1090#1080#1085#1075
    TabOrder = 8
  end
  object LabeledEdit9: TLabeledEdit
    Left = 8
    Top = 336
    Width = 201
    Height = 21
    EditLabel.Width = 29
    EditLabel.Height = 13
    EditLabel.Caption = #1058#1077#1082#1089#1090
    TabOrder = 9
  end
  object Memo1: TMemo
    Left = 213
    Top = 248
    Width = 362
    Height = 110
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 10
  end
  object flb: TFileListBox
    Left = 215
    Top = 24
    Width = 333
    Height = 209
    ItemHeight = 13
    Mask = '*.mp3'
    TabOrder = 11
    OnClick = flbClick
  end
  object Button2: TButton
    Left = 471
    Top = 362
    Width = 106
    Height = 50
    Caption = #1047#1072#1084#1077#1085#1080#1090#1100' '
    TabOrder = 12
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 318
    Top = 364
    Width = 147
    Height = 21
    TabOrder = 13
  end
  object cb: TComboBox
    Left = 318
    Top = 391
    Width = 147
    Height = 21
    Style = csDropDownList
    ItemIndex = 1
    TabOrder = 14
    Text = #1040#1083#1100#1073#1086#1084
    Items.Strings = (
      #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1080
      #1040#1083#1100#1073#1086#1084
      #1053#1072#1079#1074#1072#1085#1080#1077
      #1043#1086#1076
      #1046#1072#1085#1088
      #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100' '#1072#1083#1100#1073#1086#1084#1072
      #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      #1056#1077#1081#1090#1080#1085#1075
      #1058#1077#1082#1089#1090)
  end
  object Button3: TButton
    Left = 89
    Top = 363
    Width = 223
    Height = 49
    Hint = #1056#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100' '#1087#1086' '#1077#1084#1091#1083#1095#1072#1085#1080#1102' " - ". '#1045#1075#1086' '#1084#1086#1078#1085#1086' '#1085#1072#1087#1080#1089#1072#1090#1100' '#1074' '#1087#1086#1083#1077' '#1087#1088#1072#1074#1077#1077
    Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1080' '#1072#1074#1090#1086#1088#1086#1074#13#10#1087#1086' '#1080#1084#1077#1085#1080' '#1092#1072#1081#1083#1072
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    WordWrap = True
    OnClick = Button3Click
  end
  object CheckBox1: TCheckBox
    Left = 89
    Top = 418
    Width = 223
    Height = 17
    Caption = #1055#1077#1088#1072#1079#1072#1087#1080#1089#1099#1074#1072#1090#1100' '#1089#1091#1097#1077#1089#1090#1091#1102#1097#1080#1077
    TabOrder = 16
  end
  object od: TOpenDialog
    Filter = 'mp3|*.mp3'
    Left = 128
  end
end
