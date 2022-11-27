<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<div id="content-page" class="content-page">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="iq-card-transparent mb-0">
					<div class="d-block text-center">
						<h2 class="mb-3">TRA CỨU SẢN PHẨM</h2>
						<div class="w-100 iq-search-filter">
							<form action="search" class="searchbox mt-3" method="post">
								<ul
									class="list-inline p-0 m-0 row justify-content-center search-menu-options">
									<li class="search-menu-opt mt-3">
										<div class="iq-dropdown">
											<div class="form-group mb-0">
												<label>Danh mục</label> <select name = "categorySearch"
													class="form-control form-search-control bg-white border-0"
													id="exampleFormControlSelect1">
													<option selected="" value="0">Tất cả</option>
													<c:forEach items="${categoryList}" var="category">
														<option value="${category.id}">${category.name}</option>
													</c:forEach>

												</select>
											</div>
										</div>
									</li>
									<li class="search-menu-opt mt-3">
										<div class="iq-dropdown">
											<div class="form-group mb-0">
												<label>Cửa hàng</label> <select name = "storeSearch"
													class="form-control form-search-control bg-white border-0"
													id="exampleFormControlSelect2">
													<option selected="" value = "0">Tất cả</option>
													<c:forEach items="${storeList}" var="store">
														<option value="${store.id}">${store.name}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</li>
									<li class="search-menu-opt mt-3">
										<div class="iq-dropdown">
											<div class="form-group mb-0">
												<label>Rating</label> <select name = "ratingSearch"
													class="form-control form-search-control bg-white border-0"
													id="exampleFormControlSelect3">
													<option selected="" value="-1">Tất cả</option>
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
												</select>
											</div>
										</div>
									</li>
									<li class="search-menu-opt mt-3">
										<div class="iq-dropdown">
											<div class="form-group mb-0">
												<label>Giá tối thiểu</label> <select name ="minPriceSearch"
													class="form-control form-search-control bg-white border-0"
													id="exampleFormControlSelect4">
													<option selected="" value="0">0</option>
													<option value="100000">100.000 VNĐ</option>
													<option value="200000">200.000 VNĐ</option>
													<option value="500000">500.000 VNĐ</option>
													<option value="800000">800.000 VNĐ</option>
												</select>
											</div>
										</div>
									</li>
									<div class="m-2">
										<b>-</b>
									</div>
									<li class="search-menu-opt mt-3">
										<div class="iq-dropdown">
											<div class="form-group mb-0">
												<label>Giá tối đa</label> <select name = "maxPriceSearch"
													class="form-control form-search-control bg-white border-0"
													id="exampleFormControlSelect4">
													<option value = "100000">100.000 VNĐ</option>
													<option value = "200000">200.000 VNĐ</option>
													<option value = "500000">500.000 VNĐ</option>
													<option value = "800000">800.000 VNĐ</option>
													<option selected="" value="1000000">1.000.000 VNĐ</option>
												</select>
											</div>
										</div>
									</li>

									<li class="search-menu-opt mt-3"">
									<label>Tìm kiếm</label>
										<div
											class="iq-search-bar search-book d-flex">
								
											<input name="searchkeyword" type="text"
												class="text search-input" placeholder="Tìm kiếm sách...">
											<a class="search-link" href="#"><i class="ri-search-line"></i></a>
											<button type="submit"
												class="btn btn-primary search-data ml-2">Tìm kiếm</button>


										</div>
									</li>
								</ul>
							</form>
						</div>
					</div>
				</div>
				<div class="iq-card">
					<div class="iq-card-body">
						<div class="row">
							<c:forEach items="${searchProductList}" var="product">
								<div class="col-sm-6 col-md-4 col-lg-3">
									<div
										class="iq-card iq-card-block iq-card-stretch iq-card-height search-bookcontent">
										<div class="iq-card-body p-0">
											<div class="d-flex align-items-center">
												<div
													class="col-6 p-0 position-relative image-overlap-shadow">
													<a href="javascript:void();"><img
														class="img-fluid rounded w-100"
														src="<c:url value ='/template/images/browse-books/01.jpg'/>" alt=""></a>
													<div class="view-book">
														<a href="#" class="btn btn-sm btn-white">Xem
															chi tiết</a>
													</div>
												</div>

												<div class="col-6">
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
															<b>${product.price}</b>
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
										</div>
									</div>
								</div>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>