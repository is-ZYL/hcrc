
//全局变量  判断是否可以提交 默认为false
var isPass = false;

var a =[
    "",
    "/user_po/user_center",
    "",
    "",
    "",
    "",
    "",
    "",
    "/user_po/user_accountSecurity",
];
var url;
$(function () {
    changeDiv();
    //鼠标点击查看密码：
    lookPass($(".password1"),$(".pa1"));
    lookPass($(".password2"),$(".pa2"));
    lookPass($(".password3"),$(".pa3"));

    changeContentLeftCss();
});

//按下&释放 查看输入框中的内容
 function lookPass(element, input) {

     element.mousedown(function () {
         $(element).css("background-position", "-31px -49px");
         $(input).attr("type", "text", "value", this.value);
     });

     element.mouseup(function () {
         $(element).css("background-position", "0px -49px");
         $(input).attr("type", "password", "value", this.value);
     });

     element.blur(function () {
         $(element).css("background-position", "0px -49px");
         $(input).attr("type", "password", "value", this.value);
     })
 }

 /*判断密码是否合格  只能输入6-20个字母、数字、下划线*/
function isPasswd(s)
{
    var patrn=/^(\w){6,20}$/;
    if (!patrn.exec(s)) return false;
    return true
}

/*判断手机号码是否合格   必须以数字开头，除数字外，可含有“-”*/
function isMobil(s)
{
    var patrn=/^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/;
    if (!patrn.exec(s)) return false
    return true
}


function changeDiv() {

    $(".content-right-head ul li:first-child").click(function () {
        $(".b").css("display", "none");
        $(".a").css("display", "block");
        $(".content-right-head ul li:first-child div").addClass("countSafe");
        $(".content-right-head ul li:last-child div").removeClass("countSafe");
    });
    $(".content-right-head ul li:last-child").click(function () {
        $(".a").css("display", "none");
        $(".b").css("display", "block");
        $(".content-right-head ul li:first-child div").removeClass("countSafe");
        $(".content-right-head ul li:last-child div").addClass("countSafe");
    });
}

/*点击更改css样式*/
function changeContentLeftCss() {
    $('.aa').on('click', 'li', function(e){
        $('.aa li').removeClass('bb');
        $(this).addClass('bb');
        url=a[$(".bb").val()];
    });
}






