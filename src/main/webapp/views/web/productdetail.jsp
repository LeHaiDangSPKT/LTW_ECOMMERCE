<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<div id="content-page" class="content-page"
	style="margin-left: 0; padding-left: 100px !important; padding-right: 100px !important; background-color: #efefef">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
					<div
						class="iq-card-header d-flex justify-content-between align-items-center">
						<h4 class="card-title mb-0">Mô tả sản phẩm</h4>
					</div>
					<div class="iq-card-body pb-0">
						<div class="description-contens align-items-top row">
							<div class="col-md-6">
								<div
									class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
									<div class="iq-card-body p-0">
										<div class="row align-items-center">
											<div class="col-3">
												<ul id="description-slider-nav"
													class="list-inline p-0 m-0  d-flex align-items-center">
													<c:forEach items="${product.images}" var="image">
														<c:url value="/image?fname=${image.name}&type=product"
															var="imgUrl"></c:url>
														<li><a href="javascript:void(0);"> <img
																src="${imgUrl}" class="img-fluid rounded w-100" alt="">
														</a></li>
													</c:forEach>
												</ul>
											</div>
											<div class="col-9">
												<ul id="description-slider"
													class="list-inline p-0 m-0  d-flex align-items-center">
													<c:forEach items="${product.images}" var="image">
														<c:url value="/image?fname=${image.name}&type=product"
															var="imgUrl"></c:url>
														<li><a href="javascript:void(0);"> <img
																src="${imgUrl}" class="img-fluid rounded w-100" alt="">
														</a></li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<form method="post">
									<div
										class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height">
										<div class="iq-card-body p-0">
											<h3 class="mb-3">${product.name}</h3>
											<div
												class="price d-flex align-items-center font-weight-500 mb-2">
												<!-- <span class="font-size-20 pr-2 old-price">99.000</span> -->
												<span class="font-size-24 text-dark">${product.price}</span>
											</div>
											<div class="mb-3 d-block">
												<span class="font-size-20 text-warning"> <c:forEach
														var="i" begin="1" end="5">
														<c:if test="${i <= product.rating }">
															<i class="fa fa-star"></i>
														</c:if>

														<c:if test="${i > product.rating }">
															<i class="fa fa-star-o"></i>
														</c:if>
													</c:forEach>
												</span>
											</div>
											<div class="mb-3 d-flex align-items-center">
												<c:choose>
													<c:when test="${product.quantity > 0}">
														<label class="mr-3">Số lượng</label>
														<input name="count" class="form-control"
															style="max-width: 75px" type="number" min="1"
															max="${product.quantity}" step="1" value="1">
													</c:when>
													<c:otherwise>
														<label class="mr-3 text-danger">Hết hàng</label>
													</c:otherwise>
												</c:choose>
											</div>
											<span class="text-dark mb-4 pb-4 iq-border-bottom d-block">${product.description}</span>
											<div class="mb-4 d-flex align-items-center">
												<button
													formaction="<c:url value='/web/cart/item/create?id=${product.id}'/>"
													class="btn btn-primary view-more mr-2">Thêm vào
													giỏ hàng</button>
											</div>
											<div class="mb-3">
												<a href="#" class="text-body text-center"><span
													class="avatar-30 rounded-circle bg-primary d-inline-block mr-2"><i
														class="ri-heart-fill"></i></span><span>Theo dõi sản phẩm</span></a>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group col-lg-12">
				<div class="iq-card p-4">
					<div class="mb-3">
						<label>Đánh giá sản phẩm:</label>
						<textarea class="form-control" name="address" rows="5"
							style="line-height: 22px;"></textarea>
					</div>
					<button type="submit" class="btn btn-primary mr-2">Lưu
						thay đổi</button>
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
								class="table table-striped table-bordered mt-4" role="grid"
								aria-describedby="user-list-page-info">
								<thead>
									<tr>
										<th>Người dùng</th>
										<th>Đánh giá</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center"><img
											class="rounded img-fluid avatar-40"
											src="./template/images/user/01.jpg" alt="profile">
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

