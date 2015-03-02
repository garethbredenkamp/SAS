object gDash: TgDash
  Left = 0
  Top = 0
  Caption = 'Dashboard'
  ClientHeight = 400
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 600
    Height = 400
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 40
    ExplicitWidth = 289
    ExplicitHeight = 193
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ExplicitWidth = 281
      ExplicitHeight = 165
    end
  end
  object SASCon: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'Port=3307'
      'Database=atr11_sas'
      'User_Name=atr11_sas'
      'Password=QzW%vTl3b,,%'
      'Server=mysql.gbes.co.za')
    Connected = True
    LoginPrompt = False
    Left = 152
    Top = 280
  end
  object usrQ: TFDQuery
    Active = True
    Connection = SASCon
    SQL.Strings = (
      'SELECT * FROM `users`')
    Left = 224
    Top = 280
    object usrQID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object usrQuTitle: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uTitle'
      Origin = 'uTitle'
    end
    object usrQuFullName: TStringField
      FieldName = 'uFullName'
      Origin = 'uFullName'
      Required = True
      Size = 255
    end
    object usrQuEmail: TStringField
      FieldName = 'uEmail'
      Origin = 'uEmail'
      Required = True
      Size = 255
    end
    object usrQuPhone: TStringField
      FieldName = 'uPhone'
      Origin = 'uPhone'
      Required = True
      Size = 255
    end
    object usrQuPassword: TStringField
      FieldName = 'uPassword'
      Origin = 'uPassword'
      Required = True
      Size = 255
    end
    object usrQuAddress1: TStringField
      FieldName = 'uAddress1'
      Origin = 'uAddress1'
      Required = True
      Size = 255
    end
    object usrQuAddress2: TStringField
      FieldName = 'uAddress2'
      Origin = 'uAddress2'
      Required = True
      Size = 255
    end
    object usrQuAddress3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uAddress3'
      Origin = 'uAddress3'
      Size = 255
    end
    object usrQuCity: TStringField
      FieldName = 'uCity'
      Origin = 'uCity'
      Required = True
      Size = 255
    end
    object usrQuProvince: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uProvince'
      Origin = 'uProvince'
      Size = 255
    end
    object usrQuZip: TStringField
      FieldName = 'uZip'
      Origin = 'uZip'
      Required = True
      Size = 255
    end
    object usrQuLastLogin: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'uLastLogin'
      Origin = 'uLastLogin'
    end
    object usrQuLoginCount: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'uLoginCount'
      Origin = 'uLoginCount'
    end
    object usrQuRegisteredOn: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'uRegisteredOn'
      Origin = 'uRegisteredOn'
    end
    object usrQuStatus: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'uStatus'
      Origin = 'uStatus'
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 280
  end
  object usrDS: TDataSource
    DataSet = usrQ
    Left = 224
    Top = 328
  end
end
