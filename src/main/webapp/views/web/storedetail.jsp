<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<div id="content-page" class="content-page"
	style="margin-left: 0; padding-left: 100px !important; padding-right: 100px !important; background-color: #efefef">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
					<div
						class="iq-card-header d-flex justify-content-between align-items-center">
						<h4 class="card-title mb-0">Chi tiết cửa hàng</h4>
					</div>
					<div class="iq-card-body pb-0">
						<div class="description-contens align-items-top row">
							<div class="col-sm-12">
								<div
									class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
									<div class="iq-card-body p-0">
										<div class="row align-items-center">
											<div class="col-3">
												<ul id="description-slider-nav"
													class="list-inline p-0 m-0  d-flex align-items-center">
													<li><a href="javascript:void(0);"> <img
															src="images/book-dec/01.jpg"
															class="img-fluid rounded w-100" alt="">
													</a></li>
													<li><a href="javascript:void(0);"> <img
															src="images/book-dec/02.jpg"
															class="img-fluid rounded w-100" alt="">
													</a></li>
													<li><a href="javascript:void(0);"> <img
															src="images/book-dec/03.jpg"
															class="img-fluid rounded w-100" alt="">
													</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div
									class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
									<div class="iq-card-body p-0">
										<h3 class="mb-3">${store.name }</h3>
										<div class="mb-3 d-block">
											<span class="font-size-20 text-warning"> <c:forEach
													var="i" begin="1" end="5">
													<c:if test="${i <= store.rating }">
														<i class="fa fa-star"></i>
													</c:if>

													<c:if test="${i > store.rating }">
														<i class="fa fa-star-o"></i>
													</c:if>
												</c:forEach>
											</span>
										</div>
										<span class="text-dark mb-4 pb-4 iq-border-bottom d-block">${owner.firstname}
											${owner.lastname}</span>
										<div class="text-primary mb-4">
											Mô tả: <span class="text-body">${store.bio}</span>
										</div>
										<div class="mb-3">
											<a href="<c:url value="/web/following/store/add?id=${store.id}"/>" class="text-body text-center"><span
												class="avatar-30 rounded-circle bg-primary d-inline-block mr-2"><i
													class="ri-heart-fill"></i></span><span>Theo dõi cửa hàng</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="iq-card">
					<div
						class="iq-card-header d-flex justify-content-between iq-border-bottom mb-0">
						<div class="iq-header-title">
							<h4 class="card-title">Sản phẩm của của hàng</h4>
						</div>
					</div>
					<div class="iq-card-body">
						<ul class="list-inline p-0 m-0">
							<c:forEach items="${storeProductList}" var="product">
								<li class="checkout-product">
									<div class="row align-items-center">
										<div class="col-sm-3 col-lg-2">
											<div class="row align-items-center">
												<div class="col-sm-9">
													<span class="checkout-product-img"> <a
														href="javascript:void();"><img
															class="img-fluid rounded" src="images/checkout/01.jpg"
															alt=""></a>
													</span>
												</div>
											</div>
										</div>
										<div class="col-sm-3 col-lg-4">
											<div class="checkout-product-details">
												<h5>${product.name}</h5>
												<c:if test="${ product.quantity > 0}">
													<p class="text-success">Còn hàng</p>
												</c:if>
												<c:if test="${ product.quantity <= 0}">
													<p class="text-danger">Hết hàng</p>
												</c:if>
												<div class="price">
													<h5>${product.price}</h5>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-lg-6">
											<div class="row">
												<div class="col-sm-8">
													<div class="row align-items-center mt-2">
														<div class="col-sm-7 col-lg-6">
															<button type="button" class="fa fa-minus qty-btn"
																id="btn-minus"></button>
															<input type="text" id="quantity" value="0">
															<button type="button" class="fa fa-plus qty-btn"
																id="btn-plus"></button>
														</div>
														<div class="col-sm-5 col-lg-6">
															<span class="product-price">[xử lý js tổng tiền]</span>
														</div>
													</div>
												</div>
												<div class="col-sm-4">
													<a href="#"><button type="submit"
															class="btn btn-primary view-more">Thêm vào giỏ
															hàng</button></a>
												</div>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>

			<div class="col-lg-12">
				<div class="iq-card p-4">
					<div class="d-block text-center">
						<h4>Đánh giá</h4>
					</div>
					<div class="iq-card-body">
						<div class="table-responsive">
							<table id="user-list-table"
								class="table table-striped mt-4" role="grid"
								aria-describedby="user-list-page-info">
								<thead>
									<tr>
										<th style="width: 10%">Người dùng</th>
										<th style="width: 90%">Đánh giá</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center"><img
											class="rounded img-fluid avatar-40" src="images/user/01.jpg"
											alt="profile">
											<p class="mt-3">Anna Sthesia</p></td>
										<td>
											<div class="mb-3 d-block">
												<span class="font-size-20 text-warning"> <i
													class="fa fa-star mr-1"></i> <i class="fa fa-star mr-1"></i>
													<i class="fa fa-star mr-1"></i> <i class="fa fa-star mr-1"></i>
													<i class="fa fa-star"></i>
												</span>
											</div>
											<p>Hàng xài êm</p>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="row justify-content-between mt-3">
							<div id="user-list-page-info" class="col-md-6">
								<span>Showing 1 to 5 of 5 entries</span>
							</div>
							<div class="col-md-6">
								<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-end mb-0">
										<li class="page-item disabled"><a class="page-link"
											href="#" tabindex="-1" aria-disabled="true">Previous</a></li>
										<li class="page-item active"><a class="page-link"
											href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">Next</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-12">
				<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
					<div
						class="iq-card-header d-flex justify-content-between align-items-center position-relative">
						<div class="iq-header-title">
							<h4 class="card-title mb-0">Những sách tương tự</h4>
						</div>
						<div class="iq-card-header-toolbar d-flex align-items-center">
							<a href="category.html" class="btn btn-sm btn-primary view-more">View
								More</a>
						</div>
					</div>
					<div class="iq-card-body single-similar-contens">
						<ul id="single-similar-slider" class="list-inline p-0 mb-0 row">
							<li class="col-md-3">
								<div class="row align-items-center">
									<div class="col-5">
										<div class="position-relative image-overlap-shadow">
											<a href="javascript:void();"><img
												class="img-fluid rounded w-100"
												src="images/similar-books/01.jpg" alt=""></a>
											<div class="view-book">
												<a href="book-page.html" class="btn btn-sm btn-white">View
													Book</a>
											</div>
										</div>
									</div>
									<div class="col-7 pl-0">
										<h6 class="mb-2">The Book of treasure Island find...</h6>
										<p class="text-body">Author : Tara Zona</p>
										<a href="#" class="text-dark" tabindex="-1">Read Now<i
											class="ri-arrow-right-s-line"></i></a>
									</div>
								</div>
							</li>
							<li class="col-md-3">
								<div class="row align-items-center">
									<div class="col-5">
										<div class="position-relative image-overlap-shadow">
											<a href="javascript:void();"><img
												class="img-fluid rounded w-100"
												src="images/similar-books/02.jpg" alt=""></a>
											<div class="view-book">
												<a href="book-page.html" class="btn btn-sm btn-white">View
													Book</a>
											</div>
										</div>
									</div>
									<div class="col-7 pl-0">
										<h6 class="mb-2">Set For Lifr Being Scott Trench..</h6>
										<p class="text-body">Author : Anna Rexia</p>
										<a href="#" class="text-dark" tabindex="-1">Read Now<i
											class="ri-arrow-right-s-line"></i></a>
									</div>
								</div>
							</li>
							<li class="col-md-3">
								<div class="row align-items-center">
									<div class="col-5">
										<div class="position-relative image-overlap-shadow">
											<a href="javascript:void();"><img
												class="img-fluid rounded w-100"
												src="images/similar-books/03.jpg" alt=""></a>
											<div class="view-book">
												<a href="book-page.html" class="btn btn-sm btn-white">View
													Book</a>
											</div>
										</div>
									</div>
									<div class="col-7 pl-0">
										<h6 class="mb-2">A Birth and Evolutions of the Soul...</h6>
										<p class="text-body">Author : Bill Emia</p>
										<a href="#" class="text-dark" tabindex="-1">Read Now<i
											class="ri-arrow-right-s-line"></i></a>
									</div>
								</div>
							</li>
							<li class="col-md-3">
								<div class="row align-items-center">
									<div class="col-5">
										<div class="position-relative image-overlap-shadow">
											<a href="javascript:void();"><img
												class="img-fluid rounded w-100"
												src="images/similar-books/04.jpg" alt=""></a>
											<div class="view-book">
												<a href="book-page.html" class="btn btn-sm btn-white">View
													Book</a>
											</div>
										</div>
									</div>
									<div class="col-7 pl-0">
										<h6 class="mb-2">The Nature of world Beautiful Places.</h6>
										<p class="text-body">Author : Hal Appeno</p>
										<a href="#" class="text-dark" tabindex="-1">Read Now<i
											class="ri-arrow-right-s-line"></i></a>
									</div>
								</div>
							</li>
							<li class="col-md-3">
								<div class="row align-items-center">
									<div class="col-5">
										<div class="position-relative image-overlap-shadow">
											<a href="javascript:void();"><img
												class="img-fluid rounded w-100"
												src="images/similar-books/05.jpg" alt=""></a>
											<div class="view-book">
												<a href="book-page.html" class="btn btn-sm btn-white">View
													Book</a>
											</div>
										</div>
									</div>
									<div class="col-7 pl-0">
										<h6 class="mb-2">The mackup magazine find books..</h6>
										<p class="text-body">Author : Zack Lee</p>
										<a href="#" class="text-dark" tabindex="-1">Read Now<i
											class="ri-arrow-right-s-line"></i></a>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
</div>