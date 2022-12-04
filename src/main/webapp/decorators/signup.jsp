<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>


<html>
<head>
<%@include file="/common/link-css-js.jsp"%>
<title>Title</title>
</head>
<body>
	<!-- loader Start -->
	<div id="loading">
		<div id="loading-center"></div>
	</div>
	<!-- loader END -->
	<!-- Sign in Start -->
	<section class="sign-in-page">
		<div class="container p-0">
			<div class="row no-gutters height-self-center">
				<div class="col-sm-12 align-self-center page-content rounded">
					<div class="row m-0">
						<div class="col-sm-12 sign-in-page-data">
							<div class="sign-in-from bg-primary rounded">
								<h3 class="mb-0 text-center text-white">Đăng ký</h3>
								<p class="text-center text-white">Đăng ký tài khoản để mua
									sắm tại MKB Book!</p>
								<form class="mt-4 form-text" method="post">
									<div class="form-group d-flex">
										<div class="mr-1 w-50">
											<label for="exampleInputEmail1">Họ</label> <input
												name="firstname" type="text" class="form-control"
												placeholder="Họ của bạn" required>
										</div>
										<div class="ml-1 w-50">
											<label for="exampleInputEmail1">Tên</label> <input
												name="lastname" type="text" class="form-control"
												placeholder="Tên của bạn" required>
										</div>
									</div>
									<div class="form-group">
										<label>Giới tính</label>
										<div calass="form-check-inline">
											<label class="radio-inline">Nam</label> <input name="gender"
												type="radio" 
												value="1" required> <label
												class="radio-inline">Nữ</label> <input name="gender"
												type="radio" 
												value="0">
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail2">CMND/Căn cước công dân</label>
										<input name="id_card" type="text" class="form-control mb-0"
											placeholder="CMND/Căn cước công dân" required>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail2">Email</label> <input
											name="email" type="email" class="form-control mb-0"
											placeholder="Email">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail2">Số điện thoại</label> <input
											name="phone" type="text" class="form-control mb-0"
											placeholder="Số điện thoại">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Mật khẩu</label> <input
											name="password" type="password" class="form-control mb-0"
											id="exampleInputPassword1" placeholder="Mật khẩu">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Nhập lại mật khẩu</label> <input
											name="re-password" type="password" class="form-control mb-0"
											id="exampleInputPassword1" placeholder="Nhập lại mật khẩu">
									</div>
									<div class="d-inline-block w-100">
										<div
											class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
											<input type="checkbox" class="custom-control-input"
												id="customCheck1"> <label
												class="custom-control-label" for="customCheck1">Tôi
												chấp nhận <a href="#" class="text-light">Điều khoản của
													trang web</a>
											</label>
										</div>
									</div>
									<div class="sign-info text-center">
										<button formaction="<c:url value="/signup/create"/>"
											type="submit" class="btn btn-white d-block w-100 mb-2">Đăng
											ký</button>
										<span class="text-dark d-inline-block line-height-2">Bạn
											đã có tài khoản ? <a href="sign-in.html" class="text-white">Đăng
												nhập</a>
										</span>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Sign in END -->
	<!-- color-customizer -->
	<div class="iq-colorbox color-fix">
		<div class="buy-button">
			<a class="color-full" href="#"><i class="fa fa-spinner fa-spin"></i></a>
		</div>
		<div class="clearfix color-picker">
			<h3 class="iq-font-black">Booksto Awesome Color</h3>
			<p>This color combo available inside whole template. You can
				change on your wish, Even you can create your own with limitless
				possibilities!</p>
			<ul class="iq-colorselect clearfix">
				<li class="color-1 iq-colormark" data-style="color-1"></li>
				<li class="color-2" data-style="iq-color-2"></li>
				<li class="color-3" data-style="iq-color-3"></li>
				<li class="color-4" data-style="iq-color-4"></li>
				<li class="color-5" data-style="iq-color-5"></li>
				<li class="color-6" data-style="iq-color-6"></li>
				<li class="color-7" data-style="iq-color-7"></li>
				<li class="color-8" data-style="iq-color-8"></li>
				<li class="color-9" data-style="iq-color-9"></li>
				<li class="color-10" data-style="iq-color-10"></li>
				<li class="color-11" data-style="iq-color-11"></li>
				<li class="color-12" data-style="iq-color-12"></li>
				<li class="color-13" data-style="iq-color-13"></li>
				<li class="color-14" data-style="iq-color-14"></li>
				<li class="color-15" data-style="iq-color-15"></li>
				<li class="color-16" data-style="iq-color-16"></li>
				<li class="color-17" data-style="iq-color-17"></li>
				<li class="color-18" data-style="iq-color-18"></li>
				<li class="color-19" data-style="iq-color-19"></li>
				<li class="color-20" data-style="iq-color-20"></li>
			</ul>
			<a target="_blank" class="btn btn-primary d-block mt-3" href="#">Purchase
				Now</a>
		</div>
	</div>
</body>
</html>


