<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="content-page" class="content-page">
	<div class="container-fluid checkout-content">
		<div class="row">
			<div id="cart" class="card-block show p-0 col-12">
				<div class="row align-item-center">
					<div class="col-lg-8">
						<div class="iq-card">
							<div
								class="iq-card-header d-flex justify-content-between iq-border-bottom mb-0">
								<div class="iq-header-title">
									<h4 class="card-title">Shopping Cart</h4>
								</div>
							</div>
							<div class="iq-card-body">
								<ul class="list-inline p-0 m-0">
									<li class="checkout-product">
										<div class="row align-items-center">
											<div class="col-sm-2">
												<span class="checkout-product-img"> <a
													href="javascript:void();"><img
														class="img-fluid rounded" src="images/checkout/01.jpg"
														alt=""></a>
												</span>
											</div>
											<div class="col-sm-4">
												<div class="checkout-product-details">
													<h5>The Raze night book</h5>
													<p class="text-success">In stock</p>
													<div class="price">
														<h5>$180.00</h5>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="row">
													<div class="col-sm-10">
														<div class="row align-items-center mt-2">
															<div class="col-sm-7 col-md-6">
																<button type="button" class="fa fa-minus qty-btn"
																	id="btn-minus"></button>
																<input type="text" id="quantity" value="0">
																<button type="button" class="fa fa-plus qty-btn"
																	id="btn-plus"></button>
															</div>
															<div class="col-sm-5 col-md-6">
																<span class="product-price">$180.00</span>
															</div>
														</div>
													</div>
													<div class="col-sm-2">
														<a href="javascript:void();"
															class="text-dark font-size-20"><i
															class="ri-delete-bin-7-fill"></i></a>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li class="checkout-product">
										<div class="row align-items-center">
											<div class="col-sm-2">
												<span class="checkout-product-img"> <a
													href="javascript:void();"><img
														class="img-fluid rounded" src="images/checkout/02.jpg"
														alt=""></a>
												</span>
											</div>
											<div class="col-sm-4">
												<div class="checkout-product-details">
													<h5>Harsh Reality book</h5>
													<p class="text-success">In stock</p>
													<div class="price">
														<h5>$250.00</h5>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="row">
													<div class="col-sm-10">
														<div class="row align-items-center mt-2">
															<div class="col-sm-7 col-md-6">
																<button type="button" class="fa fa-minus qty-btn"
																	id="btn-minus"></button>
																<input type="text" id="quantity" value="0">
																<button type="button" class="fa fa-plus qty-btn"
																	id="btn-plus"></button>
															</div>
															<div class="col-sm-5 col-md-6">
																<span class="product-price">$250.00</span>
															</div>
														</div>
													</div>
													<div class="col-sm-2">
														<a href="javascript:void();"
															class="text-dark font-size-20"><i
															class="ri-delete-bin-7-fill"></i></a>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li class="checkout-product">
										<div class="row align-items-center">
											<div class="col-sm-2">
												<span class="checkout-product-img"> <a
													href="javascript:void();"><img
														class="img-fluid rounded" src="images/checkout/03.jpg"
														alt=""></a>
												</span>
											</div>
											<div class="col-sm-4">
												<div class="checkout-product-details">
													<h5>The House in the Fog</h5>
													<p class="text-success">In stock</p>
													<div class="price">
														<h5>$399.00</h5>
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="row">
													<div class="col-sm-10">
														<div class="row align-items-center mt-2">
															<div class="col-sm-7 col-md-6">
																<button type="button" class="fa fa-minus qty-btn"
																	id="btn-minus"></button>
																<input type="text" id="quantity" value="0">
																<button type="button" class="fa fa-plus qty-btn"
																	id="btn-plus"></button>
															</div>
															<div class="col-sm-5 col-md-6">
																<span class="product-price">$399.00</span>
															</div>
														</div>
													</div>
													<div class="col-sm-2">
														<a href="javascript:void();"
															class="text-dark font-size-20"><i
															class="ri-delete-bin-7-fill"></i></a>
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="iq-card">
							<div class="iq-card-body">
								<p>
									<b>Giá cụ thể</b>
								</p>
								<div class="d-flex justify-content-between mb-1">
									<span>Tổng đơn hàng</span> <span>$829</span>
								</div>
								<div class="d-flex justify-content-between mb-1">
									<span>Khuyến mãi</span> <span class="text-success">-20$</span>
								</div>
								<div class="d-flex justify-content-between mb-1">
									<span>Giá vận chuyển</span> <span>$15</span>
								</div>
								<hr>
								<div class="d-flex justify-content-between">
									<span class="text-dark"><strong>Tổng cộng</strong></span> <span
										class="text-dark"><strong>$824</strong></span>
								</div>
								<a id="place-order" href="javascript:void();"
									class="btn btn-primary d-block mt-3 next">Đặt hàng</a>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
</div>