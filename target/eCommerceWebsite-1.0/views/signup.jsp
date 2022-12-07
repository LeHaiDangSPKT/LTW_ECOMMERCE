<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section class="m-5">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 align-self-center rounded">
                <div class="row m-0">
                    <div class="col-sm-12 sign-in-page-data">
                        <div class="sign-in-from bg-primary rounded">
                            <h3 class="mb-0 text-center text-white">Đăng ký</h3>
                            <p class="text-center text-white">Đăng ký tài khoản để mua sắm tại MKB Book!</p>
                            <form class="mt-4" method="post">
                                <div class="form-group d-flex">
                                    <div class="mr-1 w-50">
                                        <label>Họ</label>
                                        <input
                                            name="firstname" type="text" class="form-control"
                                            placeholder="Họ của bạn" required
                                            value="${User.firstname}"
                                        >
                                    </div>
                                    <div class="ml-1 w-50">
                                        <label>Tên</label>
                                        <input
                                            name="lastname" type="text" class="form-control"
                                            placeholder="Tên của bạn" required
                                            value="${User.lastname}"
                                        >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input
                                        name="email" type="email" class="form-control mb-0"
                                        placeholder="Email"
                                        value="${User.email}"
                                    >
                                </div>
                                <div class="form-group">
                                    <label>Mật khẩu</label>
                                    <input
                                        name="password" type="password" class="form-control mb-0"
                                        placeholder="Mật khẩu">
                                </div>
                                <div class="form-group">
                                    <label>Nhập lại mật khẩu</label>
                                    <input
                                        name="re-password" type="password" class="form-control mb-0"
                                        placeholder="Nhập lại mật khẩu">
                                </div>
                                <div class="d-inline-block w-100">
                                    <div class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
                                        <input type="checkbox" class="custom-control-input"
                                               id="customCheck1">
                                        <label class="custom-control-label" for="customCheck1">
                                            Tôi chấp nhận
                                            <a href="#" class="text-light">Điều khoản của trang web</a>
                                        </label>
                                    </div>
                                </div>
                                <div class="sign-info text-center">
                                    <button formaction="<c:url value="/signup/create"/>"
                                            type="submit" class="btn btn-white d-block w-100 mb-2">Đăng ký
                                    </button>
                                    <span class="text-dark d-inline-block line-height-2">Bạn đã có tài khoản ?
                                        <a href="<c:url value="/login"/> " class="text-white">Đăng nhập</a>
                                    </span>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <a class="btn btn-danger"
                                       href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8080${URL}&response_type=code&client_id=740094574805-pa2bc895e0nmd2h00b6njulev52331qg.apps.googleusercontent.com&approval_prompt=force">
                                        <i class="fa-brands fa-google"></i>
                                        Đăng ký với Google
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
