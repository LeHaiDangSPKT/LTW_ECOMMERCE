<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
<title>HomePage</title>
<%@include file="/common/link-css-js.jsp"%>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
	rel="stylesheet">
</head>
<body>
	<%@include file="/common/web/navbar.jsp"%>
	<div class="wrapper">

		<%-- <%@include file="/common/web/sidebar.jsp"%> --%>
		<dec:body />
	</div>
	<%@include file="/common/footer.jsp"%>
</body>
</html>
