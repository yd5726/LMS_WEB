function checkAll() {
	if($("#check_all").is(':checked')) {
		$("input[name=check_list]").prop("checked", true);
	} else {
		$("input[name=check_list]").prop("checked", false);
	}
}