Option Explicit

    LaunchMacro

    Sub LaunchMacro() 
      Dim xl
      Dim xlBook      

      
      Set xl = CreateObject("Excel.application")
      Set xlBook = xl.Workbooks.Open("C:\projects\Omni\Excel Templates\ETLSummaryTemplate.xlsm", 0, True)   
	  xl.Visible = False
      xl.Application.run "ETLSummaryTemplate.xlsm!Summary_Module.Summary_Macro"
      xl.DisplayAlerts = False      
      xlBook.saved = False
	  xlBook.Close False 
      xl.activewindow.close
      xl.Application.Quit

	  Set xlBook = Nothing
      Set xl = Nothing

    End Sub 