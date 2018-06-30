
jQuery.validator.addMethod("temExclamacao", function (value, element) {
    if (value.indexOf("!") >= 0) {
        return true
    } else {
        return false
    }
}, "Digite um !")
jQuery.validator.addMethod("temPonto", function (value, element) {
    if (value.indexOf(".") >= 0) {
        return true
    } else {
        return false
    }
}, "Digite um .")
jQuery.validator.addMethod("espaco", function (value, element) {
    if (value.indexOf("") >= 0) {
        return true
    } else {
        return false
    }
}, "Selecione uma opção")




