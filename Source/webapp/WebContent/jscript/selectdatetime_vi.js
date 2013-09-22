var date = new Calendar();
    date.kindOfBrowser();

function funcCalendar(LayerName, TextBoxName, TextimgName, valuedate) {
   date.setCalendar(LayerName, TextBoxName, TextimgName, valuedate);
   date.showCalendar();
}
function funcSetDate(day, month, year, TextBoxName){
   var stDay = (day < 10) ? '0' + day : '' + day;
   var stMonth = (month < 10) ? '0' + month : '' + month;
   document.frmMain[TextBoxName].value = stDay + '/' + stMonth + '/' + year
   date.hideCalendar();
}
var timer = new Timer();
    timer.kindOfBrowser();
function funcTimer(LayerName, TextBoxName, TextimgName, valuetime) {
   timer.setTimer(LayerName, TextBoxName, TextimgName, valuetime);
   timer.showTimer();
}
function funcSetTime(hour, minute, TextBoxName, setValue){
	var stHour = (hour < 10) ? '0' + hour : '' + hour;
	var stMinute = (minute < 10) ? '0' + minute : '' + minute;
	if (setValue == 1)document.frmMain[TextBoxName].value = stHour + ':' + stMinute;
	timer.hideTimer();
}