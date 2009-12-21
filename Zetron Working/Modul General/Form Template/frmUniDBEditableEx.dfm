inherited FormUniDBEditableEx: TFormUniDBEditableEx
  Caption = 'FormUniDBEditableEx'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    inherited bvlSpacer2: TBevel
      ExplicitLeft = 241
    end
    inherited bvlSpacer3: TBevel
      Left = 357
      ExplicitLeft = 347
      ExplicitTop = 2
    end
    inherited bvlSpacer4: TBevel
      Left = 463
      ExplicitLeft = 463
    end
    inherited btnPrev: TcxButton
      Left = 367
      TabOrder = 7
      ExplicitLeft = 367
    end
    inherited btnNext: TcxButton
      Left = 415
      TabOrder = 8
      ExplicitLeft = 415
    end
    object btnInsert: TcxButton
      Left = 155
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actInsert
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 3
    end
    object btnEdit: TcxButton
      Left = 203
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actEdit
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 4
    end
    object btnPost: TcxButton
      Left = 261
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actPost
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 5
    end
    object btnCancel: TcxButton
      Left = 309
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actCancel
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 6
    end
  end
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 592
    OriginalHeight = 317
    inherited dxLayoutDockSite2: TdxLayoutDockSite
      DockType = 1
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxLayoutDockSite1: TdxLayoutDockSite
        DockType = 1
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited pnlInfo: TdxDockPanel
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
    OnExecute = ActionList1Execute
    object actInsert: TAction [3]
      Category = 'Dataset'
      Caption = 'Insert'
      Hint = 'Insert'
      ImageIndex = 5
      OnExecute = actInsertExecute
    end
    object actEdit: TAction [4]
      Category = 'Dataset'
      Caption = 'Edit'
      Hint = 'Edit'
      ImageIndex = 6
      OnExecute = actEditExecute
    end
    object actPost: TAction [5]
      Category = 'Dataset'
      Caption = 'Post'
      Hint = 'Post'
      ImageIndex = 8
      OnExecute = actPostExecute
    end
    object actCancel: TAction [6]
      Category = 'Dataset'
      Caption = 'Cancel'
      Hint = 'Cancel'
      ImageIndex = 9
      OnExecute = actCancelExecute
    end
  end
  inherited dsDefault: TDataSource
    OnStateChange = dsDefaultStateChange
  end
end
