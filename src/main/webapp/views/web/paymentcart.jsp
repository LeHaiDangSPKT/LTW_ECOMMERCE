<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="content-page" class="content-page">
	<div class="container-fluid checkout-content">
		<div class="row">
			<div id="payment" class="card-block show p-0 col-12">
				<div class="row align-item-center">
					<div class="col-lg-8">
						<div class="iq-card">
							<div class="iq-card-header d-flex justify-content-between">
								<div class="iq-header-title">
									<h4 class="card-title">Phương thức thanh toán</h4>
								</div>
							</div>
							<div class="iq-card-body">
								<form class="mt-3">
									<div class="d-flex align-items-center">
										<span>Nhập số tài khoản: </span>
										<div class="cvv-input ml-3 mr-3">
											<input type="text" class="form-control" required="">
										</div>
										<button type="submit" class="btn btn-primary">Tiếp tục</button>
									</div>
								</form>
								<hr>
								<div class="card-lists">
									<div class="form-group">
									<div class="custom-control custom-radio">
											<input type="radio" id="emi" name="emi"
												class="custom-control-input"> <label
												class="custom-control-label" for="emi"> Ví MKB</label>
										</div>
										<div class="custom-control custom-radio">
											<input type="radio" id="credit" name="customRadio"
												class="custom-control-input"> <label
												class="custom-control-label" for="credit"> Trực tiếp</label>
										</div>
										<div class="custom-control custom-radio">
											<input type="radio" id="netbaking" name="customRadio"
												class="custom-control-input"> <label
												class="custom-control-label" for="netbaking"> Momo</label>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="iq-card">
							<div class="iq-card-body">
								<h4 class="mb-2">Chi tiết thanh toán</h4>
								<div class="d-flex justify-content-between">
									<span>3 sản phẩm</span> <span><strong>$1000.00</strong></span>
								</div>
								<div class="d-flex justify-content-between">
									<span>Phí vận chuyển</span> <span class="text-success">Free</span>
								</div>
								<hr>
								<div class="d-flex justify-content-between">
									<span>Tổng tiền trả</span> <span><strong>$1000.00</strong></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>