$(function () {
    $('#maximage').maximage({
        fillElement: '#holder',
        backgroundSize: "contain",
        cycleOptions: {
            fx: 'fade',
            //sync: false,
            speed: 3000,
            timeout: 6000,
            pause: 1,
            prev: '#arrow_left',
            next: '#arrow_right',
            pager: '#cycle-nav ul',
            pagerAnchorBuilder: function (idx, slide) {
                var imgsrc = jQuery.Slides[idx].url;
                return '<li><a href="#" rel="nofollow"><img src=' + imgsrc + ' width="50" /></a></li>';
            }
        },
        onFirstImageLoaded: function () {
            jQuery('#maximage').fadeIn('fast');
        }
    });

    $('.toggle').bind('click', function (e) {
        e.preventDefault();
        $('#maximage').cycle('toggle');
    });
});

function validatecontact() {
    var objFullName = document.getElementById("ctl00_cph_Content_ctlContact1_txtFullName");
    var objPhone = document.getElementById("ctl00_cph_Content_ctlContact1_txtPhone");
    var objEmail = document.getElementById("ctl00_cph_Content_ctlContact1_txtEmail");
    var objSubject = document.getElementById("ctl00_cph_Content_ctlContact1_txtSubject");
    var objContent = document.getElementById("ctl00_cph_Content_ctlContact1_txtContent");

    if (isBlank(objFullName.value)) {
        alert('Xin vui lòng nhập họ và tên bạn!');
        objFullName.focus();
        return false;
    }

    if (isBlank(objPhone.value)) {
        alert('Xin vui lòng nhập Số điện thoại của bạn!');
        objPhone.focus();
        return false;
    }

    if (isBlank(objEmail.value)) {
        alert('Xin vui lòng nhập Email của bạn!');
        objEmail.focus();
        return false;
    }
    else if (!isEmail(objEmail.value)) {
        alert('Địa chỉ email không đúng!');
        objEmail.focus();
        return false;
    }

    if (isBlank(objSubject.value)) {
        alert('Xin vui lòng nhập tiêu đề!');
        objSubject.focus();
        return false;
    }

    if (isBlank(objContent.value)) {
        alert('Xin vui lòng nhập nội dung!');
        objContent.focus();
        return false;
    }

    return true;
}