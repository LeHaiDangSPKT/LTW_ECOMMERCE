<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<div id="content-page" class="content-page"
	style="margin-left: 0; padding-left: 100px !important; padding-right: 100px !important; background-color: #efefef">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
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
										<c:url value="/image?fname=${user.avatar}&type=user"
											var="imgAvatar"></c:url>
										<img class="profile-pic" src="${imgAvatar}" alt="profile-pic">
										<div class="p-image">
											<i class="ri-pencil-line upload-button"></i> <input
												class="file-upload" type="file" name="image"
												accept="image/*" />
										</div>
									</div>
								</div>
							</div>
							<div class=" row align-items-center">
								<div class="form-group col-sm-6">
									<label for="fname">Họ:</label> <input name="firstname"
										type="text" class="form-control" id="fname"
										value="${user.firstname}">
								</div>
								<div class="form-group col-sm-6">
									<label for="lname">Tên:</label> <input name="lastname"
										type="text" class="form-control" id="lname"
										value="${user.lastname}">
								</div>
								<div class="form-group col-sm-6">
									<label for="lname">CMND/Căn Cước Công Dân:</label> <input
										name="id_card" type="text" class="form-control" id="id_card"
										value="${user.id_card}">
								</div>
								<div class="form-group col-sm-6">
									<label for="uname">Email:</label> <input name="email"
										type="email" class="form-control" id="uname"
										value="${user.email}">
								</div>
								<div class="form-group col-sm-6">
									<label for="cname">Số điện thoại:</label> <input name="phone"
										type="text" class="form-control" id="phone"
										value="${user.phone}">
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
							</div>
						</form>
					</div>
				</div>
			</div>

			<div class="col-lg-12">
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
									Password</a> <input type="Password" class="form-control" id="cpass"
									value="">
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