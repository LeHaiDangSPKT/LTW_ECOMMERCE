<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Store</title>
    <%@include file="/common/link-css-js.jsp" %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="wrapper">
    <%@include file="/common/vendor/navbar.jsp" %>
    <%@include file="/common/vendor/sidebar.jsp" %>
    <div class="content-page" id="content-page">
        <dec:body/>
    </div>

</div>
<%@include file="/common/footer.jsp" %>
</body>
</html>
