function checkNonEmpty(inputField, helpText) {
	if(inputField.value.length == 0) {
		if(helpText != null)
			helpText.innerHTML = "不能为空";
	}
	else {
		if(helpText != null) {
			helpText.innerHTML = "";
		}
		return true;
	}
}

function loginCheck(form) {
	if(checkNonEmpty(form['email'], form['email_help']) &&
		checkNonEmpty(form['password'], form['password_help'])) {
		return true;
	}
	else {
		document.getElementById('errorMessage').innerHTML = '请输入帐号和密码';
		return false;
	}
}