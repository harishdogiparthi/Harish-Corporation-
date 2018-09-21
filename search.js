function populateControls(count) {
	var colNum = parseInt(document.frm.colCount.value)
	var columnString = ""
	if(colNum > 0) {
		columnString = columnString + eval("document.frm.column1"+count).value+"#";
	}
	if(colNum > 1) {
		columnString = columnString + eval("document.frm.column2"+count).value+"#";
	}
	if(colNum > 2) {
		columnString = columnString + eval("document.frm.column3"+count).value+"#";	
	}
	if(colNum > 3) {
		columnString = columnString + eval("document.frm.column4"+count).value+"#";
	}
	if(colNum > 4) {
		columnString = columnString + eval("document.frm.column5"+count).value+"#";
	}
	if(colNum > 5) {
		columnString = columnString + eval("document.frm.column6"+count).value+"#";
	}
	if(colNum > 6) {
		columnString = columnString + eval("document.frm.column7"+count).value+"#";
	}
	if(colNum > 7) {
		columnString = columnString + eval("document.frm.column8"+count).value+"#";
	}
	if(colNum > 8) {
		columnString = columnString + eval("document.frm.column9"+count).value+"#";
	}
	if(colNum > 9) {
		columnString = columnString + eval("document.frm.column10"+count).value;
	}
	
	var hidcolNum = parseInt(document.frm.hidcolCount.value)
	var hidcolumnString = ""
	if(hidcolNum > 0) {
		hidcolumnString = hidcolumnString + eval("document.frm.hidColumn1"+count).value+"#";
	}
	if(hidcolNum > 1) {
		hidcolumnString = hidcolumnString + eval("document.frm.hidColumn2"+count).value+"#";
	}
	if(hidcolNum > 2) {
		hidcolumnString = hidcolumnString + eval("document.frm.hidColumn3"+count).value+"#";	
	}
	if(hidcolNum > 3) {
		hidcolumnString = hidcolumnString + eval("document.frm.hidColumn4"+count).value+"#";
	}
	if(hidcolNum > 4) {
		hidcolumnString = hidcolumnString + eval("document.frm.hidColumn5"+count).value+"#";
	}
	if(hidcolNum > 5) {
		hidcolumnString = hidcolumnString + eval("document.frm.hidColumn6"+count).value+"#";
	}
	if(hidcolNum > 6) {
		hidcolumnString = hidcolumnString + eval("document.frm.hidColumn7"+count).value+"#";
	}
	if(hidcolNum > 7) {
		hidcolumnString = hidcolumnString + eval("document.frm.hidColumn8"+count).value+"#";
	}
	if(hidcolNum > 8) {
		hidcolumnString = hidcolumnString + eval("document.frm.hidColumn9"+count).value+"#";
	}
	if(hidcolNum > 9) {
		hidcolumnString = hidcolumnString + eval("document.frm.hidColumn10"+count).value;
	}
	
	
	parent.populateControlsMain(columnString,hidcolumnString);	
}

function pageload()
{
	parent.ifrm1.location.href="../Trans/Sblank.jsp"
}
	
function populateControlsMain(ColString,hidColString) {
	//alert('--'+ColString);
	var ColArr = ColString.split("#");
	var formName = document.Bank.formName.value;
	var columnControl = document.Bank.columnControl.value;
	//alert(columnControl);
	var control = "";

	var columnControlArr = columnControl.split("|"); 

	for (i=0;i<columnControlArr.length;i++) {
		if (columnControlArr[i].indexOf("col1") != -1) {
			if(ColArr.length>0) {
				
				control = columnControlArr[i].substring(columnControlArr[i].indexOf(":")+1,columnControlArr[i].length);
				if(opener.document.getElementById(control).value != ColArr[0]) {
					clearControls();
				}
				opener.document.getElementById(control).value = ColArr[0];
			}
		}
		if (columnControlArr[i].indexOf("col2") != -1) {
			if(ColArr.length>1) {
				control = columnControlArr[i].substring(columnControlArr[i].indexOf(":")+1,columnControlArr[i].length); 
				opener.document.getElementById(control).value = ColArr[1];
			}
		}
		if (columnControlArr[i].indexOf("col3") != -1) {
			if(ColArr.length>2) {
				control = columnControlArr[i].substring(columnControlArr[i].indexOf(":")+1,columnControlArr[i].length); 
				opener.document.getElementById(control).value = ColArr[2];
			}
		}
		if (columnControlArr[i].indexOf("col4") != -1) {
			if(ColArr.length>3) {
				control = columnControlArr[i].substring(columnControlArr[i].indexOf(":")+1,columnControlArr[i].length); 
				opener.document.getElementById(control).value = ColArr[3];
			}
		}
		if (columnControlArr[i].indexOf("col5") != -1) {
			if(ColArr.length>4) {
				control = columnControlArr[i].substring(columnControlArr[i].indexOf(":")+1,columnControlArr[i].length); 
				opener.document.getElementById(control).value = ColArr[4];
			}
		}
		if (columnControlArr[i].indexOf("col6") != -1) {
			if(ColArr.length>5) {
				control = columnControlArr[i].substring(columnControlArr[i].indexOf(":")+1,columnControlArr[i].length); 
				opener.document.getElementById(control).value = ColArr[5];
			}
		}
		if (columnControlArr[i].indexOf("col7") != -1) {
			if(ColArr.length>6) {
				control = columnControlArr[i].substring(columnControlArr[i].indexOf(":")+1,columnControlArr[i].length); 
				opener.document.getElementById(control).value = ColArr[6];
			}
		}
		if (columnControlArr[i].indexOf("col8") != -1) {
			if(ColArr.length>7) {
				control = columnControlArr[i].substring(columnControlArr[i].indexOf(":")+1,columnControlArr[i].length); 
				opener.document.getElementById(control).value = ColArr[7];
			}
		}
		if (columnControlArr[i].indexOf("col9") != -1) {
			if(ColArr.length>8) {
				control = columnControlArr[i].substring(columnControlArr[i].indexOf(":")+1,columnControlArr[i].length); 
				opener.document.getElementById(control).value = ColArr[8];
			}
		}
		if (columnControlArr[i].indexOf("col10") != -1) {
			if(ColArr.length>9) {
				control = columnControlArr[i].substring(columnControlArr[i].indexOf(":")+1,columnControlArr[i].length); 
				opener.document.getElementById(control).value = ColArr[9];
			}
		}		
	}
	
	var hidColArr = hidColString.split("#");
	var formName = document.Bank.formName.value;
	var hidColumnControl = document.Bank.hidColumnControl.value;
	//alert(columnControl);
	var hidcontrol = "";

	var hidColumnControlArr = hidColumnControl.split("|"); 

	for (i=0;i<hidColumnControlArr.length;i++) {
		if (hidColumnControlArr[i].indexOf("hidcol1") != -1) {
			if(hidColArr.length>0) {
				hidcontrol = hidColumnControlArr[i].substring(hidColumnControlArr[i].indexOf(":")+1,hidColumnControlArr[i].length); 				
				opener.document.getElementById(hidcontrol).value = hidColArr[0];
			}
		}
		if (hidColumnControlArr[i].indexOf("hidcol2") != -1) {
			if(hidColArr.length>1) {
				hidcontrol = hidColumnControlArr[i].substring(hidColumnControlArr[i].indexOf(":")+1,hidColumnControlArr[i].length); 
				opener.document.getElementById(hidcontrol).value = hidColArr[1];
			}
		}
		if (hidColumnControlArr[i].indexOf("hidcol3") != -1) {
			if(hidColArr.length>2) {
				hidcontrol = hidColumnControlArr[i].substring(hidColumnControlArr[i].indexOf(":")+1,hidColumnControlArr[i].length); 
				opener.document.getElementById(hidcontrol).value = hidColArr[2];
			}
		}
		if (hidColumnControlArr[i].indexOf("hidcol4") != -1) {
			if(hidColArr.length>3) {
				hidcontrol = hidColumnControlArr[i].substring(hidColumnControlArr[i].indexOf(":")+1,hidColumnControlArr[i].length); 
				opener.document.getElementById(hidcontrol).value = hidColArr[3];
			}
		}
		if (hidColumnControlArr[i].indexOf("hidcol5") != -1) {
			if(hidColArr.length>4) {
				hidcontrol = hidColumnControlArr[i].substring(hidColumnControlArr[i].indexOf(":")+1,hidColumnControlArr[i].length); 
				opener.document.getElementById(hidcontrol).value = hidColArr[4];
			}
		}
		if (hidColumnControlArr[i].indexOf("hidcol6") != -1) {
			if(hidColArr.length>5) {
				hidcontrol = hidColumnControlArr[i].substring(hidColumnControlArr[i].indexOf(":")+1,hidColumnControlArr[i].length); 
				opener.document.getElementById(hidcontrol).value = hidColArr[5];
			}
		}
		if (hidColumnControlArr[i].indexOf("hidcol7") != -1) {
			if(hidColArr.length>6) {
				hidcontrol = hidColumnControlArr[i].substring(hidColumnControlArr[i].indexOf(":")+1,hidColumnControlArr[i].length); 
				opener.document.getElementById(hidcontrol).value = hidColArr[6];
			}
		}
		if (hidColumnControlArr[i].indexOf("hidcol8") != -1) {
			if(hidColArr.length>7) {
				hidcontrol = hidColumnControlArr[i].substring(hidColumnControlArr[i].indexOf(":")+1,hidColumnControlArr[i].length); 
				opener.document.getElementById(hidcontrol).value = hidColArr[7];
			}
		}
		if (hidColumnControlArr[i].indexOf("hidcol9") != -1) {
			if(hidColArr.length>8) {
				hidcontrol = hidColumnControlArr[i].substring(hidColumnControlArr[i].indexOf(":")+1,hidColumnControlArr[i].length); 
				opener.document.getElementById(hidcontrol).value = hidColArr[8];
			}
		}
		if (hidColumnControlArr[i].indexOf("hidcol10") != -1) {
			if(hidColArr.length>9) {
				hidcontrol = hidColumnControlArr[i].substring(hidColumnControlArr[i].indexOf(":")+1,hidColumnControlArr[i].length); 
				opener.document.getElementById(hidcontrol).value = hidColArr[9];
			}
		}		
	}
	
	try
	  {
		opener.validateControls();
	  }
	catch(err)
	  {	  
	  }	
	self.close();
	
}

function clearControls() {
	var clearColumns = document.Bank.clearColumns.value;
	if(clearColumns!="") {
	var clearColumnsArr = clearColumns.split("|");
		for(var i=0;i<clearColumnsArr.length;i++) {
			opener.document.getElementById(clearColumnsArr[i]).value ="";
		}
	}
}
	