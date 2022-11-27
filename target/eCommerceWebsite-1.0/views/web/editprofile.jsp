<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>

<div id="content-page" class="content-page">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="iq-card">
					<div class="iq-card-body p-0">
						<div class="iq-edit-list">
							<ul class="iq-edit-profile d-flex nav nav-pills">
								<li class="col-md-6 p-0"><a class="nav-link active"
									data-toggle="pill" href="#personal-information"> Thông tin
										cá nhân </a></li>
								<li class="col-md-6 p-0"><a class="nav-link"
									data-toggle="pill" href="#chang-pwd"> Đổi mật khẩu </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="iq-edit-list-data">
					<div class="tab-content">
						<div class="tab-pane fade active show" id="personal-information"
							role="tabpanel">
							<div class="iq-card">
								<div class="iq-card-header d-flex justify-content-between">
									<div class="iq-header-title">
										<h4 class="card-title">Thông tin cá nhân</h4>
									</div>
								</div>
								<div class="iq-card-body">
									<form action="#" method="post" enctype="multipart/form-data">
										<div class="form-group row align-items-center">
											<div class="col-md-12">
												<div class="profile-img-edit">
													<img class="profile-pic" src="images/user/11.png"
														alt="profile-pic">
													<div class="p-image">
														<i class="ri-pencil-line upload-button"></i> <input
															class="file-upload" type="file" accept="image/*" />
													</div>
												</div>
											</div>
										</div>
										<div class=" row align-items-center">
											<div class="form-group col-sm-6">
												<label for="fname">Họ:</label> <input name="firstname" type="text"
													class="form-control" id="fname" value="${user.firstname}">
											</div>
											<div class="form-group col-sm-6">
												<label for="lname">Tên:</label> <input name="lastname" type="text"
													class="form-control" id="lname" value="${user.lastname}">
											</div>
											<div class="form-group col-sm-6">
												<label for="uname">Email:</label> <input name="email" type="email"
													class="form-control" id="uname" value="${user.lastname}">
											</div>
											<div class="form-group col-sm-6">
												<label for="cname">Số điện thoại:</label> <input name="phone" type="text"
													class="form-control" id="cname" value="${user.phone}">
												<!-- </div>
											<div class="form-group col-sm-12">
												<label>Địa chỉ:</label>
												<textarea class="form-control" name="address" rows="5"
													style="line-height: 22px;">
Số 1 Võ Văn Ngân, Thủ Đức
                                          </textarea>
											</div> -->
											</div>
											<button formaction="<c:url value='/web/user/edit/update'/>"
												class="btn btn-primary mr-2">Lưu thay đổi</button>
											<button type="reset" class="btn iq-bg-danger">Hủy</button>
									</form>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="chang-pwd" role="tabpanel">
							<div class="iq-card">
								<div class="iq-card-header d-flex justify-content-between">
									<div class="iq-header-title">
										<h4 class="card-title">Đổi mật khẩu</h4>
									</div>
								</div>
								<div class="iq-card-body">
									<form>
										<div class="form-group">
											<label for="cpass">Nhập mật khẩu hiện tại:</label> <a
												href="javascripe:void();" class="float-right">Forgot
												Password</a> <input type="Password" class="form-control"
												id="cpass" value="">
										</div>
										<div class="form-group">
											<label for="npass">Nhập mật khẩu mới:</label> <input
												type="Password" class="form-control" id="npass" value="">
										</div>
										<div class="form-group">
											<label for="vpass">Nhập lại mật khẩu mới:</label> <input
												type="Password" class="form-control" id="vpass" value="">
										</div>
										<button type="submit" class="btn btn-primary mr-2">Submit</button>
										<button type="reset" class="btn iq-bg-danger">Cancel</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>