function validateRecoForm(thisform) {
	var location = -1;
	var activitytype = -1;
	var extraequipment = -1;

	for (i = 0; i < thisform.location.length; i++) {
		//alert(thisform.location[i].checked);
		if (thisform.location[i].checked) {
			location = 1;
		}
	}
	for (j = 0; j < thisform.activity_type.length; j++) {
		//alert(thisform.activity_type[j].checked);
		if (thisform.activity_type[j].checked) {
			activitytype = 1;
		}
	}
	for (k = 0; k < thisform.extra_equipment.length; k++) {
		//alert(thisform.extra_equipment[k].checked);
		if (thisform.extra_equipment[k].checked) {
			extraequipment = 1;
		}
	}
	if (location == -1) {
		alert ("Select location attribute");
		return false;
	}
	if (activitytype == -1) {
		alert("Select activity type attribute");
		return false;
	}
	if (extraequipment == -1) {
		alert("Select extra equipment attribute");
		return false;
	}
	return true;
}
