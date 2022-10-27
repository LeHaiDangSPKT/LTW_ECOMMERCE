<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>admin</title>
    <link href="<c:url value='/template/admin/vendors/typicons/typicons.css' />" rel="stylesheet">
    <link href="<c:url value='/template/admin/vendors/css/vendor.bundle.base.css' />" rel="stylesheet">
    <link href="<c:url value='/template/admin/css/vertical-layout-light/style.css' />" rel="stylesheet">
    <link href="<c:url value='/template/admin/custom.css' />" rel="stylesheet">

    <script src="<c:url value='/template/admin/vendors/js/vendor.bundle.base.js'/>"></script>
    <script src="<c:url value='/template/admin/vendors/chart.js/Chart.min.js'/>"></script>
    <script src="<c:url value='/template/admin/js/off-canvas.js'/>"></script>
    <script src="<c:url value='/template/admin/js/hoverable-collapse.js'/>"></script>
    <script src="<c:url value='/template/admin/js/template.js'/>"></script>
    <script src="<c:url value='/template/admin/js/settings.js'/>"></script>
    <script src="<c:url value='/template/admin/js/todolist.js'/>"></script>
    <script src="<c:url value='/template/admin/js/dashboard.js'/>"></script>
</head>
<body>
<div class="container-scroller">
    <%@include file="/common/admin/menu.jsp" %>
    <div class="container-fluid page-body-wrapper">
        <%@include file="/common/admin/sidebar.jsp"%>
        <div class="main-panel">
            <dec:body/>
            
            <%@include file="/common/admin/footer.jsp"%>
        </div>
    </div>



</div>




</body>


</html>
