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
    <title>Maruti Admin</title><meta charset="UTF-8" />
    <%@ include file="../mstp_css.jsp"%>
</head>
<body>
<%@include file="../prelude.jsp"%>
<div id="content">
    <div id="content-header">
        <div id="breadcrumb">
            <a href="../index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>主页</a>
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
                        <h5>注册</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form action="${pageContext.request.contextPath}/admin/register" method="post" class="form-horizontal">
                            <div class="control-group">
                                <label class="control-label">账号:</label>
                                <div class="controls"><input type="text" class="span3" placeholder="请输入账号" name="account"/></div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">密码:</label>
                                <div class="controls">
                                    <input type="password"  class="span6" placeholder="请输入密码" name="password"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">性别:</label>
                                <div class="controls">
                                    <label><input type="radio" name="sex" value="男"/> 男</label>
                                    <label><input type="radio" name="sex" value="女"/> 女</label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">身份证:</label>
                                <div class="controls">
                                    <input type="password"  class="span6" placeholder="请输入身份证" name="idCard"/>
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
<%@ include file="../mstp_js.jsp"%>

</body>

</html>
