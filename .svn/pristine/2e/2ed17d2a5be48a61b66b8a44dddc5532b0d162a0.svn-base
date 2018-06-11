<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/reg-user-head.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/reg-user-content.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/EnterpriseFile/css/reg-user-footer.css">
</head>
<body>
<!--用户注册界面头部-->
    <div class="user-head">
        <div class="head-top">
            <div class="mediate">
                <span>
                    <a href="#">个人入口 |</a>
                    <a href="${pageContext.request.contextPath}/hr/hr_hrmain">企业入口 |</a>
                    <a href="#">培训入口 |</a>
                     <a href="#">猎头入口 |</a>
                     <a href="${pageContext.request.contextPath}/headhunter/headhunter_headhunterMain">劳务派遣入口</a>
                </span>
            </div>
        </div>
        <div class="head-bottom">
            <div class="mediate">
                <div class="logo">
                    <img class="logo" src="${pageContext.request.contextPath}/EnterpriseFile/img/hcrclogo.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
<!--用户界面内容-->
    <div class="user-content">
        <div class="user-reg">
            <div class="reg-title">
                <span>猎头用户账号注册</span>
            </div>
            <div class="reg-content">
                <form action="${pageContext.request.contextPath}/hr/hr_hrInsertRegDo" class="content-form" method="post">
                    <p>
                    <label for="TEL">手机号</label>
                    <input type="text" name="e_username" id="TEL" maxlength="11" onkeyup="value=value.replace(/[^\d]/g,'')">
                    </p>
                    <p>
                        <label for="CONTACTS">联系人</label>
                        <input type="text" name="contacts" id="CONTACTS" >
                        <select id="select" onblur="jointSex()">
                            <option value="先生">先生</option>
                            <option value="女士">女士</option>
                        </select>
                    </p>
                    <p>
                    <label for="ID">身份证</label>
                    <input type="text" name="e_carded" id="ID" onblur="isCardNo(this.value)">
                     </p>
                    <p>
                        <label for="CompanyName">公司全称</label>
                        <input type="text" name="e_corporatename" id="CompanyName">
                    </p>
                    <p>
                        <label for="License">营业执照</label>
                        <input type="text" name="e_businesslicense" id="License">
                    </p>
                    <p>
                        <label for="Phone">联系电话</label>
                      
                        <input type="text" name="e_Contactnumber" placeholder="手机号">
                       
                    </p>
                    <p>
                        <label for="PASSWORD">密码</label>
                        <input type="password" name="e_password" id="PASSWORD">
                    </p>
                    <p>
                        <label for="V_PASSWORD">再次输入</label>
                        <input type="password" name="password" id="V_PASSWORD" onblur="validate()">
                    </p>
                    <p class="form-protocol">注册代表同意 <a href="">火才用户协议</a></p>
                    <p>
                    <input type="submit" value="注册"> <input type="reset" value="重置内容">
                    </p>
                </form>
            </div>
        </div>
    </div>
<!--用户注册界面脚部-->
    <div class="user-footer">
        <div class="footer-content mediate">
                <div class="footer-right"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/logo.jpg" alt=""></div>
                <div class="content">
                <p>渝ICP备11015194-1</p>
                <p>Copyright ©2017-2018 www.huohr.com</p>
            </div>
                <div class="footer-left"><img src="${pageContext.request.contextPath}/EnterpriseFile/img/Hibuick.jpg" alt=""></div>
        </div>
    </div>
</body>
</html>
<script src="${pageContext.request.contextPath}/EnterpriseFile/jq/jquery-1.11.1.min.js"></script>
<script>
    function jointSex() {
        var contacts= $("#CONTACTS").val();
        var sex = $("#select").val();
        $("#CONTACTS").val("");
        $("#select").val("");
        $("#CONTACTS").val(contacts+sex);
    }
    function validate() {
        var password=$("#PASSWORD").val();
        var v_password=$("#V_PASSWORD").val();
        if(password != v_password ){
            alert("密码不一致")
        }
    }
    function isCardNo(card)
    {
        // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X
        var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
        if(reg.test(card) === false)
        {
            alert("身份证输入不合法");
            return false;
        }
    }
</script>