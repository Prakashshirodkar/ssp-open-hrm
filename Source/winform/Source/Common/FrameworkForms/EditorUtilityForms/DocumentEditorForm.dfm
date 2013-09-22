inherited frmDocumentEditor: TfrmDocumentEditor
  Left = 194
  Top = 160
  Width = 791
  Height = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TElStatusBar
    Top = 523
    Width = 783
  end
  inherited dxlcMain: TdxLayoutControl
    Width = 783
    Height = 523
    TabOrder = 3
    LookAndFeel = dmMain.StyleShadow
    inherited frameToolbar1: TframeToolbar
      Left = 3
      Top = 495
      Color = clCream
      TabOrder = 1
      inherited dxLayoutControl1: TdxLayoutControl
        inherited btnClose: TElPopupButton
          Left = 717
        end
        inherited btnHelp: TElPopupButton
          Left = 597
        end
        inherited btnChoose: TElPopupButton
          Left = 657
        end
        inherited btnDesign: TElPopupButton
          Left = 442
        end
        inherited btnPreview: TElPopupButton
          Left = 417
        end
        inherited btnPrint: TElPopupButton
          Left = 392
        end
        inherited btnSendMail: TElPopupButton
          Left = 367
        end
        inherited btnGenerate: TElPopupButton
          Left = 522
        end
        inherited btnRelation: TElPopupButton
          Left = 497
        end
        inherited ElPopupButton1: TElPopupButton
          Left = 472
        end
      end
    end
    object dbrvMain: TDBRichViewEdit [1]
      Left = 4
      Top = 84
      Width = 728
      Height = 374
      DataField = 'DOC_FILE'
      DataSource = dsDocEditor
      ReadOnly = False
      OnCurTextStyleChanged = RichViewEdit1CurTextStyleChanged
      Align = alClient
      PopupMenu = RVAPopupMenu1
      TabOrder = 0
      BorderStyle = bsNone
      DoInPaletteMode = rvpaCreateCopies
      LeftMargin = 10
      RTFReadProperties.UnicodeMode = rvruOnlyUnicode
      RTFReadProperties.TextStyleMode = rvrsAddIfNeeded
      RTFReadProperties.ParaStyleMode = rvrsAddIfNeeded
      RVFOptions = [rvfoSavePicturesBody, rvfoSaveControlsBody, rvfoSaveBinary, rvfoSaveBack, rvfoLoadBack, rvfoSaveTextStyles, rvfoSaveParaStyles, rvfoSaveLayout, rvfoLoadLayout]
      Style = RVStyle1
      TopMargin = 10
      OnJump = RichViewEdit1Jump
      OnReadHyperlink = RichViewEdit1ReadHyperlink
      OnURLNeeded = RichViewEdit1URLNeeded
    end
    object dxBarDockControl1: TdxBarDockControl [2]
      Left = 3
      Top = 3
      Width = 777
      Height = 77
      Align = dalTop
      BarManager = dxBarManager1
    end
    inherited dxlcMainGroup_Root: TdxLayoutGroup
      object dxLayoutControl1Item2: TdxLayoutItem [0]
        AutoAligns = [aaHorizontal]
        Control = dxBarDockControl1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item4: TdxLayoutItem [1]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = dbrvMain
      end
    end
  end
  object cmbFont: TRVFontComboBox [2]
    Left = 538
    Top = 72
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'Tahoma'
    OnClick = cmbFontClick
    OnExit = cmbFontClick
    OnKeyPress = cmbKeyPress
  end
  object cmbFontSize: TRVFontSizeComboBox [3]
    Left = 465
    Top = 72
    Width = 72
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = '8'
    OnClick = cmbFontSizeClick
    OnExit = cmbFontSizeClick
    OnKeyPress = cmbKeyPress
  end
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'So'#7841'n th'#7843'o v'#259'n b'#7843'n'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
    Left = 0
    Top = 64
  end
  object ActionList1: TActionList
    Left = 160
    Top = 224
    object rvActionInsertFile1: TrvActionInsertFile
      Category = 'RVE Insert'
      Caption = '&File...'
      Hint = 'Insert File|Inserts contents of file in the document'
      ImageIndex = 1
      Control = dbrvMain
    end
    object rvActionExport1: TrvActionExport
      Category = 'RVE File'
      Caption = '&Export...'
      Hint = 'Export|Exports the document to another format'
      ImageIndex = 83
      Control = dbrvMain
      ImagePrefix = 'img'
      SaveOptions = []
    end
    object rvActionSaveAs1: TrvActionSaveAs
      Category = 'RVE File'
      Caption = 'Save &As...'
      Hint = 'Save As...|Saves the document to disk with a new name'
      ImageIndex = 60
      Control = dbrvMain
    end
    object rvActionPrintPreview1: TrvActionPrintPreview
      Category = 'RVE File'
      Caption = 'P&rint Preview...'
      Hint = 'Print Preview|Shows the document as it will be printed'
      ImageIndex = 4
      Control = dbrvMain
    end
    object rvActionPrint1: TrvActionPrint
      Category = 'RVE File'
      Caption = '&Print...'
      Hint = 'Print|Sets print settings and prints the document'
      ImageIndex = 5
      ShortCut = 16464
      Control = dbrvMain
    end
    object rvActionQuickPrint1: TrvActionQuickPrint
      Category = 'RVE File'
      Caption = '&Print'
      Hint = 'Print|Prints the document'
      ImageIndex = 5
      Control = dbrvMain
    end
    object rvActionPageSetup1: TrvActionPageSetup
      Category = 'RVE File'
      Caption = 'Pa&ge Setup...'
      Hint = 
        'Page Setup|Sets margins, paper size, orientation, source, header' +
        's and footers'
      ImageIndex = 79
    end
    object rvActionCut1: TrvActionCut
      Category = 'RVE Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 7
      ShortCut = 16472
      Control = dbrvMain
    end
    object rvActionCopy1: TrvActionCopy
      Category = 'RVE Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 8
      ShortCut = 16451
      Control = dbrvMain
    end
    object rvActionPaste1: TrvActionPaste
      Category = 'RVE Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts the Clipboard contents'
      ImageIndex = 9
      ShortCut = 16470
      Control = dbrvMain
    end
    object rvActionPasteSpecial1: TrvActionPasteSpecial
      Category = 'RVE Edit'
      Caption = 'Paste &Special...'
      Hint = 
        'Paste Special|Inserts the Clipboard contents in the specified fo' +
        'rmat'
      Control = dbrvMain
    end
    object rvActionUndo1: TrvActionUndo
      Category = 'RVE Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 11
      ShortCut = 16474
      Control = dbrvMain
    end
    object rvActionRedo1: TrvActionRedo
      Category = 'RVE Edit'
      Caption = '&Redo'
      Hint = 'Redo|Redoes the last undone action'
      ImageIndex = 10
      ShortCut = 16473
      Control = dbrvMain
    end
    object rvActionSelectAll1: TrvActionSelectAll
      Category = 'RVE Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects all document'
      ShortCut = 16449
      Control = dbrvMain
    end
    object rvActionFind1: TrvActionFind
      Category = 'RVE Edit'
      Caption = '&Find...'
      Hint = 'Find|Finds specified text in the document'
      ImageIndex = 29
      ShortCut = 16454
      Control = dbrvMain
    end
    object rvActionFindNext1: TrvActionFindNext
      Category = 'RVE Edit'
      Caption = 'Find &Next'
      Hint = 'Find Next|Continues the last search'
      ImageIndex = 30
      ShortCut = 114
      Control = dbrvMain
    end
    object rvActionReplace1: TrvActionReplace
      Category = 'RVE Edit'
      Caption = '&Replace...'
      Hint = 'Replace|Finds and replaces specified text in the document'
      ImageIndex = 31
      ShortCut = 16456
      Control = dbrvMain
    end
    object rvActionFonts1: TrvActionFonts
      Category = 'RVE Text'
      Caption = '&Font...'
      Hint = 'Font|Changes font of the selected text'
      ImageIndex = 13
      Control = dbrvMain
    end
    object rvActionFontEx1: TrvActionFontEx
      Category = 'RVE Text'
      Caption = '&Font...'
      Hint = 'Font|Changes font of the selected text'
      ImageIndex = 13
      Control = dbrvMain
    end
    object rvActionFontBold1: TrvActionFontBold
      Category = 'RVE Text'
      Caption = '&Bold'
      Hint = 'Bold|Changes the style of selected text to bold'
      ImageIndex = 14
      ShortCut = 16450
      Control = dbrvMain
    end
    object rvActionFontItalic1: TrvActionFontItalic
      Category = 'RVE Text'
      Caption = '&Italic'
      Hint = 'Italic|Changes the style of selected text to italic'
      ImageIndex = 15
      ShortCut = 16457
      Control = dbrvMain
    end
    object rvActionFontUnderline1: TrvActionFontUnderline
      Category = 'RVE Text'
      Caption = '&Underline'
      Hint = 'Underline|Changes the style of selected text to underline'
      ImageIndex = 16
      ShortCut = 16469
      Control = dbrvMain
    end
    object rvActionFontStrikeout1: TrvActionFontStrikeout
      Category = 'RVE Text'
      Caption = '&Strike out'
      Hint = 'Strike out|Strikes out the selected text'
      ImageIndex = 17
      Control = dbrvMain
    end
    object rvActionFontGrow1: TrvActionFontGrow
      Category = 'RVE Text'
      Caption = '&Grow Font'
      Hint = 'Grow Font|Grows height of the selected text by 10%'
      ImageIndex = 53
      Control = dbrvMain
    end
    object rvActionFontShrink1: TrvActionFontShrink
      Category = 'RVE Text'
      Caption = 'S&hrink Font'
      Hint = 'Shrink Font|Shrinks height of the selected text by 10%'
      ImageIndex = 52
      Control = dbrvMain
    end
    object rvActionFontGrowOnePoint1: TrvActionFontGrowOnePoint
      Category = 'RVE Text'
      Caption = 'G&row Font By One Point'
      Hint = 
        'Grow Font By One Point|Grows height of the selected text by 1 po' +
        'int'
      ImageIndex = 18
      Control = dbrvMain
    end
    object rvActionFontShrinkOnePoint1: TrvActionFontShrinkOnePoint
      Category = 'RVE Text'
      Caption = 'Shri&nk Font By One Point'
      Hint = 
        'Shrink Font By One Point|Shrinks height of the selected text by ' +
        '1 point'
      ImageIndex = 19
      Control = dbrvMain
    end
    object rvActionFontAllCaps1: TrvActionFontAllCaps
      Category = 'RVE Text'
      Caption = '&All Capitals'
      Hint = 
        'All Capitals|Changes all characters of the selected text to capi' +
        'tal letters'
      ImageIndex = 54
      Control = dbrvMain
    end
    object rvActionFontOverline1: TrvActionFontOverline
      Category = 'RVE Text'
      Caption = '&Overline'
      Hint = 'Overline|Adds line over the selected text'
      ImageIndex = 55
      Control = dbrvMain
    end
    object rvActionFontColor1: TrvActionFontColor
      Category = 'RVE Text'
      Caption = 'Text &Color...'
      Hint = 'Text Color|Changes color of the selected text'
      ImageIndex = 20
      Control = dbrvMain
      OnShowColorPicker = ColorPickerShow
      OnHideColorPicker = ColorPickerHide
    end
    object rvActionFontBackColor1: TrvActionFontBackColor
      Category = 'RVE Text'
      Caption = 'Text Bac&kground Color...'
      Hint = 
        'Text Background Color|Changes background color of the selected t' +
        'ext'
      ImageIndex = 21
      Control = dbrvMain
      OnShowColorPicker = ColorPickerShow
      OnHideColorPicker = ColorPickerHide
    end
    object rvActionParagraph1: TrvActionParagraph
      Category = 'RVE Paragraph'
      Caption = '&Paragraph...'
      Hint = 'Paragraph|Changes the paragraph attributes'
      ImageIndex = 59
      Control = dbrvMain
    end
    object rvActionParaBorder1: TrvActionParaBorder
      Category = 'RVE Paragraph'
      Caption = 'Paragraph &Borders and Background...'
      Hint = 
        'Paragraph Borders and Background|Sets borders and backround for ' +
        'the selected paragraphs'
      ImageIndex = 74
      Control = dbrvMain
    end
    object rvActionWordWrap1: TrvActionWordWrap
      Category = 'RVE Paragraph'
      Caption = '&Word Wrap'
      Hint = 'Word Wrap|Toggles word wrapping for the selected paragraphs'
      ImageIndex = 26
      Control = dbrvMain
    end
    object rvActionAlignLeft1: TrvActionAlignLeft
      Category = 'RVE Paragraph'
      Caption = 'Align &Left'
      Hint = 'Align Left|Aligns the selected text to the left'
      ImageIndex = 22
      Control = dbrvMain
    end
    object rvActionAlignRight1: TrvActionAlignRight
      Category = 'RVE Paragraph'
      Caption = 'Align &Right'
      Hint = 'Align Right|Aligns the selected text to the right'
      ImageIndex = 24
      Control = dbrvMain
    end
    object rvActionAlignCenter1: TrvActionAlignCenter
      Category = 'RVE Paragraph'
      Caption = 'Align &Center'
      Hint = 'Align Center|Centers the selected text'
      ImageIndex = 23
      Control = dbrvMain
    end
    object rvActionAlignJustify1: TrvActionAlignJustify
      Category = 'RVE Paragraph'
      Caption = '&Justify'
      Hint = 'Justify|Aligns the selected text to both left and right sides'
      ImageIndex = 25
      Control = dbrvMain
    end
    object rvActionIndentInc1: TrvActionIndentInc
      Category = 'RVE Paragraph'
      Caption = '&Increase Indent'
      Hint = 'Increase Indent|Increases left indent of the selected paragraphs'
      ImageIndex = 28
      Control = dbrvMain
      IndentMax = 200
    end
    object rvActionIndentDec1: TrvActionIndentDec
      Category = 'RVE Paragraph'
      Caption = '&Decrease Indent'
      Hint = 'Decrease Indent|Dereases left indent of the selected paragraphs'
      ImageIndex = 27
      Control = dbrvMain
    end
    object rvActionParaColor1: TrvActionParaColor
      Category = 'RVE Paragraph'
      Caption = 'Paragraph &Background Color...'
      Hint = 'Paragraph Background Color|Sets background color of paragraphs'
      ImageIndex = 56
      Control = dbrvMain
      OnShowColorPicker = ColorPickerShow
      OnHideColorPicker = ColorPickerHide
    end
    object rvActionLineSpacing1001: TrvActionLineSpacing100
      Category = 'RVE Paragraph'
      Caption = '&Single Line Spacing'
      Hint = 'Single Line Spacing|Sets single line spacing'
      ImageIndex = 61
      Control = dbrvMain
    end
    object rvActionLineSpacing1501: TrvActionLineSpacing150
      Category = 'RVE Paragraph'
      Caption = '1.5 Li&ne Spacing'
      Hint = '1.5 Line Spacing|Sets line spacing equal to 1.5 lines'
      ImageIndex = 62
      Control = dbrvMain
    end
    object rvActionLineSpacing2001: TrvActionLineSpacing200
      Category = 'RVE Paragraph'
      Caption = '&Double Line Spacing'
      Hint = 'Double Line Spacing|Sets double line spacing'
      ImageIndex = 63
      Control = dbrvMain
    end
    object rvActionParaList1: TrvActionParaList
      Category = 'RVE List'
      Caption = '&Bullets and Numbering...'
      Hint = 
        'Bullets and Numbering|Applies or edits bullets or numbering for ' +
        'selected paragraphs'
      ImageIndex = 76
      Control = dbrvMain
    end
    object rvActionParaBullets1: TrvActionParaBullets
      Category = 'RVE List'
      Caption = '&Bullets'
      Hint = 'Bullets|Adds or removes bullets for the paragraph'
      ImageIndex = 76
      Control = dbrvMain
    end
    object rvActionParaNumbering1: TrvActionParaNumbering
      Category = 'RVE List'
      Caption = '&Numbering'
      Hint = 'Numbering|Adds or removes numberings for the paragraph'
      ImageIndex = 77
      Control = dbrvMain
    end
    object rvActionTextRTL1: TrvActionTextRTL
      Category = 'RVE BiDi'
      Caption = 'Right To Left Text'
      Hint = 
        'Right To Left Text|Sets right-to-left direction for the selected' +
        ' text'
      Control = dbrvMain
    end
    object rvActionTextLTR1: TrvActionTextLTR
      Category = 'RVE BiDi'
      Caption = 'Left To Right Text'
      Hint = 
        'Left To Right Text|Sets left-to-right direction for the selected' +
        ' text'
      Control = dbrvMain
    end
    object rvActionParaRTL1: TrvActionParaRTL
      Category = 'RVE BiDi'
      Caption = 'Right To Left'
      Hint = 
        'Right To Left|Sets right-to-left text direction for the selected' +
        ' paragraphs'
      ImageIndex = 81
      Control = dbrvMain
    end
    object rvActionParaLTR1: TrvActionParaLTR
      Category = 'RVE BiDi'
      Caption = 'Left To Right'
      Hint = 
        'Left To Right|Sets left-to-right text direction for the selected' +
        ' paragraphs'
      ImageIndex = 80
      Control = dbrvMain
    end
    object rvActionInsertPicture1: TrvActionInsertPicture
      Category = 'RVE Insert'
      Caption = '&Picture...'
      Hint = 'Insert Picture|Inserts a picture from disk'
      ImageIndex = 45
      Control = dbrvMain
      VAlign = rvvaBaseline
      DefaultExt = 'bmp'
    end
    object rvActionInsertHLine1: TrvActionInsertHLine
      Category = 'RVE Insert'
      Caption = '&Horizontal Line'
      Hint = 'Insert Horizontal Line|Inserts a horizontal line'
      ImageIndex = 50
      Control = dbrvMain
    end
    object rvActionInsertHyperlink1: TrvActionInsertHyperlink
      Category = 'RVE Insert'
      Caption = 'Hypertext &Link...'
      Hint = 'Insert Hyperlink|Inserts a hypertext link'
      ImageIndex = 3
      Control = dbrvMain
      SpaceFiller = '%20'
    end
    object rvActionInsertSymbol1: TrvActionInsertSymbol
      Category = 'RVE Insert'
      Caption = '&Symbol...'
      Hint = 'Insert Symbol|Inserts symbol'
      ImageIndex = 48
      Control = dbrvMain
    end
    object rvActionColor1: TrvActionColor
      Category = 'RVE Miscellaneous'
      Caption = 'Background &Color...'
      Hint = 'Background|Changes a background color of the document'
      ImageIndex = 57
      Control = dbrvMain
      Color = clWindow
      OnShowColorPicker = ColorPickerShow
      OnHideColorPicker = ColorPickerHide
    end
    object rvActionBackground1: TrvActionBackground
      Category = 'RVE Miscellaneous'
      Caption = '&Background...'
      Hint = 'Background|Chooses background color and image'
      ImageIndex = 78
      Control = dbrvMain
    end
    object rvActionFillColor1: TrvActionFillColor
      Category = 'RVE Miscellaneous'
      Caption = '&Fill Color...'
      Hint = 
        'Fill Color|Changes background color of  text, paragraph, cell, t' +
        'able or document'
      ImageIndex = 82
      Control = dbrvMain
    end
    object rvActionInsertPageBreak1: TrvActionInsertPageBreak
      Category = 'RVE Miscellaneous'
      Caption = '&Insert Page Break'
      Hint = 'Insert Page Break|Inserts a page break'
      ImageIndex = 64
      ShortCut = 16397
      Control = dbrvMain
    end
    object rvActionRemovePageBreak1: TrvActionRemovePageBreak
      Category = 'RVE Miscellaneous'
      Caption = '&Remove Page Break'
      Hint = 'Remove Page Break|Removes the page break'
      Control = dbrvMain
    end
    object rvActionItemProperties1: TrvActionItemProperties
      Category = 'RVE Miscellaneous'
      Caption = 'Object &Properties...'
      Hint = 'Object Properties|Defines properties of the active object'
      ImageIndex = 32
      ShortCut = 32781
      Control = dbrvMain
    end
    object rvActionInsertTable1: TrvActionInsertTable
      Category = 'RVE Table'
      Caption = '&Insert Table...'
      Hint = 'Insert Table|Inserts a new table'
      ImageIndex = 33
      Control = dbrvMain
    end
    object rvActionTableInsertRowsBelow1: TrvActionTableInsertRowsBelow
      Category = 'RVE Table'
      Caption = 'Insert Row &Below'
      Hint = 'Insert Row Below|Inserts a new row below the selected cells'
      ImageIndex = 38
      Control = dbrvMain
      AllowMultiple = True
    end
    object rvActionTableInsertRowsAbove1: TrvActionTableInsertRowsAbove
      Category = 'RVE Table'
      Caption = 'Insert Row &Above'
      Hint = 'Insert Row Above|Inserts a new row above the selected cells'
      ImageIndex = 40
      Control = dbrvMain
    end
    object rvActionTableInsertColLeft1: TrvActionTableInsertColLeft
      Category = 'RVE Table'
      Caption = 'Insert Column &Left'
      Hint = 
        'Insert Column Left|Insert a new column to the left of selected c' +
        'ells'
      ImageIndex = 41
      Control = dbrvMain
    end
    object rvActionTableInsertColRight1: TrvActionTableInsertColRight
      Category = 'RVE Table'
      Caption = 'Insert Column &Right'
      Hint = 
        'Insert Column Right|Insert a new column to the right of selected' +
        ' cells'
      ImageIndex = 39
      Control = dbrvMain
    end
    object rvActionTableDeleteRows1: TrvActionTableDeleteRows
      Category = 'RVE Table'
      Caption = 'Delete R&ows'
      Hint = 'Delete Rows|Deletes rows with the selected cells'
      ImageIndex = 42
      Control = dbrvMain
    end
    object rvActionTableDeleteCols1: TrvActionTableDeleteCols
      Category = 'RVE Table'
      Caption = 'Delete &Columns'
      Hint = 'Delete Columns|Deletes columns with the selected cells'
      ImageIndex = 43
      Control = dbrvMain
    end
    object rvActionTableDeleteTable1: TrvActionTableDeleteTable
      Category = 'RVE Table'
      Caption = '&Delete Table'
      Hint = 'Delete Table|Deletes the table'
      ImageIndex = 58
      Control = dbrvMain
    end
    object rvActionTableMergeCells1: TrvActionTableMergeCells
      Category = 'RVE Table'
      Caption = '&Merge Cells'
      Hint = 'Merge Cells|Merges the selected cells'
      ImageIndex = 37
      Control = dbrvMain
    end
    object rvActionTableSplitCells1: TrvActionTableSplitCells
      Category = 'RVE Table'
      Caption = '&Split Cells...'
      Hint = 'Split Cells|Splits the selected cells'
      ImageIndex = 36
      Control = dbrvMain
    end
    object rvActionTableSelectTable1: TrvActionTableSelectTable
      Category = 'RVE Table'
      Caption = 'Select &Table'
      Hint = 'Select Table|Selects the table'
      ShortCut = 32780
      Control = dbrvMain
    end
    object rvActionTableSelectRows1: TrvActionTableSelectRows
      Category = 'RVE Table'
      Caption = 'Select Ro&ws'
      Hint = 'Select Rows|Selects rows'
      Control = dbrvMain
    end
    object rvActionTableSelectCols1: TrvActionTableSelectCols
      Category = 'RVE Table'
      Caption = 'Select Col&umns'
      Hint = 'Select Columns|Selects columns'
      Control = dbrvMain
    end
    object rvActionTableSelectCell1: TrvActionTableSelectCell
      Category = 'RVE Table'
      Caption = 'Select C&ell'
      Hint = 'Select Cell|Selects cell'
      Control = dbrvMain
    end
    object rvActionTableCellVAlignTop1: TrvActionTableCellVAlignTop
      Category = 'RVE Table'
      Caption = 'Align Cell To The &Top'
      Hint = 'Align Cell To The Top|Aligns cell contents to the top'
      ImageIndex = 65
      Control = dbrvMain
    end
    object rvActionTableCellVAlignMiddle1: TrvActionTableCellVAlignMiddle
      Category = 'RVE Table'
      Caption = 'Align Cell To The &Middle'
      Hint = 'Align Cell To The Middle|Aligns cell contents to the middle'
      ImageIndex = 66
      Control = dbrvMain
    end
    object rvActionTableCellVAlignBottom1: TrvActionTableCellVAlignBottom
      Category = 'RVE Table'
      Caption = 'Align Cell To The &Bottom'
      Hint = 'Align Cell To The Bottom|Aligns cell contents to the bottom'
      ImageIndex = 67
      Control = dbrvMain
    end
    object rvActionTableCellVAlignDefault1: TrvActionTableCellVAlignDefault
      Category = 'RVE Table'
      Caption = '&Default Cell Vertical Alignment'
      Hint = 
        'Default Cell Vertical Alignment|Sets default vertical alignment ' +
        'for the selected cells'
      Control = dbrvMain
    end
    object rvActionTableCellLeftBorder1: TrvActionTableCellLeftBorder
      Category = 'RVE Table'
      Caption = '&Left Border'
      Hint = 'Left Border|Shows or hides left cell border'
      ImageIndex = 69
      Control = dbrvMain
    end
    object rvActionTableCellRightBorder1: TrvActionTableCellRightBorder
      Category = 'RVE Table'
      Caption = '&Right Border'
      Hint = 'Right Border|Shows or hides right cell border'
      ImageIndex = 71
      Control = dbrvMain
    end
    object rvActionTableCellTopBorder1: TrvActionTableCellTopBorder
      Category = 'RVE Table'
      Caption = '&Top Border'
      Hint = 'Top Border|Shows or hides top cell border'
      ImageIndex = 70
      Control = dbrvMain
    end
    object rvActionTableCellBottomBorder1: TrvActionTableCellBottomBorder
      Category = 'RVE Table'
      Caption = '&Bottom Border'
      Hint = 'Bottom Border|Shows or hides bottom cell border'
      ImageIndex = 72
      Control = dbrvMain
    end
    object rvActionTableCellAllBorders1: TrvActionTableCellAllBorders
      Category = 'RVE Table'
      Caption = '&All Borders'
      Hint = 'All Borders|Shows or hides all cell borders'
      ImageIndex = 73
      Control = dbrvMain
    end
    object rvActionTableCellNoBorders1: TrvActionTableCellNoBorders
      Category = 'RVE Table'
      Caption = '&No Borders'
      Hint = 'No Borders|Hides all cell borders'
      ImageIndex = 68
      Control = dbrvMain
    end
    object rvActionTableProperties1: TrvActionTableProperties
      Category = 'RVE Table'
      Caption = 'Table &Properties...'
      Hint = 'Table Properties|Changes properties for the selected table'
      ImageIndex = 46
      Control = dbrvMain
    end
    object rvActionTableGrid1: TrvActionTableGrid
      Category = 'RVE Table'
      Caption = 'Show &Grid Lines'
      Hint = 'Show Grid Lines|Shows or hides table grid lines'
      ImageIndex = 75
    end
  end
  object RVStyle1: TRVStyle
    TextStyles = <
      item
        StyleName = 'Normal text'
        FontName = 'Tahoma'
        Size = 8
        Unicode = True
      end
      item
        StyleName = 'Heading'
        FontName = 'Tahoma'
        Size = 8
        Style = [fsBold]
        Color = clBlue
        Unicode = True
      end
      item
        StyleName = 'Subheading'
        FontName = 'Tahoma'
        Size = 8
        Style = [fsBold]
        Color = clNavy
        Unicode = True
      end
      item
        StyleName = 'Keywords'
        FontName = 'Tahoma'
        Size = 8
        Style = [fsItalic]
        Color = clMaroon
        Unicode = True
      end
      item
        StyleName = 'Jump 1'
        FontName = 'Tahoma'
        Size = 8
        Style = [fsUnderline]
        Color = clGreen
        Jump = True
        Unicode = True
      end
      item
        StyleName = 'Jump 2'
        FontName = 'Tahoma'
        Size = 8
        Style = [fsUnderline]
        Color = clGreen
        Jump = True
        Unicode = True
      end>
    ParaStyles = <
      item
        StyleName = 'Paragraph Style'
        Options = []
      end
      item
        StyleName = 'Centered'
        Alignment = rvaCenter
        Options = []
      end>
    ListStyles = <>
    DefUnicodeStyle = 65001
    DefCodePage = 65001
    InvalidPicture.Data = {
      07544269746D617036100000424D361000000000000036000000280000002000
      0000200000000100200000000000001000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000}
    Left = 192
    Top = 224
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        Caption = 'C'#244'ng c'#7909' chu'#7849'n'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 276
        FloatTop = 213
        FloatClientWidth = 90
        FloatClientHeight = 311
        ItemLinks = <
          item
            Item = dxBarButton15
            Visible = True
          end
          item
            Item = dxBarButton2
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton3
            Visible = True
          end
          item
            Item = dxBarButton4
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton5
            Visible = True
          end
          item
            Item = dxBarButton6
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton7
            Visible = True
          end
          item
            Item = dxBarButton8
            Visible = True
          end
          item
            Item = dxBarButton9
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton10
            Visible = True
          end
          item
            Item = dxBarButton11
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton12
            Visible = True
          end
          item
            Item = dxBarButton13
            Visible = True
          end
          item
            Item = dxBarButton14
            Visible = True
          end
          item
            Item = dxBarButton49
            Visible = True
          end
          item
            Item = dxBarButton1
            Visible = True
          end>
        Name = 'Custom 1'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'C'#244'ng c'#7909' thao t'#225'c tr'#234'n b'#7843'ng'
        DockControl = dxBarDockControl1
        DockedDockingStyle = dsTop
        DockedLeft = 279
        DockedTop = 0
        FloatLeft = 237
        FloatTop = 326
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = dxBarButton16
            Visible = True
          end
          item
            Item = dxBarButton17
            Visible = True
          end
          item
            Item = dxBarButton18
            Visible = True
          end
          item
            Item = dxBarButton19
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton20
            Visible = True
          end
          item
            Item = dxBarButton21
            Visible = True
          end
          item
            Item = dxBarButton22
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton23
            Visible = True
          end
          item
            Item = dxBarButton24
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton25
            Visible = True
          end
          item
            Item = dxBarButton26
            Visible = True
          end
          item
            Item = dxBarButton27
            Visible = True
          end>
        Name = 'Custom 2'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = False
        WholeRow = False
      end
      item
        Caption = 'C'#244'ng c'#7909' ph'#244'ng ch'#7919
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 52
        FloatLeft = 277
        FloatTop = 343
        FloatClientWidth = 217
        FloatClientHeight = 21
        ItemLinks = <
          item
            Item = dxBarControlContainerItem1
            Visible = True
          end
          item
            Item = dxBarControlContainerItem2
            Visible = True
          end>
        Name = 'Custom 3'
        OneOnRow = True
        Row = 2
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'C'#244'ng c'#7909' thao t'#225'c tr'#234'n b'#7843'ng b'#7893' sung'
        DockControl = dxBarDockControl1
        DockedDockingStyle = dsTop
        DockedLeft = 476
        DockedTop = 0
        FloatLeft = 277
        FloatTop = 343
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = dxBarButton29
            Visible = True
          end
          item
            Item = dxBarButton30
            Visible = True
          end
          item
            Item = dxBarButton31
            Visible = True
          end
          item
            Item = dxBarButton32
            Visible = True
          end
          item
            Item = dxBarButton28
            Visible = True
          end
          item
            Item = dxBarButton64
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton33
            Visible = True
          end
          item
            Item = dxBarButton34
            Visible = True
          end>
        Name = 'Custom 4'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = False
        WholeRow = False
      end
      item
        Caption = #272#7883'nh d'#7841'ng d'#7919' li'#7879'u'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 26
        FloatLeft = 378
        FloatTop = 386
        FloatClientWidth = 190
        FloatClientHeight = 370
        ItemLinks = <
          item
            Item = dxBarButton35
            Visible = True
          end
          item
            Item = dxBarButton36
            Visible = True
          end
          item
            Item = dxBarButton37
            Visible = True
          end
          item
            Item = dxBarButton38
            Visible = True
          end
          item
            Item = dxBarButton39
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton40
            Visible = True
          end
          item
            Item = dxBarButton41
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton42
            Visible = True
          end
          item
            Item = dxBarButton43
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton44
            Visible = True
          end
          item
            Item = dxBarButton46
            Visible = True
          end
          item
            Item = dxBarButton45
            Visible = True
          end
          item
            Item = dxBarButton47
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton48
            Visible = True
          end
          item
            Item = dxBarButton50
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton51
            Visible = True
          end
          item
            Item = dxBarButton52
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton53
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton54
            Visible = True
          end
          item
            Item = dxBarButton55
            Visible = True
          end
          item
            Item = dxBarButton56
            Visible = True
          end
          item
            Item = dxBarButton59
            Visible = True
          end
          item
            BeginGroup = True
            Item = dxBarButton57
            Visible = True
          end
          item
            Item = dxBarButton58
            Visible = True
          end>
        Name = 'Custom 5'
        OneOnRow = True
        Row = 1
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'C'#225'c thu'#7897'c t'#237'nh '#273#7883'nh d'#7841'ng t'#224'i li'#7879'u'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 414
        DockedTop = 0
        FloatLeft = 226
        FloatTop = 403
        FloatClientWidth = 104
        FloatClientHeight = 88
        ItemLinks = <
          item
            Item = dxBarButton60
            Visible = True
          end
          item
            Item = dxBarButton61
            Visible = True
          end
          item
            Item = dxBarButton63
            Visible = True
          end
          item
            Item = dxBarButton62
            Visible = True
          end>
        Name = 'Custom 6'
        OneOnRow = False
        Row = 0
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    Categories.WideStrings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Images = dmMain.imgWordModul
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = False
    Left = 216
    Top = 224
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = rvActionInsertSymbol1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Action = rvActionExport1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Action = rvActionPrintPreview1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Action = rvActionPrint1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Action = rvActionFind1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Action = rvActionReplace1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Action = rvActionCut1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Action = rvActionCopy1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton9: TdxBarButton
      Action = rvActionPaste1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Action = rvActionUndo1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton11: TdxBarButton
      Action = rvActionRedo1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton12: TdxBarButton
      Action = rvActionInsertPicture1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton13: TdxBarButton
      Action = rvActionInsertTable1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton14: TdxBarButton
      Action = rvActionInsertHyperlink1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Action = rvActionInsertFile1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton16: TdxBarButton
      Action = rvActionTableInsertColLeft1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton17: TdxBarButton
      Action = rvActionTableInsertColRight1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton18: TdxBarButton
      Action = rvActionTableInsertRowsAbove1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton19: TdxBarButton
      Action = rvActionTableInsertRowsBelow1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton20: TdxBarButton
      Action = rvActionTableDeleteRows1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton21: TdxBarButton
      Action = rvActionTableDeleteCols1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton22: TdxBarButton
      Action = rvActionTableDeleteTable1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton23: TdxBarButton
      Action = rvActionTableMergeCells1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton24: TdxBarButton
      Action = rvActionTableSplitCells1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton25: TdxBarButton
      Action = rvActionTableCellVAlignTop1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton26: TdxBarButton
      Action = rvActionTableCellVAlignMiddle1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton27: TdxBarButton
      Action = rvActionTableCellVAlignBottom1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton28: TdxBarButton
      Action = rvActionTableCellAllBorders1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton29: TdxBarButton
      Action = rvActionTableCellLeftBorder1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton30: TdxBarButton
      Action = rvActionTableCellRightBorder1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton31: TdxBarButton
      Action = rvActionTableCellTopBorder1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton32: TdxBarButton
      Action = rvActionTableCellBottomBorder1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton33: TdxBarButton
      Action = rvActionTableGrid1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton34: TdxBarButton
      Action = rvActionTableProperties1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton35: TdxBarButton
      Action = rvActionFontBold1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton36: TdxBarButton
      Action = rvActionFontItalic1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton37: TdxBarButton
      Action = rvActionFontUnderline1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton38: TdxBarButton
      Action = rvActionFontStrikeout1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton39: TdxBarButton
      Action = rvActionFontOverline1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton40: TdxBarButton
      Action = rvActionFontGrowOnePoint1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton41: TdxBarButton
      Action = rvActionFontShrinkOnePoint1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton42: TdxBarButton
      Action = rvActionFontColor1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton43: TdxBarButton
      Action = rvActionFontBackColor1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton44: TdxBarButton
      Action = rvActionAlignLeft1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton45: TdxBarButton
      Action = rvActionAlignRight1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton46: TdxBarButton
      Action = rvActionAlignCenter1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton47: TdxBarButton
      Action = rvActionAlignJustify1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton48: TdxBarButton
      Action = rvActionParaList1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton49: TdxBarButton
      Action = rvActionInsertHLine1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton50: TdxBarButton
      Action = rvActionParaNumbering1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton51: TdxBarButton
      Action = rvActionIndentDec1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton52: TdxBarButton
      Action = rvActionIndentInc1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton53: TdxBarButton
      Action = rvActionParaColor1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton54: TdxBarButton
      Action = rvActionLineSpacing1001
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton55: TdxBarButton
      Action = rvActionLineSpacing1501
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton56: TdxBarButton
      Action = rvActionLineSpacing2001
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton57: TdxBarButton
      Action = rvActionParagraph1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton58: TdxBarButton
      Action = rvActionParaBorder1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton59: TdxBarButton
      Action = rvActionWordWrap1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton60: TdxBarButton
      Action = rvActionBackground1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton61: TdxBarButton
      Action = rvActionColor1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton62: TdxBarButton
      Action = rvActionItemProperties1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton63: TdxBarButton
      Action = rvActionFillColor1
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton64: TdxBarButton
      Action = rvActionTableCellNoBorders1
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'Ph'#244'ng ch'#7919
      Category = 0
      Hint = 'Ph'#244'ng ch'#7919
      Visible = ivAlways
      Control = cmbFont
    end
    object dxBarControlContainerItem2: TdxBarControlContainerItem
      Caption = 'C'#7905' ch'#7919
      Category = 0
      Hint = 'C'#7905' ch'#7919
      Visible = ivAlways
      Control = cmbFontSize
    end
  end
  object RVAPopupMenu1: TRVAPopupMenu
    ActionList = ActionList1
    Left = 312
    Top = 224
  end
  object ColorDialog1: TColorDialog
    OnShow = ColorPickerShow
    Left = 280
    Top = 226
  end
  object OpenDialog1: TOpenDialog
    Left = 352
    Top = 224
  end
  object dsDocEditor: TDataSource
    DataSet = memDocEditor
    Left = 80
    Top = 256
  end
  object memDocEditor: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 80
    Top = 224
    object memDocEditorCONTENT: TBlobField
      FieldName = 'CONTENT'
    end
  end
end
