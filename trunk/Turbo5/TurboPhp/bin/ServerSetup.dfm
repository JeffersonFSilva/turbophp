object ServerSetupForm: TServerSetupForm
  Left = 356
  Top = 110
  AutoSize = True
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsToolWindow
  BorderWidth = 8
  Caption = 'Server Setup'
  ClientHeight = 417
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Shell Dlg 2'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ServerList: TListView
    Left = 0
    Top = 0
    Width = 512
    Height = 150
    Align = alTop
    Columns = <
      item
        AutoSize = True
        Caption = 'Server'
      end>
    HideSelection = False
    SmallImages = ImageList1
    TabOrder = 0
    ViewStyle = vsReport
    OnEdited = ServerListEdited
    OnSelectItem = ServerListSelectItem
  end
  object Panel3: TPanel
    Left = 0
    Top = 150
    Width = 512
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 1
    TabStop = True
    object Button1: TButton
      Left = 447
      Top = 6
      Width = 65
      Height = 20
      Cancel = True
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object NewButton: TButton
      Left = 306
      Top = 6
      Width = 65
      Height = 20
      Caption = 'New'
      TabOrder = 1
      OnClick = NewButtonClick
    end
    object DeleteButton: TButton
      Left = 377
      Top = 6
      Width = 65
      Height = 20
      Caption = 'Delete'
      TabOrder = 2
      OnClick = DeleteButtonClick
    end
  end
  object PropertiesPanel: TPanel
    Left = 0
    Top = 181
    Width = 512
    Height = 236
    Align = alTop
    AutoSize = True
    BevelOuter = bvLowered
    TabOrder = 2
    object Bevel1: TBevel
      Left = 1
      Top = 115
      Width = 510
      Height = 4
      Align = alTop
      Shape = bsSpacer
      Visible = False
    end
    object Bevel3: TBevel
      Left = 1
      Top = 202
      Width = 510
      Height = 4
      Align = alTop
      Shape = bsSpacer
      Visible = False
    end
    object ServerPanel: TPanel
      Left = 1
      Top = 1
      Width = 510
      Height = 114
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      DesignSize = (
        510
        114)
      object Label4: TLabel
        Left = 8
        Top = 43
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Server name:'
      end
      object HostLabel: TLabel
        Left = 8
        Top = 69
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Host:'
      end
      object Label1: TLabel
        Left = 8
        Top = 95
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Publish To:'
      end
      object Label10: TLabel
        Left = 8
        Top = 8
        Width = 495
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = '  Properties'
        Color = 15987699
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Shell Dlg 2'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object NameEdit: TEdit
        Left = 80
        Top = 40
        Width = 417
        Height = 21
        TabOrder = 0
        Text = 'Local Apache'
        OnChange = EditChange
      end
      object HostEdit: TEdit
        Left = 80
        Top = 66
        Width = 417
        Height = 21
        TabOrder = 1
        Text = 'http://localhost/'
        OnChange = EditChange
      end
      object TargetCombo: TComboBox
        Left = 80
        Top = 92
        Width = 77
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'Disk'
        OnChange = EditChange
        Items.Strings = (
          'Disk'
          'FTP')
      end
    end
    object FtpPanel: TPanel
      Left = 1
      Top = 119
      Width = 510
      Height = 83
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      object Label6: TLabel
        Left = 8
        Top = 35
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Username:'
      end
      object Label7: TLabel
        Left = 240
        Top = 34
        Width = 50
        Height = 13
        Caption = 'Password:'
      end
      object Label2: TLabel
        Left = 8
        Top = 7
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'FTP Server:'
      end
      object Label3: TLabel
        Left = 8
        Top = 63
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Upload Root:'
      end
      object FTPUserEdit: TEdit
        Left = 80
        Top = 32
        Width = 145
        Height = 21
        TabOrder = 1
        OnChange = EditChange
      end
      object FTPPasswordEdit: TEdit
        Left = 300
        Top = 32
        Width = 197
        Height = 21
        PasswordChar = '*'
        TabOrder = 2
        OnChange = EditChange
      end
      object FTPHostEdit: TEdit
        Left = 80
        Top = 4
        Width = 417
        Height = 21
        TabOrder = 0
        Text = 'ftp.server.com'
        OnChange = EditChange
      end
      object FtpRootEdit: TEdit
        Left = 80
        Top = 60
        Width = 417
        Height = 21
        TabOrder = 3
        Text = '/turbophp/'
        OnChange = EditChange
      end
    end
    object DiskPanel: TPanel
      Left = 1
      Top = 206
      Width = 510
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 2
      object Label11: TLabel
        Left = 8
        Top = 9
        Width = 69
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Publish Root:'
      end
      object RootEdit: TEdit
        Left = 80
        Top = 6
        Width = 345
        Height = 21
        TabOrder = 0
        Text = 'C:\Apache\htdocs\turbophp\'
        OnChange = EditChange
      end
      object BrowseButton: TButton
        Left = 432
        Top = 4
        Width = 65
        Height = 20
        Caption = 'Browse'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BrowseButtonClick
      end
    end
  end
  object ImageList1: TImageList
    Left = 40
    Top = 56
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEA99DFFB58273FFB380
      72FFB07D71FFAE7B70FFAC796FFFA9766EFFA7746DFFA5726CFFA3706BFFA06D
      69FF9E6B68FF9C6967FF00000000000000000000000000000000000000004C4C
      4CFF3B3B3BFF4E4949FFCC9696FFCB9595FFCB9595FFA68686FF2D2D2DFF2C2C
      2CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFDACEFFFFF8F2FFFFFE
      FDFF999999FF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9F6C69FF000000000000000000000000000000009090
      90FFCDCDCDFFCDCDCDFFFFE1E1FFFFDADAFFFFDADAFFBDA6A6FFCDCDCDFFCDCD
      CDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFF7F0FFFFFD
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA4716BFF000000000000000000000000000000000000
      000000000000D5B2B2FFCEA6A6FFFFDADAFFCA9494FFBCA4A4FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFF6EEFFFFFB
      F7FFFFFFFFFFFFFFFFFF999999FF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFAA776EFF000000000000000000000000000000000000
      00000000000000000000C2A7A7FFB9B1B1FF4F4D4DFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFF4EAFFFFF9
      F4FFFFFFFFFFFFFFFFFFFFFFFFFF999999FF999999FF999999FF999999FF9999
      99FF999999FFFFFFFFFFAF7C71FF000000000000000000000000000000000000
      0000000000000000000000000000CDCDCDFF2D2D2DFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFF2E7FFFFF7
      F0FFFFFCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB48173FF0000000000000000000000005E5E5EFF5959
      59FF5F5F5FFF696969FF747474FF7C7C7CFF7B7B7BFF7B7B7BFF7B7B7BFF7B7B
      7BFF757575FFED8700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFF0E1FFFFF4
      EAFFFFF9F4FFFFFEFDFF999999FF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBA8776FF0000000000000000000000003F3F3FFF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFED8700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFEDDCFFFFF2
      E5FF99948FFF999794FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBF8C78FF000000000000000000000000333333FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFED8700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFEAD6FFFFEF
      E0FFFFF2E7FFFFF7F0FFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC5927BFF0000000000000000000000002A2629FF042E
      08FF000900FF0A5E17FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFED8700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFE6CFFFFFEB
      D8FFFFF0E1FFFFF3E9FF999490FF999794FF999898FF999999FF999999FF9999
      99FFFFFFFFFFFFFFFFFFCA977EFF0000000000000000000000002A272AFF0013
      00FF000100FF095A12FF000000FF000100FF000000FF000000FF000000FF0000
      00FF000000FFED8700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFE4CAFFFFE7
      D1FF998D82FF999087FFFFF2E7FFFFF6EEFFFFF9F4FFFFFCF9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCD9A7FFF0000000000000000000000002A2A2AFF0000
      00FF000000FF17822FFF084F11FF157B2AFF157629FF095512FF0E601BFF0E60
      1BFF000000FFED8700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFE0C2FFFFE4
      CAFFFFE7D1FFFFEBD8FFFFEFE0FFFFF2E5FFFFF4EAFFFFF7F0FFFFF9F4FFFFFB
      F7FFFFFDFBFFFFFEFDFFD3A082FF000000000000000000000000282826FF117A
      21FF0F5F1EFF1B9E38FF23B147FF063E0BFF199233FF20A73EFF001300FF0013
      00FF003206FFED8700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFDCB9FF9986
      74FF998979FF998A7CFF998C80FF998E84FF999087FF99918BFF99928CFFFFF6
      EEFFFFF7F0FFFFF8F2FFD8A585FF000000000000000000000000353332FF2A26
      2AFF2A282AFF2A2627FF2A2629FF2A2728FF2A2628FF2D292CFF353334FF3533
      34FF413F40FFED8700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAC796FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEEDACDFFD6B9B1FF000000000000000000000000FFCC99FFEB85
      00FFEB8500FFEB8500FFEB8500FFEB8500FFEB8500FFEB8500FFEB8500FFEB85
      00FFEB8500FFED8700FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF9900FFFF99
      00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
      00FFFF9900FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000008003E00F00000000
      8001E00F000000008001F83F000000008001FC7F000000008001FE7F00000000
      8001C003000000008001C003000000008001C003000000008001C00300000000
      8001C003000000008001C003000000008001C003000000008001C00300000000
      8001C00300000000FFFFC0070000000000000000000000000000000000000000
      000000000000}
  end
  object RootBrowseDialog: TLMDBrowseDlg
    CaptionTitle = 'Select Publish Root'
    Caption = 'Select the folder that corresponds to the host'#39's document root.'
    Options = [doReturnFileSysDirs, doAllowEdit, doShowPath]
    Left = 116
    Top = 56
  end
end