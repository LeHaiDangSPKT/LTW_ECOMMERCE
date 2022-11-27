<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="content-page" class="content-page">
	<div class="container-fluid checkout-content">
		<div class="row">
			<div id="address" class="card-block show p-0 col-12">
				<div class="row align-item-center">
					<div class="col-lg-8">
						<div class="iq-card">
							<div class="iq-card-header d-flex justify-content-between">
								<div class="iq-header-title">
									<h4 class="card-title">Nhập địa chỉ mới</h4>
								</div>
							</div>
							<div class="iq-card-body">
								<form onsubmit="required()">
									<div class="row mt-3">
										<div class="col-md-6">
											<div class="form-group">
												<label>Họ tên người nhận: *</label> <input type="text"
													class="form-control" name="fname" required="">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Số điện thoại di động: *</label> <input type="text"
													class="form-control" name="mno" required="">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Địa chỉ nhà: *</label> <input type="text"
													class="form-control" name="houseno" required="">
											</div>
										</div>

										<div class="col-md-12">
											<button id="savenddeliver" type="submit"
												class="btn btn-primary">Lưu và giao hàng</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="iq-card">
							<div class="iq-card-body">
								<h4 class="mb-2">Nguyễn Thanh Xuyến</h4>
								<div class="shipping-address">
									<p class="mb-0">Số 1 Võ Văn Ngân, Thủ Đức</p>
									<p>0123 456 789</p>
								</div>
								<hr>
								<a id="deliver-address" href="javascript:void();"
									class="btn btn-primary d-block mt-1 next">Giao hàng tới địa chỉ này</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>