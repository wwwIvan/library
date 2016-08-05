<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/3
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Maruti Admin</title><meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/maruti-login.css" />
</head>
<body>
<div id="logo">
    <img src="img/login-logo.png" alt="" />
</div>
<div id="loginbox">
    <form id="loginform" class="form-vertical" action="${pageContext.request.contextPath}/admin/login">
        <div class="control-group normal_text"><h3>Library Admin Login</h3></div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on"><i class="icon-user"></i></span><input type="text" placeholder="Account" name="account"/>
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on"><i class="icon-lock"></i></span><input type="password" placeholder="Password" name="password"/>
                </div>
            </div>
        </div>
        <div class="form-actions">
            <span class="pull-left"><a href="#" class="flip-link btn btn-warning" id="to-recover">Lost password?</a></span>
            <span class="pull-right"><input type="submit" class="btn btn-success" value="Login" /></span>
        </div>
    </form>
    <form id="recoverform" action="#" class="form-vertical">
        <p class="normal_text">Enter your e-mail address below and we will send you instructions <br/><font color="#FF6633">how to recover a password.</font></p>

        <div class="controls">
            <div class="main_input_box">
                <span class="add-on"><i class="icon-envelope"></i></span><input type="text" placeholder="输入身份证号..." name="userId"/>
            </div>
        </div>

        <div class="form-actions">
            <span class="pull-left"><a href="#" class="flip-link btn btn-warning" id="to-login">&laquo; Back to login</a></span>
            <span class="pull-right"><input type="submit" class="btn btn-info" value="Recover" /></span>
        </div>
    </form>
</div>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/maruti.login.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/messages_zh.js"></script>
    <script type="text/javascript">
    $(function () {
        $("#admin_form").validate({
            rules:{
                account:{
                    required: true,
                },
                password: {
                    required: true,
                }
            },
            messages:{
                account:{
                    required:"请输入账号",
                },
                password:{
                    required: "请输入密码",
                },
            }
        })
    })

</script>

</body>

</html>

