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
    <title>Aode Library</title><meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/maruti-login.css" />
    <link href="${pageContext.request.contextPath}/resources/messenger/build/css/messenger.css"  rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/resources/messenger/build/css/messenger-theme-air.css"  rel="stylesheet" type="text/css" />
</head>
<body>
<div id="logo">
    <img src="${pageContext.request.contextPath}/resources/img/login-logo.png" alt="" />
</div>
<div id="loginbox">
    <form id="loginform" class="form-vertical" action="${pageContext.request.contextPath}/admin/admin/login">
        <div class="control-group normal_text"><h3>Library Admin Login</h3></div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on"><i class="icon-user"></i></span><input type="text" placeholder="Account" name="account" id="account"/>
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on"><i class="icon-lock"></i></span><input type="password" placeholder="Password" name="password" id="password"/>
                </div>
            </div>
        </div>
        <div class="form-actions">
            <span class="pull-left"><a href="#" class="flip-link btn btn-warning" id="to-recover">Lost password?</a></span>
            <span class="pull-left"><a href="${pageContext.request.contextPath}/admin/admin/registerUI" class="flip-link btn btn-warning">注册</a></span>
            <span class="pull-right"><input type="submit" class="btn btn-success" value="登录" /></span>
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
<script src="${pageContext.request.contextPath}/resources/js/browser.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/messages_zh.js"></script>
<script src="${pageContext.request.contextPath}/resources/messenger/build/js/messenger.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#loginform").validate({
            rules:{
                account:{
                    required: true,
                },
                password: {
                    required: true,
                    remote:{
                        type:"post",
                        url:"${pageContext.request.contextPath}/admin/admin/check",
                        data:{
                            account:function () {
                                return $("#account").val();
                            },
                            password:function () {
                                return $("#password").val();
                            }
                        }
                    }
                }
            },
            messages:{
                account:{
                    required:"请输入账号",
                },
                password:{
                    required: "请输入密码",
                    remote:"账号或密码不正确"
                }
            }
        })
    })
</script>
</body>
<c:if test="${result!=null}">
    <script>
        $().ready(function(){
            var success=${result.success};
            var msg='${result.msg}';
            var type="error";
            if(success=true){
                type="success"
            }
            Messenger.options = {
                extraClasses: 'messenger-fixed messenger-theme-air messenger-on-top messenger-on-right',
                theme: 'future'
            }
            $.globalMessenger().post({  message:"提示："+ msg,
                type: 'error',
                showCloseButton: true})
        })
    </script>
</c:if>
</html>