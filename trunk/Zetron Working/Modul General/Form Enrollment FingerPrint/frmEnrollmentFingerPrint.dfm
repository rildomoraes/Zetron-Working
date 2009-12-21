object fmEnrollmentFingerPrint: TfmEnrollmentFingerPrint
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Ambil Contoh Sidik Jari'
  ClientHeight = 314
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DPFPEnrollmentControl1: TDPFPEnrollmentControl
    Left = 0
    Top = 0
    Width = 495
    Height = 314
    Align = alTop
    TabOrder = 0
    OnDelete = DPFPEnrollmentControl1Delete
    OnEnroll = DPFPEnrollmentControl1Enroll
    ExplicitLeft = 8
    ExplicitTop = 8
    ControlData = {
      00080000293300007420000003000A00000003000000000008004E0000007B00
      300030003000300030003000300030002D0030003000300030002D0030003000
      300030002D0030003000300030002D0030003000300030003000300030003000
      30003000300030007D000000}
  end
  object btnClose: TcxButton
    Left = 424
    Top = 280
    Width = 63
    Height = 26
    Caption = 'Close'
    Layout = blGlyphTop
    Spacing = 0
    TabOrder = 1
    OnClick = btnCloseClick
  end
end
