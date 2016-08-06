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
</head>
<body>
<div id="logo">
    <img src="${pageContext.request.contextPath}/resources/img/login-logo.png" alt="" />
</div>
<div id="loginbox">
    <form id="loginform" class="form-vertical" action="${pageContext.request.contextPath}/admin/register" method="post">
        <div class="control-group normal_text"><h3>Library Admin Register</h3></div>
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
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on"><i class="icon-lock"></i></span><input type="password" placeholder="confirm_password" name="confirm_password" id="confirm_password"/>
                </div>
            </div>
        </div>
        <div class="form-actions">
            <span class="pull-left"><a href="${pageContext.request.contextPath}/admin/loginUI" class="flip-link btn btn-warning">登录</a></span>
            <span class="pull-right"><input type="submit" class="btn btn-success" value="注册"/></span>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/browser.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/messages_zh.js"></script>
<script type="text/javascript">
    $(function () {
        $("#loginform").validate({
            rules:{
                account:{
                    required: true,
                    rangelength:[6,10],
                    remote:{
                        type:"post",
                        url:"${pageContext.request.contextPath}/admin/check",
                        data:{
                            account:function () {
                                return $("#account").val();
                            }
                        }
                    }
                },
                password:{
                    required: true,
                    rangelength:[6,10]
                },
                confirm_password:{
                    required:true,
                    equalTo:"#password"
                }
            },
            messages:{
                account:{
                    required:"请输入账号",
                    rangelength:"账号长度需在6-10之间",
                    remote:"此用户已存在"
                },
                password:{
                    required: "请输入密码",
                    rangelength:"密码长度需在6-10之间"
                },
                confirm_password:{
                    required: "请再一次输入密码",
                    equalTo:"两次密码输入不一致"
                }
            }
        });
    });
</script>
</body>


</html>

