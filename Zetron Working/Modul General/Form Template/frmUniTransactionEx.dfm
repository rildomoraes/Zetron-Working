inherited FormUniTransactionEx: TFormUniTransactionEx
  Caption = 'FormUniTransactionEx'
  ClientHeight = 466
  ClientWidth = 772
  ExplicitWidth = 780
  ExplicitHeight = 500
  DesignSize = (
    772
    466)
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
    inherited btnClose: TcxButton
      TabOrder = 7
    end
    inherited btnReset: TcxButton
      TabOrder = 0
    end
    inherited btnRefresh: TcxButton
      TabOrder = 1
    end
    inherited btnPrev: TcxButton
      Left = 475
      TabOrder = 4
      ExplicitLeft = 475
    end
    inherited btnNext: TcxButton
      Left = 523
      TabOrder = 5
      ExplicitLeft = 523
    end
    inherited btnInsert: TcxButton
      Left = 215
      TabOrder = 6
      ExplicitLeft = 215
    end
    inherited btnEdit: TcxButton
      Left = 263
      TabOrder = 9
      ExplicitLeft = 263
    end
    inherited btnPost: TcxButton
      Left = 369
      TabOrder = 8
      ExplicitLeft = 369
    end
    inherited btnCancel: TcxButton
      Left = 417
      TabOrder = 3
      ExplicitLeft = 417
    end
    object btnVoid: TcxButton
      Left = 311
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actVoid
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 2
    end
    object btnPrint: TcxButton
      Left = 145
      Top = 1
      Width = 60
      Height = 48
      Align = alLeft
      Action = actPrint
      DropDownMenu = pmPrint
      Kind = cxbkDropDownButton
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 10
    end
  end
  object pnlCustom: TPanel [1]
    Left = 0
    Top = 50
    Width = 772
    Height = 25
    Align = alTop
    TabOrder = 1
    object lblPeriod: TLabel
      Left = 7
      Top = 4
      Width = 36
      Height = 13
      Caption = 'Periode'
      Transparent = True
    end
    object lblStatusApprove: TLabel
      Left = 212
      Top = 4
      Width = 31
      Height = 13
      Caption = 'Status'
      Transparent = True
    end
    object lblCounterPrint: TLabel
      Left = 364
      Top = 4
      Width = 32
      Height = 13
      Caption = 'Copies'
      Transparent = True
    end
    object lblEmployeeId: TLabel
      Left = 443
      Top = 4
      Width = 40
      Height = 13
      Caption = 'Pegawai'
      Transparent = True
    end
    object cbMonth: TcxComboBox
      Left = 47
      Top = 2
      BeepOnEnter = False
      TabOrder = 0
      Text = 'cbMonth'
      Width = 80
    end
    object cbYear: TcxComboBox
      Left = 124
      Top = 2
      BeepOnEnter = False
      TabOrder = 1
      Text = 'cbYear'
      Width = 70
    end
    object dblcStatusApprove: TcxDBImageComboBox
      Left = 248
      Top = 2
      BeepOnEnter = False
      DataBinding.DataField = 'StatusApprove'
      DataBinding.DataSource = dsDefault
      Properties.Images = dmGlobal.imgIcon16
      Properties.Items = <
        item
          Description = 'Uncheck'
          ImageIndex = 7
          Value = '0'
        end
        item
          Description = 'Approved'
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
      Left = 399
      Top = 2
      BeepOnEnter = False
      DataBinding.DataField = 'counterprint'
      DataBinding.DataSource = dsDefault
      TabOrder = 3
      Width = 27
    end
    object dblcEmployeeId: TcxDBExtLookupComboBox
      Left = 487
      Top = 2
      BeepOnEnter = False
      DataBinding.DataField = 'EmployeeId'
      DataBinding.DataSource = dsDefault
      Properties.View = dmGlobal.cgvPrevEmployee
      Properties.KeyFieldNames = 'EmployeeId'
      Properties.ListFieldItem = dmGlobal.cgvPrevEmployeeEmployeeName
      Style.BorderStyle = ebsOffice11
      Style.Color = clWindow
      Style.ButtonTransparency = ebtHideUnselected
      TabOrder = 4
      Width = 120
    end
  end
  inherited dxDockSite1: TdxDockSite
    Top = 75
    Width = 772
    Height = 391
    ExplicitTop = 75
    ExplicitWidth = 772
    ExplicitHeight = 391
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 391
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      Width = 744
      Height = 391
      ExplicitWidth = 744
      ExplicitHeight = 391
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        Width = 744
        Height = 391
        ExplicitWidth = 744
        ExplicitHeight = 391
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
        Width = 744
        Height = 391
        ExplicitWidth = 744
        ExplicitHeight = 391
        DockType = 1
        OriginalWidth = 185
        OriginalHeight = 140
      end
    end
    inherited pnlExplorer: TdxDockPanel
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited ActionList1: TActionList
    inherited actInsert: TAction [1]
    end
    inherited actEdit: TAction [2]
    end
    object actVoid: TAction [3]
      Category = 'Dataset'
      Caption = 'Void'
      Hint = 'Void'
      ImageIndex = 7
      ShortCut = 16430
      OnExecute = actVoidExecute
    end
    inherited actPost: TAction [4]
    end
    inherited actCancel: TAction [5]
    end
    inherited actPrev: TAction [6]
    end
    inherited actNext: TAction [7]
    end
    inherited actReset: TAction [8]
    end
    inherited actRefresh: TAction [9]
    end
    object actPrint: TAction
      Caption = '&Print'
      ImageIndex = 3
      OnExecute = actPrintExecute
    end
  end
  object pmPrint: TPopupMenu
    Left = 200
    Top = 112
  end
end
