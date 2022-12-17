<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url value="/vendor/loadmore" var="UrlLoadMore" />
<html>
<head>
<title>HomePage</title>
</head>
<body>
		<div class="container-fluid">
				<c:if test="${count == 0}">
						<h5>Bạn chưa có cửa hàng. Làm theo hướng dẫn để tạo cửa hàng.</h5>
						<div class="iq-card-body row">
								<div class="col-12">
										<h5>Bước 1:</h5>
										<img alt="" src="<c:url value="/template/images/guide/1.png"/>" class="img-fluid">
										<div class="mt-3">
												<ol>
														<li>Chọn "Thông tin cửa hàng" trên thanh sidebar</li>
														<li>Ấn nút "Tạo của hàng" để tiến hành tạo cửa hàng</li>
														<li>Số dư trong Ví của cửa hàng của bạn khi giao dịch tiền bán hàng sẽ được chuyển vào đây</li>
														<li>Đây là số dư Ví của bạn, bạn có thể rút tiền từ ví của Store về Ví của mình</li>
												</ol>
										</div>
								</div>
								<div class="col-12">
										<h5>Bước 2:</h5>
										<div class="mt-3">
												<p>Bạn chọn ảnh cho cửa hàng của mình nhé! Nhớ chọn ảnh thật đẹp để thui hút thật nhiều khách hàng .</p>
										</div>
										<img alt="" src="<c:url value="/template/images/guide/3.png"/>" class="img-fluid">
								</div>
								<div class="col-12">
										<div class="mt-3">
												<p>Đặt tên cho cửa hàng của bạn và nhớ ghi mô tả cho cửa hàng ..</p>
										</div>
										<img alt="" src="<c:url value="/template/images/guide/4.png"/>" class="img-fluid">
								</div>
								<div class="col-12">
										<h5>Bước 3:</h5>
										<div class="mt-3">
												<p>Cửa hàng của bạn sau khi được tạo thành công.</p>
										</div>
										<img alt="" src="<c:url value="/template/images/guide/5.png"/>" class="img-fluid"> <img alt=""
												src="<c:url value="/template/images/guide/6.png"/>" class="img-fluid"
										>
								</div>
								<div class="col-12 d-flex">
										<h5>Để hiểu hơn về cách bán hàng trên hệ thống vui lòng tải tệp hướng dẫn sau:</h5>
										<a href="<c:url value="/vendor/download-guide"/>" class="ml-3"> 
											Hướng dẫn
											<i class="fa-solid fa-download"></i> 
										</a>
								</div>
						</div>
				</c:if>
				<c:if test="${count == 1}">
						<div class="row">
								<div class="col-lg-12">
										<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="height: 250px;">
												<ol class="carousel-indicators">
														<li data-target="#carouselExampleIndicators" data-slide-to="0" class=""></li>
														<li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
														<li data-target="#carouselExampleIndicators" data-slide-to="2" class=""></li>
														<li data-target="#carouselExampleIndicators" data-slide-to="3" class=""></li>
												</ol>
												<div class="carousel-inner">
														<div class="carousel-item active h-100">
																<c:url value="/image?fname=${store.avatar}&type=store" var="imgAvatar"></c:url>
																<img src="${imgAvatar}" class="d-block w-100 h-100" alt="#" style="object-fit: cover;">
														</div>
														<c:forEach items="${images}" var="image">
																<div class="carousel-item h-100">
																		<c:url value="/image?fname=${image}&type=store" var="img"></c:url>
																		<img src="${img}" class="d-block w-100 h-100" alt="#" style="object-fit: cover;">
																</div>
														</c:forEach>
												</div>
												<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev"> <span
														class="carousel-control-prev-icon" aria-hidden="true"
												></span> <span class="sr-only">Previous</span>
												</a> <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"> <span
														class="carousel-control-next-icon" aria-hidden="true"
												></span> <span class="sr-only">Next</span>
												</a>
										</div>
								</div>
								<div class="col-lg-12">
										<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
												<div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
														<div class="iq-header-title">
																<h4 class="card-title mb-0">Sản phẩm của Shop</h4>
														</div>
												</div>
												<div class="iq-card-body">
														<div class="row" id="list-product">
																<c:forEach items="${products}" var="product">
																		<div class="product col-sm-6 col-md-4 col-lg-3">
																				<div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
																						<div class="iq-card-body p-0">
																								<div>
																										<div class="col-12 p-0 position-relative image-overlap-shadow" style="height: 150px;">
																												<a href=""> <c:url
																																value="/image?fname=${product.getImages().get(0).getName()}&type=product" var="imgUrl"
																														></c:url> <img class="img-fluid rounded w-100 h-100" style="object-fit: contain;"
																														src="${imgUrl}" alt=""
																												>
																												</a>
																												<div class="view-book">
																														<a
																																href="<c:url value="/vendor/product/edit?pname=${product.name}&storeId=${product.storeId}"/>"
																																class="btn btn-sm btn-white"
																														> View Book </a>
																												</div>
																										</div>
																										<div class="col-12 mt-3">
																												<div class="mb-2">
																														<h6 class="mb-1">${product.name}</h6>
																														<p class="font-size-13 line-height mb-1">${product.description}</p>
																														<div class="d-block line-height">
																																<span id="rating" class="font-size-11 text-warning"> <c:forEach var="i" begin="1"
																																				end="5"
																																		>
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
																												<div class="price d-flex">
																														<span class="pr-1 old-price font-size-13">${product.price}</span> <br>
																														<h6>
																																<b>${product.promotionalPrice}</b>
																														</h6>
																												</div>
																										</div>
																								</div>
																						</div>
																				</div>
																		</div>
																</c:forEach>
														</div>
														<div class="iq-card-header-toolbar d-flex justify-content-center align-items-center">
																<button onclick="LoadMore()" class="btn btn-sm btn-primary view-more">View More</button>
														</div>
												</div>
										</div>
								</div>
						</div>
				</c:if>
		</div>
		<script>
			function LoadMore() {
				const amount = document.getElementsByClassName("product").length;
				$.ajax({
					url : "${UrlLoadMore}",
					type : "get",
					data : {
						exist : amount
					},
					success : function(data) {
						$("#list-product").append(data);
					},
					error : function(xhr) {

					}
				})
			}
		</script>
</body>
</html>
