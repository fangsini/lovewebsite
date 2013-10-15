function validate_required(field, alerttxt) {
	with(field) {
		if (value == null || value == "") {
			alert(alerttxt);
			return false;
		} else {
			return true;
		}
	}
}
function check_form(thisform) {
	with(thisform) {
		if (validate_required(email, "Email不能为空！") == false) {
			email.focus();
			return false;
		}
		if (validate_required(password, "密码不能为空！") == false) {
			password.focus();
			return false;
		}
	}
}