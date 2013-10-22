function checkNonEmpty(inputField) {
	if(inputField.value.length == 0) {
		return false;
	}
	else {
		return true;
	}
}

function validateRegEx(regex, inputStr) {
	if(!regex.test(inputStr)) {
		return false;
	}
	else {
		return true;
	}
}

function validateEmail(inputField) {
	return validateRegEx(/^[\w\.-_\+]+@[\w-]+(\.\w{2,4})+$/,inputField.value);
}

function checkEmail(inputField) {
	if(checkNonEmpty(inputField)) {
		if(validateEmail(inputField)) {
			return true;
		}else {
			document.getElementById('errorMessage').innerHTML = "请输入正确的邮箱地址";
		}
	}
	else {
		document.getElementById('errorMessage').innerHTML = "帐号不能为空";
		return false;
	}
}

function checkPassword(inputField) {
	if(checkNonEmpty(inputField)) {
		return true;
	}
	else {
		document.getElementById('errorMessage').innerHTML = "密码不能为空";
		return false;
	}
}

function loginCheck(form) {
	if(checkNonEmpty(form['email']) &&
		checkNonEmpty(form['password'])) {
		return true;
	}
	else {
		document.getElementById('errorMessage').innerHTML = '请输入帐号和密码';
		return false;
	}
}