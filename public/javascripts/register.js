function checkNonEmpty(inputField, helpText) {
    if(inputField.value.length == 0) {
        if(helpText != null)
            helpText.innerHTML = "不能修改为空值";
        return false;
    }
    else {
        if(helpText != null) {
            helpText.innerHTML = "";
        }
        return true;
    }
}

function checkRegister(form) {
    if(checkNonEmpty(form['title'], form['title_help']) &&
        checkNonEmpty(form['content'], form['content_help']) &&
        checkNonEmpty(form['tagName'], form['tagName_help']) &&
        checkNonEmpty(form['type'], form['type_help'])) {
        return true;
    }
    else {
        document.getElementById('errorMessage').innerHTML = '请输入完整信息';
        return false;
    }
}