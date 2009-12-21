inherited FormUniTransactionApprovalEx: TFormUniTransactionApprovalEx
  Caption = 'FormUniTransactionApprovalEx'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMenu: TPanel
    inherited bvlSpacer2: TBevel
      Left = 407
      ExplicitLeft = 407
      ExplicitTop = -2
    end
    inherited bvlSpacer3: TBevel
      Left = 609
      ExplicitLeft = 613
      ExplicitTop = -2
    end
    inherited bvlSpacer4: TBevel
      Left = 715
      ExplicitLeft = 731
      ExplicitTop = 2
    end
    inherited btnPrev: TcxButton
      Left = 619
      TabOrder = 11
      ExplicitLeft = 619
    end
    inherited btnNext: TcxButton
      Left = 667
      TabOrder = 13
      ExplicitLeft = 667
    end
    inherited btnEdit: TcxButton
      Left = 263
      TabOrder = 12
      ExplicitLeft = 263
    end
    inherited btnPost: TcxButton
      Left = 311
      TabOrder = 5
      ExplicitLeft = 311
    end
    inherited btnCancel: TcxButton
      Left = 359
      TabOrder = 6
      ExplicitLeft = 359
    end
    inherited btnVoid: TcxButton
      Left = 513
      TabOrder = 9
      ExplicitLeft = 513
    end
    object btnApprove: TcxButton
      Left = 417
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actApprove
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 7
    end
    object btnRevision: TcxButton
      Left = 465
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actRevision
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 8
    end
    object btnNotes: TcxButton
      Left = 561
      Top = 1
      Width = 48
      Height = 48
      Align = alLeft
      Action = actNotes
      Layout = blGlyphTop
      Spacing = 0
      TabOrder = 10
    end
  end
  inherited pnlCustom: TPanel
    inherited cbMonth: TcxComboBox
      ExplicitHeight = 19
    end
    inherited cbYear: TcxComboBox
      ExplicitHeight = 19
    end
    inherited dblcStatusApprove: TcxDBImageComboBox
      DataBinding.DataField = 'chStatusApprove'
      Properties.Images = nil
      Properties.Items = <
        item
          Description = 'Entry'
          Value = '0'
        end
        item
          Description = 'Approve 1'
          Value = '1'
        end
        item
          Description = 'Approve 2'
          Value = '2'
        end
        item
          Description = 'Approve 3'
          Value = '3'
        end
        item
          Description = 'Approve 4'
          Value = '4'
        end
        item
          Description = 'Reject / Void'
          Value = '5'
        end
        item
          Description = 'Done'
          Value = '6'
        end>
      ExplicitHeight = 19
    end
    inherited dbeCounterPrint: TcxDBTextEdit
      ExplicitHeight = 19
    end
    inherited dblcEmployeeId: TcxDBExtLookupComboBox
      DataBinding.DataField = ''
      DataBinding.DataSource = nil
      ExplicitHeight = 19
    end
    object dbeEmployee: TcxDBTextEdit
      Left = 487
      Top = 2
      DataBinding.DataField = 'vcEmployeeName'
      DataBinding.DataSource = dsDefault
      TabOrder = 5
      Width = 180
    end
  end
  inherited dxDockSite1: TdxDockSite
    DockType = 0
    OriginalWidth = 772
    OriginalHeight = 391
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
      Height = 0
      ExplicitHeight = 0
      AutoHidePosition = 0
      DockType = 2
      OriginalWidth = 300
      OriginalHeight = 140
    end
  end
  inherited ActionList1: TActionList
    inherited actPost: TDataSetPost [7]
    end
    inherited actCancel: TDataSetCancel [8]
    end
    inherited actPrint: TAction [9]
    end
    object actApprove: TAction [10]
      Category = 'Approval'
      Caption = 'Approve'
      Hint = 'Approve'
      ImageIndex = 18
      OnExecute = actApproveExecute
    end
    object actRevision: TAction [11]
      Category = 'Approval'
      Caption = 'Revisi'
      Hint = 'Revisi'
      ImageIndex = 19
      OnExecute = actRevisionExecute
    end
    inherited actVoid: TAction [12]
      Category = 'Approval'
      Caption = 'Reject'
      Hint = 'Reject'
    end
    object actNotes: TAction
      Category = 'Approval'
      Caption = 'Notes'
      Hint = 'Notes'
      ImageIndex = 20
    end
  end
end
