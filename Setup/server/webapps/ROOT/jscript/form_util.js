//
// selChoose: select object, include form and select object, Ex: frmPhanCong.selChoose
// text: text prefix
function doSearch(selChoose, text, btnAdd){
	for(var i = 0; i < selChoose.length; i++){
		selChoose.options[i].selected = false;
	}
	for(var i = 0; i < selChoose.length; i++){
		if(selChoose.options[i].text.toLowerCase().indexOf(text.toLowerCase()) == 0){			
			selChoose.options[i].selected = true;
			if(btnAdd != null)
				btnAdd.disabled = false;
   			break;
   		}
   	}
}

// globals variable
var listText; // display strings
var listValue; // keys
function doSearch2(selChoose, selChoseList, text, btnAdd){
	//store values and keys
	//if(listText == null){
		listText = new Array(selChoose.length);
		listValue = new Array(selChoose.length);
		for(var i = 0; i < selChoose.length; i++){
			listText[i] = selChoose.options[i].text;
			listValue[i] = selChoose.options[i].value;
		}
	//}
	// remove all list in the select box
	while(selChoose.length != 0){
		selChoose.options[0] = null;
	}

	// add to list the search result
	// add the string that matched the text first
	for(var i = 0; i < listText.length; i ++){
		if(listText[i].toLowerCase().indexOf(text.toLowerCase()) == 0){			
			isChosen = false;
			// search in the destination list
			if(!isChosen && selChoseList != null){
				for(var ii = 0; ii < selChoseList.length; ii++){
					if(selChoseList.options[ii].value == (listValue[i])){
						isChosen = true;
						break;
					}
				}	
			}
			if(!isChosen){
				opt = new Option();
		   		opt.value = listValue[i];
	    		opt.text = listText[i];
				selChoose.options[selChoose.length] = opt;
			}
   		}
   	}
	// add remaining search result
	for (var i = 0; i < listText.length; i ++){	
		if(listText[i].toLowerCase().indexOf(text.toLowerCase()) >= 0){
			isChosen = false;
			// search in the source list first
			for(var ii = 0; ii < selChoose.length; ii++){
				if(selChoose.options[ii].value == (listValue[i])){
					isChosen = true;
					break;
				}
			}
			// search in the destination list
			if(!isChosen && selChoseList != null){
				for(var ii = 0; ii < selChoseList.length; ii++){
					if(selChoseList.options[ii].value == (listValue[i])){
						isChosen = true;
						break;
					}
				}	
			}
			if(!isChosen){
				opt = new Option();
		   		opt.value = listValue[i];
	    		opt.text = listText[i];
				selChoose.options[selChoose.length] = opt;
			}
		}
    }

	// add remaining
	for (var i = 0; i < listText.length; i ++){	
			isChosen = false;
			// search in the source list first
			for(var ii = 0; ii < selChoose.length; ii++){
				if(selChoose.options[ii].value == (listValue[i])){
					isChosen = true;
					break;
				}
			}
			// search in the destination list
			if(!isChosen && selChoseList != null){
				for(var ii = 0; ii < selChoseList.length; ii++){
					if(selChoseList.options[ii].value == (listValue[i])){
						isChosen = true;
						break;
					}
				}	
			}
			if(!isChosen){
				opt = new Option();
		   		opt.value = listValue[i];
	    		opt.text = listText[i];
				selChoose.options[selChoose.length] = opt;
			}
    }

	// set forcus
	for(var i = 0; i < selChoose.length; i++){
		if(selChoose.options[i].text.toLowerCase().indexOf(text.toLowerCase()) == 0){			
			selChoose.options[i].selected = true;
			if(btnAdd != null)
				btnAdd.disabled = false;
   			break;
   		}
   	}
}
// end of search helper

//
// selection hepler
//selRemove: select the list to get from
//selAdd: select the list to add
function funcChooseList(selRemove, selAdd){
  	var lenAdd = selAdd.length;
  	var lenRemove = selRemove.length;
  	var minSelect =- 1;
  	if (lenRemove != 0) {
    	var i = 0;
    	while (i < lenRemove){
			if (selRemove.options[i].selected == true){
				if (minSelect == -1)
					minSelect = i;
				opt = new Option();
				opt.text = selRemove.options[i].text;
				opt.value = selRemove.options[i].value;
				selAdd.options[lenAdd ++] = opt;
				selRemove.options[i].selected = false;
				selRemove.options[i] = null;
				-- lenRemove;
			}
			else ++i;
		}
  	}
  	if ((lenRemove > 0) && (minSelect != -1)){
    	if (minSelect < lenRemove) 
			selRemove.options[minSelect].selected = true;
    	else 
			selRemove.options[0].selected = true;
  	}
}

function funcCopyList(selFrom, selTo){
	
  	var lenFrom = selFrom.length;
  	var lenTo = selTo.length;
   	var i = 0;
	for(i = 0; i< lenTo; i++){
		selTo.options[i] = null;
	}
	
   	for(i = 0; i< lenFrom; i++){		
		opt = new Option();
		opt.text = selFrom.options[i].text;
		opt.value = selFrom.options[i].value;
		selTo.options[i] = opt;
		if(selTo.options[i].value == lamviecchinh) selTo.options[i].selected = true;
	} 		
}
//
// Enable or disable button depend on the list.
// listSelect: select
// btnEffect: button
function onChangeList(listSelect, btnEffect){
	var index = listSelect.options.selectedIndex;
	var length = listSelect.length;
	if(index != -1 && index < length)
		btnEffect.disabled = false;
	else
		btnEffect.disabled = true;
}
