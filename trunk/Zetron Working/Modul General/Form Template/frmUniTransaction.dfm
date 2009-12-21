inherited FormUniTransaction: TFormUniTransaction
  Caption = 'FormUniTransaction'
  ClientHeight = 467
  ClientWidth = 772
  ExplicitWidth = 780
  ExplicitHeight = 501
  DesignSize = (
    772
    467)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    Width = 772
    ExplicitWidth = 772
    inherited bvlSpacer1: TBevel
      Left = 205
      ExplicitLeft = 205
    end
    inherited bvlSpacer2: TBevel
      Left = 359
      ExplicitLeft = 359
    end
    inherited bvlSpacer3: TBevel
      Left = 465
      ExplicitLeft = 465
    end
    inherited bvlSpacer4: TBevel
      Left = 571
      ExplicitLeft = 571
    end
    inherited btnPrev: TcxButton
      Left = 475
      TabOrder = 9
      ExplicitLeft = 475
    end
    inherited btnNext: TcxButton
      Left = 523
      TabOrder = 10
      ExplicitLeft = 523
    end
    inherited btnInsert: TcxButton
      Left = 215
      TabOrder = 4
      ExplicitLeft = 215
    end
    inherited btnEdit: TcxButton
      Left = 263
      TabOrder = 5
      ExplicitLeft = 263
    end
    inherited btnPost: TcxButton
      Left = 369
      TabOrder = 7
      ExplicitLeft = 369
    end
    inherited btnCancel: TcxButton
      Left = 417
      TabOrder = 8
      ExplicitLeft = 417
    end
    object btnPrint: TcxButton
      Left = 145
      Top = 1
      Width = 60
      Height = 48
      Action = actPrint
      Align = alLeft
      TabOrder = 3
      DropDownMenu = pmPrint
      Kind = cxbkDropDownButton
      Layout = blGlyphTop
      Spacing = 0
    end
    object btnVoid: TcxButton
      Left = 311
      Top = 1
      Width = 48
      Height = 48
      Action = actVoid
      Align = alLeft
      TabOrder = 6
      Layout = blGlyphTop
      Spacing = 0
    end
  end
  object pnlCustom: TPanel [1]
    Left = 0
    Top = 50
    Width = 772
    Height = 25
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 7
      Top = 5
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object Label4: TLabel
      Left = 212
      Top = 5
      Width = 31
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object Label3: TLabel
      Left = 364
      Top = 5
      Width = 32
      Height = 13
      Caption = 'Copies'
      Transparent = True
    end
    object cbMonth: TcxComboBox
      Left = 47
      Top = 3
      TabOrder = 0
      Text = 'cbMonth'
      Width = 80
    end
    object cbYear: TcxComboBox
      Left = 126
      Top = 3
      TabOrder = 1
      Text = 'cbYear'
      Width = 70
    end
    object dblcStatusApprove: TcxDBImageComboBox
      Left = 249
      Top = 3
      BeepOnEnter = False
      DataBinding.DataField = 'StatusApprove'
      DataBinding.DataSource = dsDefault
      Properties.Images = dmGlobal.imgIcon16
      Properties.Items = <
        item
          Description = 'Entry'
          ImageIndex = 7
          Value = '0'
        end
        item
          Description = 'Approve'
          ImageIndex = 6
          Value = '1'
        end
        item
          Description = 'Void'
          ImageIndex = 8
          Value = '2'
        end>
      Style.Color = clWindow
      TabOrder = 2
      Width = 100
    end
    object dbeCounterPrint: TcxDBTextEdit
      Left = 402
      Top = 3
      BeepOnEnter = False
      DataBinding.DataField = 'counterprint'
      DataBinding.DataSource = dsDefault
      TabOrder = 3
      Width = 27
    end
  end
  inherited dxDockSite1: TdxDockSite
    Top = 75
    Width = 772
    Height = 392
    ExplicitTop = 75
    ExplicitWidth = 772
    ExplicitHeight = 392
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 392
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 744
      Height = 392
      ExplicitWidth = 744
      ExplicitHeight = 392
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 744
        Height = 392
        ExplicitWidth = 744
        ExplicitHeight = 392
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 744
        Height = 392
        ExplicitWidth = 744
        ExplicitHeight = 392
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
      end
    end
    inherited pnlExplorer: TdxDockPanel
      Height = 140
      ExplicitHeight = 140
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  object dbeTransactionId: TcxDBTextEdit [3]
    Left = 235
    Top = 112
    DataBinding.DataSource = dsDefault
    Properties.ReadOnly = True
    Style.Color = clRed
    TabOrder = 2
    Visible = False
    Width = 96
  end
  inherited ActionList1: TActionList
    object actVoid: TAction [7]
      Category = 'Dataset'
      Caption = 'Void'
      Hint = 'Void'
      ImageIndex = 7
      ShortCut = 16430
      OnExecute = actVoidExecute
    end
    object actPrint: TAction
      Caption = '&Print'
      Hint = 'Print (Alt+P)'
      ImageIndex = 3
      OnExecute = actPrintExecute
    end
  end
  object pmPrint: TPopupMenu
    Left = 200
    Top = 112
  end
end
