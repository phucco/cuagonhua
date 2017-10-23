

function noCopyMouse(e) 
{ 
    var isRight = (e.button) ? (e.button == 2) : (e.which == 3); 
    if(isRight) 
    { 
        return false; 
    } 
    return true; 
} 


function lTrim(sString){
    while (sString.substring(0,1) == ' '){
        sString = sString.substring(1, sString.length);
    }
    return sString;
}

function rTrim(sString){
    while (sString.substring(sString.length-1, sString.length) == ' '){
        sString = sString.substring(0,sString.length-1);
    }
    return sString;
}

function Trim(sString) {
    sString = lTrim(sString);
    return rTrim(sString);
}

function reseterror(_id) {
    var objControl = document.getElementById(_id);
    if (objControl.className.indexOf("inputtext_error") != -1) {
        $("#" + _id).removeClass("inputtext_error");
    }
    return false;
}

function isBlank(val) {
    if (val == null) {
        return true;
    }
    for (var i = 0; i < val.length; i++) {
        if ((val.charAt(i) != ' ') && (val.charAt(i) != "\t") && (val.charAt(i) != "\n") && (val.charAt(i) != "\r")) {
            return false;
        }
    }
    return true;
}

function CheckNumber(str) {
    for (var i = 0; i < str.length; i++) {
        var temp = str.substring(i, i + 1);
        if (!(temp == "." || (temp >= 0 && temp <= 9))) {
            return false;
        }
    }
    return true;
}

function CheckNumber2(str) {
    for (var i = 0; i < str.length; i++) {
        var temp = str.substring(i, i + 1);
        if (!(temp >= 0 && temp <= 9)) {
            return false;
        }
    }
    return true;
}

function CheckNumber3(str) {
    for (var i = 0; i < str.length; i++) {
        var temp = str.substring(i, i + 1);
        if (!(temp == "," || temp == "." || (temp >= 0 && temp <= 9))) {
            return false;
        }
    }

    if (str.substring(0, 1) == ",") {
        return false;
    }
    else{
        var count = 0;
        for (var i = 0; i < str.length; i++) {
            var temp = str.substring(i, i + 1);
            if (temp == ",") { 
                count = count+1
            }
        }
        if (count > 1) {
            return false;
        }
    } 
    
    return true;
}


function isEmail(email) {
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (!filter.test(email))
        return false;
    
    return true;
}


function noNumbers(e) {
    var keynum;
    var keychar;
    var numcheck;

    if (window.event) // IE
    {
        keynum = e.keyCode;
    }
    else if (e.which) // Netscape/Firefox/Opera
    {
        keynum = e.which;
    }
    if (keynum == 8 || keynum == undefined)
        return true;
    keychar = String.fromCharCode(keynum);
    numcheck = /\d/;
    return numcheck.test(keychar);
}

function noNumbers2(e) {
    var keynum;
    var keychar;
    var numcheck;

    if (window.event) // IE
    {
        keynum = e.keyCode;
    }
    else if (e.which) // Netscape/Firefox/Opera
    {
        keynum = e.which;
    }
    if (keynum == 46 || keynum == 8 || keynum == undefined)
        return true;
    keychar = String.fromCharCode(keynum);
    numcheck = /\d/;
    return numcheck.test(keychar);
}

function noNumbers3(e) {
    var keynum;
    var keychar;
    var numcheck;

    if (window.event) // IE
    {
        keynum = e.keyCode;
    }
    else if (e.which) // Netscape/Firefox/Opera
    {
        keynum = e.which;
    }
    //alert(keynum);
    //if (keynum == 8 || keynum == undefined)
    //Bo sugn them truong hop nhap dau phay "," 44
    if (keynum == 44 || keynum == 8 || keynum == undefined)
        return true;
    keychar = String.fromCharCode(keynum);
    numcheck = /\d/;
    return numcheck.test(keychar);
}

function formatText(controlID) {
    var ctrl = document.getElementById(controlID);
    var str = ctrl.value;

    while (str.indexOf('.') != -1)
        str = str.replace(".", "");

    var i = str.length;
    var count = 0;
    var templ = '';
    while (i >= 0) {
        count++
        if (count % 4 == 0 && i > 0) {
            templ = str.charAt(i - 1) + '.' + templ;
            count = 1;
        }
        else
            templ = str.charAt(i - 1) + templ;
        i--;
    }
    ctrl.value = templ;
}