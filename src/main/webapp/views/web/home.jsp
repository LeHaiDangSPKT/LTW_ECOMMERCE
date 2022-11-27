<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<div id="loading">
	<div id="loading-center"></div>
</div>
<!-- loader END -->
<!-- Wrapper Start -->

<!-- Sidebar  -->
<!-- TOP Nav Bar -->

<!-- TOP Nav Bar END -->
<!-- Page Content  -->
<div id="content-page" class="content-page">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div
					class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height rounded">
					<div class="newrealease-contens">
						<ul id="newrealease-slider"
							class="list-inline p-0 m-0 d-flex align-items-center">

							<li class="item"><a href="javascript:void(0);"> <img
									src="images/new_realeases/01.jpg"
									class="img-fluid w-100 rounded" alt="">
							</a></li>

							<li class="item"><a href="javascript:void(0);"> <img
									src="images/new_realeases/02.jpg"
									class="img-fluid w-100 rounded" alt="">
							</a></li>
							<li class="item"><a href="javascript:void(0);"> <img
									src="images/new_realeases/03.jpg"
									class="img-fluid w-100 rounded" alt="">
							</a></li>
							<li class="item"><a href="javascript:void(0);"> <img
									src="images/new_realeases/04.jpg"
									class="img-fluid w-100 rounded" alt="">
							</a></li>
							<li class="item"><a href="javascript:void(0);"> <img
									src="images/new_realeases/05.jpg"
									class="img-fluid w-100 rounded" alt="">
							</a></li>
							<li class="item"><a href="javascript:void(0);"> <img
									src="images/new_realeases/06.jpg"
									class="img-fluid w-100 rounded" alt="">
							</a></li>
							<li class="item"><a href="javascript:void(0);"> <img
									src="images/new_realeases/07.jpg"
									class="img-fluid w-100 rounded" alt="">
							</a></li>
							<li class="item"><a href="javascript:void(0);"> <img
									src="images/new_realeases/08.jpg"
									class="img-fluid w-100 rounded" alt="">
							</a></li>
							<li class="item"><a href="javascript:void(0);"> <img
									src="images/new_realeases/09.jpg"
									class="img-fluid w-100 rounded" alt="">
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
					<div
						class="iq-card-header d-flex justify-content-between align-items-center position-relative">
						<div class="iq-header-title">
							<h4 class="card-title mb-0">Sách hiện có</h4>
						</div>
						<div class="iq-card-header-toolbar d-flex align-items-center">
							<a href="category.html" class="btn btn-sm btn-primary view-more">Xem
								thêm</a>
						</div>
					</div>
					<div class="iq-card-body">
						<div class="row">
							<c:forEach items="${productList}" var="product">
								<div class="col-sm-6 col-md-4 col-lg-3">
									<div
										class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
										<div class="iq-card-body p-0">
											<div class="d-flex align-items-center">
												<div
													class="col-6 p-0 position-relative image-overlap-shadow">
													<a href="#"><img class="img-fluid rounded w-100"
														src="<c:url value ='./template/images/browse-books/01.jpg'/>"
														alt=""></a>
													<div class="view-book">
														<a href="<c:url value ='/web/book/detail?id=${product.id}'/>" class="btn btn-sm btn-white">Xem chi tiết</a>
													</div>
												</div>
												<div class="col-6">
													<div class="mb-2">
														<h6 class="mb-1">${product.name}</h6>
														<div class="d-block line-height">
															<span class="font-size-11 text-warning"> <c:forEach
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
													</div>
													<div class="price d-flex align-items-center">
														<%-- <span class="pr-1 old-price">${product.price}</span> --%>
														<h6>
															<b>${product.price}</b>
														</h6>
													</div>
													<div class="iq-product-action">
														<a href="#"><i
															class="ri-shopping-cart-2-fill text-primary"></i></a> <a
															href="#" class="ml-2"><i
															class="ri-heart-fill text-danger"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
					<div
						class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 trendy-detail">
						<div class="iq-header-title">
							<h4 class="card-title mb-0">Sách bán chạy</h4>
						</div>
						<div class="iq-card-header-toolbar d-flex align-items-center">
							<a href="category.html" class="btn btn-sm btn-primary view-more">Xem
								thêm</a>
						</div>
					</div>
					<div class="iq-card-body trendy-contens">
						<ul id="trendy-slider" class="list-inline p-0 mb-0 row">
							<c:forEach items="${topSellerList}" var="product">
								<li class="col-md-8">
									<div class="d-flex align-items-center">
										<div class="col-5 p-0 position-relative image-overlap-shadow">
											<a href="javascript:void();"><img
												class="img-fluid rounded w-100"
												src="./template/images/trendy-books/01.jpg" alt=""></a>
											<div class="view-book">
												<a href="<c:url value ='/web/book/detail?id=${product.id}'/>" class="btn btn-sm btn-white">Xem chi tiết</a>
											</div>
										</div>
										<div class="col-7">
											<div class="mb-2">
												<h6 class="mb-1">${product.name}</h6>
												<div class="d-block">
													<span class="font-size-13 text-warning"> <c:forEach
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
											</div>
											<div class="price d-flex align-items-center">
												<!-- <span class="pr-1 old-price">$99</span> -->
												<h6>
													<b><b>${product.price}</b></b>
												</h6>
											</div>
											<div class="iq-product-action">
												<a href="javascript:void();"><i
													class="ri-shopping-cart-2-fill text-primary"></i></a> <a
													href="javascript:void();" class="ml-2"><i
													class="ri-heart-fill text-danger"></i></a>
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
				<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
					<div
						class="iq-card-header d-flex justify-content-between align-items-center position-relative">
						<div class="iq-header-title">
							<h4 class="card-title mb-0">Sách được ưa thích</h4>
						</div>
						<div class="iq-card-header-toolbar d-flex align-items-center">
							<a href="<c:url value ='/web/book/detail?id=${product.id}'/>"class="btn btn-sm btn-primary view-more">Xem chi tiết</a>
						</div>
					</div>
					<div class="iq-card-body favorites-contens">
						<ul id="favorites-slider" class="list-inline p-0 mb-0 row">
							<c:forEach items="${topRatingList}" var="product">
								<li class="col-md-8">
									<div class="d-flex justify-content-between align-items-center">
										<div class="col-5 p-0 position-relative">
											<a href="javascript:void();"> <img
												src="./template/images/favorite/05.jpg" class="img-fluid rounded w-100"
												alt="">
											</a>
										</div>
										<div class="col-7">
											<div class="mb-2">
												<h6 class="mb-1">${product.name}</h6>
												<div class="d-block">
													<span class="font-size-13 text-warning"> <c:forEach
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
											</div>
											<div class="price d-flex align-items-center">
												<!-- <span class="pr-1 old-price">$99</span> -->
												<h6>
													<b><b>${product.price}</b></b>
												</h6>
											</div>
											<div class="iq-product-action">
												<a href="javascript:void();"><i
													class="ri-shopping-cart-2-fill text-primary"></i></a> <a
													href="javascript:void();" class="ml-2"><i
													class="ri-heart-fill text-danger"></i></a>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>

						</ul>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

<!-- Wrapper END -->
<!-- Footer -->
