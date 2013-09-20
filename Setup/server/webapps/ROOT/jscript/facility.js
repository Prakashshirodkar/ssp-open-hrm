<!-- 

function funcSelectPage(status){
   if (status=='upper'){
     var _index = document.formMain.selPage1.selectedIndex;
     var _value = document.formMain.selPage1.options[_index].value;
   }
   else{
     var _index = document.formMain.selPage2.selectedIndex;
     var _value = document.formMain.selPage2.options[_index].value;
   }
   document.form1.selPage.value=_value;
   document.form1.submit();
}

//---------------------------------------------------------------
function setValueSort(_string,_position){
  if (_position>0){
	  var ch  = _string.substring(1,2);
	  var pos = eval(_string.substring(0,1));
	  if (pos==_position) {
		  if (ch=='A') ch='D';
		  else ch='A';
	  }
      return (_position+ch);
  }
  else return("1A");
  }
//---------------------------------------------------------------

function sortPostData(col){
   frm=document.form1;
   frm.sortPost.value=setValueSort(frm.sortPost.value,col);
   frm.selPage.value="1";
   frm.submit();
}
//---------------------------------------------------------------

function sortPost(col){
   frm=document.form1;
   frm.sort.value=setValueSort(frm.sort.value,col);
   frm.submit();
}
//---------------------------------------------------------------

function tim(){
   frm1=document.formMain;
   frm2=document.form1;
   if((frm1.param1.value) == null)
   	frm2.param1.value="";
   else 
   	frm2.param1.value=frm1.param1.value;
   if((frm1.param2.value) == null)
   	frm2.param2.value="";
   else 
   	frm2.param2.value=frm1.param2.value;
   if((frm1.param3.value) == null)
   	frm2.param3.value="";
   else
   	frm2.param3.value=frm1.param3.value;
   if((frm1.param4.value) == null)
   	frm2.param4.value="";
   else
   	frm2.param4.value=frm1.param4.value;
   
   frm2.selPage.value="1";
   frm1.submit();
}

//---------------------------------------------------------------

function ctGiaoThong(ID,ID1,ID2){
   frm=document.form1;
   frm.action = "ssp.servlet.facility.ChiTietGiaoThong";
   frm.facilityID.value = ID;
   frm.positionID.value = ID1;
   frm.statusID.value = ID2;
   frm.submit();
}

//---------------------------------------------------------------
function ctThietBi(ID,ID1,ID2){
   frm=document.form1;
   frm.action = "ssp.servlet.facility.ChiTietThietBi";
   frm.facilityID.value = ID;
   frm.positionID.value = ID1;
   frm.statusID.value = ID2;
   frm.submit();
}
//---------------------------------------------------------------
function ctCoBan(ID,ID1,ID2){
   frm=document.form1;
   frm.action = "ssp.servlet.facility.ChiTietCoBan";
   frm.facilityID.value = ID;
   frm.positionID.value = ID1;
   frm.statusID.value = ID2;
   frm.submit();
}
//---------------------------------------------------------------

function ctSuCo(ID){
   frm=document.form1;
   frm.action = "ssp.servlet.facility.ChiTietSuCo";
   frm.suCoID.value = ID; 
   frm.submit();
}

//---------------------------------------------------------------

function ctPhong(so,ten,actionname){
   frm=document.form1;
   frm.action = actionname;
   frm.soPhong.value = so;
   frm.tenPhong.value = ten; 
   frm.submit();
}
//---------------------------------------------------------------
function troVeMain(actionname){
  frm=document.form1;
  frm.action = actionname;
  frm.submit();
 }
//---------------------------------------------------------------

function back(){
   history.back();
 }
//---------------------------------------------------------------
function ttFacility(actionname){
   frm1=document.form1;
   frm1.action = actionname;
   frm1.submit();
}
//---------------------------------------------------------------

//-->
