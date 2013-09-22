<html>

  <head>
    <title>JS Calendar</title>
    <script type="text/javascript" src="../dateutil_vi.js"></script>
    <script type="text/javascript" src="calendar.js"></script>
    <script type="text/javascript" src="calendar-setup.js"></script>
    <script type="text/javascript" src="calendar-vi.js"></script>
    <style type="text/css"> @import url("calendar-system.css"); </style>
  </head>

  <body>
 	<table width="506" border="0">
 	<form name="frmMain" method=get>
      <tr>
        <td>
          <input name="datefrom" type="text" id="form-1" />
          <button type="submit" id="button-1">...</button>
          <script type="text/javascript">
    		Calendar.setup({
        	inputField     :    "form-1",      // id of the input field
        	ifFormat       :    "%d/%m/%Y",       // format of the input field
        	//showsTime      :    true,            // will display a time selector
			//timeFormat     :    "24",
			flatCallback   :   "google.com",
        	button         :    "button-1",   // trigger for the calendar (button ID)
        	singleClick    :    true,           // Single-click mode
        	step           :    1                // show all years in drop-down boxes (instead of every other year as default)
    		});
          </script>
        </td>
      </tr>
	  
      <tr>
        <td>
          <input type="text" id="form-2" />
          <button type="submit" id="button-2">...</button>
          <script type="text/javascript">
    		Calendar.setup({
        	inputField     :    "form-2",      // id of the input field
        	ifFormat       :    "%d/%m/%Y",       // format of the input field
        	//showsTime      :    true,            // will display a time selector
			//timeFormat     :    "24",
        	button         :    "button-2",   // trigger for the calendar (button ID)
        	singleClick    :    false,           // double-click mode
        	step           :    1                // show all years in drop-down boxes (instead of every other year as default)
    		});
          </script>
        </td>
      </tr>
	  
      <tr>
		<td>
		<div style="float: right; margin-left: 1em; margin-bottom: 1em;" id="calendar-container"></div>
			<input name="date" id="form-3" value="22/12/2008 80:00" type="text">
			<button type="reset" id="button-3">...</button>
		<script type="text/javascript">
			function Returned(cal) {
				cal.hide();
				alert("test");
			    return true;
			};
    		Calendar.setup({    		
        	inputField     :    "form-3",      // id of the input field
        	ifFormat       :    "%d/%m/%Y %H:%M",       // format of the input field
        	showsTime      :    true,            // will display a time selector
			timeFormat     :    "24",
    		onClose    	   : 	Returned, // our callback function			
        	button         :    "button-3",   // trigger for the calendar (button ID)
        	singleClick    :    true,           // singleClick mode
        	step           :    1               // show all years in drop-down boxes (instead of every other year as default)
    		});    	
		</script>
		
		<td>
      </tr>
      <tr>
      <td>
      	      <input type="button" value="chesk date" onclick="javascript:cheskform();"> 
      </td>
      </tr>
      </form>
    </table>
    <select size="1" name="D1">
	<option>abc</option>
	<option>cbe</option>
	</select> 
    <script language=javascript>
    function cheskform(){
    //alert("ok");
	    if (checkDate(document.frmMain.datefrom, true)!='TRUE'){
            alert("co loi");
			document.frmMain.datefrom.focus();
         }else alert("ok");
    }    
    </script>       
  </body>
</html>
