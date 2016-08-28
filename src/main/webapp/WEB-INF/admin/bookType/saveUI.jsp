<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/6
  Time: 23:44
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
            <a href="${pageContext.request.contextPath}/admin/bookType/list" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>图书类型管理</a>
            <a>图书类型编辑</a>
        </div>
        <h1>图书类型编辑</h1>
    </div>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>
								</span>
                        <h5>图书类型编辑</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form action="${pageContext.request.contextPath}/admin/bookType/${ bookType_1.bt_id == null ? 'add' : 'update' }" method="post" class="form-horizontal" id="bookType_form" enctype="multipart/form-data">
                            <div class="control-group" hidden="hidden">
                                <label class="control-label">id</label>
                                <div class="controls"><input type="hidden" value="${bookType_1.bt_id}" name="bt_id"/></div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">图片:</label>
                                <c:choose>
                                    <c:when test="${empty bookType_1.picture}">
                                        <div class="controls">
                                            <input type="file" name="picture"/>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="${pageContext.request.contextPath}/resources/file/bookType/${bookType_1.picture}" width="200px" height="150px">
                                        <div class="controls">
                                            <input type="file" name="picture" value="${bookType_1.picture}"/>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="control-group">
                                <label class="control-label">名字:</label>
                                <div class="controls"><input type="text" class="span3" placeholder="请输入类型名" name="name" id="name" value="${bookType_1.name}"/></div>
                                <span id="message"></span>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-success">${ bookType_1.bt_id == null ? '添加' : '修改'}</button>
                            </div>
                        </form>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#bookType_form").validate({
            rules:{
                name:{
                    required: true,
                }
            },
            messages:{
                name: {
                    required: "请输入类型名",
                }
            }
        })
    })

</script>
</body>
</html>
