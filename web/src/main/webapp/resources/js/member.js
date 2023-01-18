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

/*function login(){
	if( emptyCheck() ){
		$.ajax({
			url: 'smartLogin',
			data: { id:$('#id').val(), pw:$('#password').val() },
			method: "POST", 
			success: function( response ){
				console.log( response )
				if( response ){
					location = '/web';
				}else{
					alert('아이디나 비밀번호가 일치하지 않습니다');
				}
			},error: function(req,text){
				alert(text+':'+req.status);
			}
		});
	}
}*/