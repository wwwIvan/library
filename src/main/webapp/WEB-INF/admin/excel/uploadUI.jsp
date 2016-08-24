<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 2016/8/21
  Time: 19:31
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
            <a>Excel表导入</a>
        </div>
        <h1>Excel表导入</h1>
    </div>

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>
								</span>
                        <h5>Excel表导入</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form action="${pageContext.request.contextPath}/admin/excel/upload" method="post" class="form-horizontal" id="excel_form" enctype="multipart/form-data">
                            <div class="control-group">
                                <label class="control-label">Excel表:</label>
                                <div class="controls">
                                    <input type="file" name="excel" id="excel"/>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-success">导入</button>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="application/javascript">
    $(function () {
        $("#excel_form").validate({
            rules:{
                excel:{
                    required: true,
                    checkExcel:true
                }

            },
            messages:{
                excel:{
                    required:"请选择Excel表"
                }
            }
        })
        jQuery.validator.addMethod("checkExcel", function(value, element) {
            var filename = "xlsx";
            var filename2 = "xls";
            var filepath=$("#excel").val();
            //获得上传文件名
            var fileArr=filepath.split(".");
            var fileTArr=fileArr[fileArr.length-1].toLowerCase();
            //切割出后缀文件名
            if(fileTArr == filename || fileTArr == filename2){
                return true;
            }else{
                return false;
            }
        }, "上传Excel表格式不适合");
    })
</script>
</body>
</html>

