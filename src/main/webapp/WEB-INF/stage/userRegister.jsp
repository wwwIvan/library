<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/2
  Time: 20:47
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
    <form id="user_form" class="form-vertical" action="${pageContext.request.contextPath}/stage/register" method="post">
        <div class="control-group normal_text"><h3>Library User Register</h3></div>
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
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on"><i class="icon-lock"></i></span><input type="text"  class="span3" placeholder="请输入姓名" name="userName" id="userName"/>
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on"><i class="icon-lock"></i></span><label>
                    <input type="radio" name="sex" value="男" id="male"/> 男</label>
                    <label><input type="radio" name="sex" value="女" id="female"/> 女</label>
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on"><i class="icon-lock"></i></span><input type="text"  class="span3" placeholder="请输入身份证" name="idCard" id="idCard"/>
                </div>
            </div>
        </div>

        <div class="form-actions">
            <span class="pull-left"><a href="${pageContext.request.contextPath}/stage/loginUI" class="flip-link btn btn-warning">登录</a></span>
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
        $("#user_form").validate({
            rules:{
                account:{
                    required: true,
                    rangelength:[6,10],
                    remote:{
                        type:"post",
                        url:"${pageContext.request.contextPath}/stage/checkAccount",
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
                },
                userName:{
                    required:true
                },
                idCard:{
                    required:true,
                    rangelength:[18,18],
                    digits:true
                }
            },
            messages:{
                account:{
                    required:"请输入账号",
                    rangelength:"账号长度需在6-10之间"
                },
                password:{
                    required: "请输入密码",
                    rangelength:"密码长度需在6-10之间"
                },
                confirm_password:{
                    required: "请再一次输入密码",
                    equalTo:"两次密码输入不一致"
                },
                userName:{
                    required:"请输入用户名"
                },
                idCard:{
                    required: "请输入身份证",
                    rangelength:"身份证长度必须为18位",
                    digits:"必须为整数"
                }
            }
        })
    })
</script>
</body>

</html>
