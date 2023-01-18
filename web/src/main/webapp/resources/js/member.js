function checkAll() {
	if($("#check_all").is(':checked')) {
		$("input[name=check_list]").prop("checked", true);
	} else {
		$("input[name=check_list]").prop("checked", false);
	}
}

$('.login').click(function(){
	login();
});
$('#password').keydown(function(e){
	if(e.keyCode==13) login();
})