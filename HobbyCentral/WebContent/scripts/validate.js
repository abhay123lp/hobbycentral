function validateForm() {
	var qry = document.getElementById("qry");
	if (qry.value == "") {
		alert("Search query box cannot be empty");
//		event.returnValue = false;
		return false;
	}
//	event.returnValue = true;
	return true;
}