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

<html lang="en">

<head>
    <title>Aode Library</title><meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/colorpicker.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/datepicker.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/uniform.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/select2.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/maruti-style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/maruti-media.css" class="skin-color" />
</head>
<body>
<%@include file="../prelude.jsp"%>
<div id="content">
    <div id="content-header">
        <div id="breadcrumb">
            <a href="${pageContext.request.contextPath}/admin/list" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>主页</a>
            <a>注册</a>
        </div>
        <h1>注册</h1>
    </div>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>
								</span>
                        <h5>管理员注册</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form action="${pageContext.request.contextPath}/user/register" method="post" class="form-horizontal" id="user_form">
                            <div class="control-group">
                                <label class="control-label">账号:</label>
                                <div class="controls"><input type="text" class="span3" placeholder="请输入账号" name="account" id="account"/></div>
                                <span id="message"></span>
                            </div>
                            <div class="control-group">
                                <label class="control-label">密码:</label>
                                <div class="controls">
                                    <input type="password"  class="span3" placeholder="请输入密码" name="password" id="password"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">姓名:</label>
                                <div class="controls">
                                    <input type="text"  class="span3" placeholder="请输入姓名" name="userName" id="userName"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">性别:</label>
                                <div class="controls">
                                    <label><input type="radio" name="sex" value="男" id="male"/> 男</label>
                                    <label><input type="radio" name="sex" value="女" id="female"/> 女</label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">身份证:</label>
                                <div class="controls">
                                    <input type="text"  class="span3" placeholder="请输入身份证" name="idCard" id="idCard"/>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-success">注册</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.custom.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-colorpicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.uniform.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/maruti.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/maruti.form_common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/messages_zh.js"></script>
<script type="text/javascript">
    $(function () {
        $("#user_form").validate({
            rules:{
                account:{
                    required: true,
                    rangelength:[6,10]
                },
                password:{
                    required: true,
                    rangelength:[6,10]
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
