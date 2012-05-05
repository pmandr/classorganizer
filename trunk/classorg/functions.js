function validateLoginRequest(){
	if(''==document.getElementById('login').value){
		alert("O login não foi inserido!");return;
	}
	if(''==document.getElementById('password').value){
		alert("A senha não foi inserida!");return;
	}
	document.getElementById('form_login').submit();
}