inherited fmStruktur: TfmStruktur
  Caption = 'Struktur'
  ExplicitWidth = 600
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [1]
    Left = 0
    Top = 50
    Width = 592
    Height = 317
    ActivePage = cxTabSheet3
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 317
    ClientRectRight = 592
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Perusahaan'
      ImageIndex = 0
      object cgPerusahaan: TcxGrid
        Left = 0
        Top = 0
        Width = 592
        Height = 293
        Align = alClient
        TabOrder = 0
        object cgvPerusahaan: TcxGridDBCardView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.Prior.ImageIndex = 3
          NavigatorButtons.Prior.Visible = False
          NavigatorButtons.Next.ImageIndex = 4
          NavigatorButtons.Next.Visible = False
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Last.Visible = False
          NavigatorButtons.Insert.ImageIndex = 0
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Append.Visible = False
          NavigatorButtons.Delete.ImageIndex = 2
          NavigatorButtons.Edit.ImageIndex = 7
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.ImageIndex = 6
          NavigatorButtons.Post.Visible = True
          NavigatorButtons.Cancel.ImageIndex = 5
          NavigatorButtons.Refresh.ImageIndex = 1
          NavigatorButtons.Refresh.Visible = True
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          DataController.DataSource = dmGeneral.dsPerusahaan
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsView.Navigator = True
          object cgvPerusahaankodeperusahaan: TcxGridDBCardViewRow
            Caption = 'Kode'
            DataBinding.FieldName = 'kodeperusahaan'
            Position.BeginsLayer = True
          end
          object cgvPerusahaannamaperusahaan: TcxGridDBCardViewRow
            Caption = 'Nama'
            DataBinding.FieldName = 'namaperusahaan'
            Position.BeginsLayer = True
          end
          object cgvPerusahaanalamat1: TcxGridDBCardViewRow
            Caption = 'Alamat 1'
            DataBinding.FieldName = 'alamat1'
            Position.BeginsLayer = True
          end
          object cgvPerusahaanalamat2: TcxGridDBCardViewRow
            Caption = 'Alamat 2'
            DataBinding.FieldName = 'alamat2'
            Position.BeginsLayer = True
          end
          object cgvPerusahaankota: TcxGridDBCardViewRow
            Caption = 'Kota '
            DataBinding.FieldName = 'kota'
            Position.BeginsLayer = True
          end
          object cgvPerusahaankodepos: TcxGridDBCardViewRow
            Caption = 'Kode Pos'
            DataBinding.FieldName = 'kodepos'
            Position.BeginsLayer = True
          end
          object cgvPerusahaanphone: TcxGridDBCardViewRow
            Caption = 'Telephone'
            DataBinding.FieldName = 'phone'
            Position.BeginsLayer = True
          end
          object cgvPerusahaanfax: TcxGridDBCardViewRow
            Caption = 'Fax'
            DataBinding.FieldName = 'fax'
            Position.BeginsLayer = True
          end
          object cgvPerusahaannpwp: TcxGridDBCardViewRow
            Caption = 'NPWP'
            DataBinding.FieldName = 'npwp'
            Position.BeginsLayer = True
          end
          object cgvPerusahaancorebusiness: TcxGridDBCardViewRow
            Caption = 'Bisnis'
            DataBinding.FieldName = 'corebusiness'
            Position.BeginsLayer = True
          end
          object cgvPerusahaandirector: TcxGridDBCardViewRow
            Caption = 'Direktur'
            DataBinding.FieldName = 'director'
            Position.BeginsLayer = True
          end
        end
        object cgPerusahaanLevel1: TcxGridLevel
          GridView = cgvPerusahaan
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Divisi'
      ImageIndex = 1
      object cgDivisi: TcxGrid
        Left = 0
        Top = 0
        Width = 592
        Height = 293
        Align = alClient
        TabOrder = 0
        object cgvDivisi: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.Prior.ImageIndex = 3
          NavigatorButtons.Next.ImageIndex = 4
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Last.Visible = False
          NavigatorButtons.Insert.ImageIndex = 0
          NavigatorButtons.Append.Visible = False
          NavigatorButtons.Delete.ImageIndex = 2
          NavigatorButtons.Edit.ImageIndex = 7
          NavigatorButtons.Post.ImageIndex = 6
          NavigatorButtons.Cancel.ImageIndex = 5
          NavigatorButtons.Refresh.ImageIndex = 1
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          DataController.DataSource = dmGeneral.dsDivisi
          DataController.KeyFieldNames = 'KodeDivisi'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          object cgvDivisikodedivisi: TcxGridDBColumn
            Caption = 'Kode *'
            DataBinding.FieldName = 'kodedivisi'
          end
          object cgvDivisinamadivisi: TcxGridDBColumn
            Caption = 'Divisi *'
            DataBinding.FieldName = 'namadivisi'
          end
        end
        object cgDivisiLevel1: TcxGridLevel
          GridView = cgvDivisi
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Departemen'
      ImageIndex = 2
      object cgDepartemen: TcxGrid
        Left = 0
        Top = 0
        Width = 592
        Height = 293
        Align = alClient
        TabOrder = 0
        object cgvDepartemen: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = False
          NavigatorButtons.PriorPage.Visible = False
          NavigatorButtons.Prior.ImageIndex = 3
          NavigatorButtons.Next.ImageIndex = 4
          NavigatorButtons.NextPage.Visible = False
          NavigatorButtons.Last.Visible = False
          NavigatorButtons.Insert.ImageIndex = 0
          NavigatorButtons.Append.Visible = False
          NavigatorButtons.Delete.ImageIndex = 2
          NavigatorButtons.Edit.ImageIndex = 7
          NavigatorButtons.Post.ImageIndex = 6
          NavigatorButtons.Cancel.ImageIndex = 5
          NavigatorButtons.Refresh.ImageIndex = 1
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          DataController.DataSource = dmGeneral.dsDepartemen
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsView.Navigator = True
          OptionsView.GroupByBox = False
          object cgvDepartemenkodedepartemen: TcxGridDBColumn
            Caption = 'Kode *'
            DataBinding.FieldName = 'kodedepartemen'
          end
          object cgvDepartemennamadepartemen: TcxGridDBColumn
            Caption = 'Nama *'
            DataBinding.FieldName = 'namadepartemen'
          end
          object cgvDepartemenurutreport: TcxGridDBColumn
            Caption = 'Urut Report'
            DataBinding.FieldName = 'urutreport'
          end
          object cgvDepartemengroupreport: TcxGridDBColumn
            Caption = 'Group Report'
            DataBinding.FieldName = 'groupreport'
          end
        end
        object cgDepartemenLevel1: TcxGridLevel
          GridView = cgvDepartemen
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 152
  end
end
