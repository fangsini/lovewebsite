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
		if (validate_required(title, "标题不能为空！") == false) {
			title.focus();
			return false;
		}
		if (validate_required(content, "求助资料不能为空！") == false) {
			content.focus();
			return false;
		}
		if (validate_required(photo, "必需上传必要的材料,如图片等！") == false) {
			photo.focus();
			return false;
		}
	}
}