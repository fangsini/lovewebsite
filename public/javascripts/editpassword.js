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
		if (validate_required(previous, "密码不能为空！") == false) {
			previous.focus();
			return false;
		}
		if (validate_required(newpass, "密码不能为空！") == false) {
			newpass.focus();
			return false;
		}
		if (validate_required(newpass2, "密码不能为空！") == false) {
			newpass2.focus();
			return false;
		}
		if(newpass.value.trim()!=newpass2.value.trim()){
			newpass.value="";
			newpass2.value="";
			alert("输入的两次密码不一致！")
			return false;
		}
	}
}