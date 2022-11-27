<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>HomePage</title>
</head>
<body>
<div class="container-fluid">
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
                        <c:url value="/image?fname=${store.avatar}&type=store"
                               var="imgAvatar"></c:url>
                        <img src="${imgAvatar}" class="d-block w-100 h-100" alt="#" style="object-fit: cover;">
                    </div>
                    <c:forEach items="${images}" var="image">
                        <div class="carousel-item h-100">
                            <c:url value="/image?fname=${image}&type=store"
                                   var="img"></c:url>
                            <img src="${img}" class="d-block w-100 h-100" alt="#" style="object-fit: cover;">
                        </div>
                    </c:forEach>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                    <div class="iq-header-title">
                        <h4 class="card-title mb-0">Sản phẩm của Shop</h4>
                    </div>
                    <div class="iq-card-header-toolbar d-flex align-items-center">
                        <a href="category.html" class="btn btn-sm btn-primary view-more">View More</a>
                    </div>
                </div>
                <div class="iq-card-body">
                    <div class="row">
                        <c:forEach items="${products}" var="product">
                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                    <div class="iq-card-body p-0">
                                        <div class="d-flex align-items-center">
                                            <div class="col-6 p-0 position-relative image-overlap-shadow"
                                                 style="height: 150px;">
                                                <a href="">
                                                    <c:url value="/image?fname=${product.getImages().get(0).getName()}&type=product"
                                                           var="imgUrl"></c:url>
                                                    <img class="img-fluid rounded w-100 h-100"
                                                         style="object-fit: contain;"
                                                         src="${imgUrl}"
                                                         alt="">
                                                </a>
                                                <div class="view-book">
                                                    <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="mb-2">
                                                    <h6 class="mb-1">${product.name}</h6>
                                                    <p class="font-size-13 line-height mb-1">${product.description}</p>
                                                    <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <span class="pr-1 old-price">${product.price}</span>
                                                    <br>
                                                    <h6><b>${product.promotionalPrice}</b></h6>
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
        <div class="col-lg-6">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-header d-flex justify-content-between mb-0">
                    <div class="iq-header-title">
                        <h4 class="card-title">Featured Books</h4>
                    </div>
                    <div class="iq-card-header-toolbar d-flex align-items-center">
                        <div class="dropdown">
                                 <span class="dropdown-toggle p-0 text-body" id="dropdownMenuButton2"
                                       data-toggle="dropdown">
                                 This Week<i class="ri-arrow-down-s-fill"></i>
                                 </span>
                            <div class="dropdown-menu dropdown-menu-right shadow-none"
                                 aria-labelledby="dropdownMenuButton2">
                                <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                                <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                                <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                                <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                                <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="iq-card-body">
                    <div class="row align-items-center">
                        <div class="col-sm-5 pr-0">
                            <a href="#"><img class="img-fluid rounded w-100"
                                             src="../template/images/page-img/featured-book.png"
                                             alt=""></a>
                        </div>
                        <div class="col-sm-7 mt-3 mt-sm-0">
                            <h4 class="mb-2">Casey Christie night book into find...</h4>
                            <p class="mb-2">Author: Gheg origin</p>
                            <div class="mb-2 d-block">
                                    <span class="font-size-12 text-warning">
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                    </span>
                            </div>
                            <span class="text-dark mb-3 d-block">Lorem Ipsum is simply dummy test in find a of the printing and typeset ing industry into end.</span>
                            <button type="submit" class="btn btn-primary learn-more">Learn More</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-header d-flex justify-content-between mb-0">
                    <div class="iq-header-title">
                        <h4 class="card-title">Featured Writer</h4>
                    </div>
                    <div class="iq-card-header-toolbar d-flex align-items-center">
                        <div class="dropdown">
                                 <span class="dropdown-toggle p-0 text-body" id="dropdownMenuButton3"
                                       data-toggle="dropdown">
                                 This Week<i class="ri-arrow-down-s-fill"></i>
                                 </span>
                            <div class="dropdown-menu dropdown-menu-right shadow-none"
                                 aria-labelledby="dropdownMenuButton3">
                                <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                                <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                                <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                                <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                                <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="iq-card-body">
                    <ul class="list-inline row mb-0 align-items-center iq-scrollable-block">
                        <li class="col-sm-6 d-flex mb-3 align-items-center">
                            <div class="icon iq-icon-box mr-3">
                                <a href="#"><img class="img-fluid avatar-60 rounded-circle"
                                                 src="../template/images/user/01.jpg" alt=""></a>
                            </div>
                            <div class="mt-1">
                                <h6>Brandon Guidelines</h6>
                                <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                            </div>
                        </li>
                        <li class="col-sm-6 d-flex mb-3 align-items-center">
                            <div class="icon iq-icon-box mr-3">
                                <a href="#"><img class="img-fluid avatar-60 rounded-circle"
                                                 src="../template/images/user/02.jpg" alt=""></a>
                            </div>
                            <div class="mt-1">
                                <h6>Hugh Millie-Yate</h6>
                                <p class="mb-0 text-primary">Publish Books: <span class="text-body">432</span></p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                    <div class="iq-header-title">
                        <h4 class="card-title mb-0">Favorite Reads</h4>
                    </div>
                    <div class="iq-card-header-toolbar d-flex align-items-center">
                        <a href="category.html" class="btn btn-sm btn-primary view-more">View More</a>
                    </div>
                </div>
                <div class="iq-card-body favorites-contens">
                    <ul id="favorites-slider" class="list-inline p-0 mb-0 row">
                        <li class="col-md-4">
                            <div class="d-flex align-items-center">
                                <div class="col-5 p-0 position-relative">
                                    <a href="#">
                                        <img src="../template/images/favorite/01.jpg" class="img-fluid rounded w-100" alt="">
                                    </a>
                                </div>
                                <div class="col-7">
                                    <h5 class="mb-2">Every Book is a new Wonderful Travel..</h5>
                                    <p class="mb-2">Author : Pedro Araez</p>
                                    <div class="d-flex justify-content-between align-items-center text-dark font-size-13">
                                        <span>Reading</span>
                                        <span class="mr-4">78%</span>
                                    </div>
                                    <div class="iq-progress-bar-linear d-inline-block w-100">
                                        <div class="iq-progress-bar iq-bg-primary">
                                            <span class="bg-primary" data-percent="78"></span>
                                        </div>
                                    </div>
                                    <a href="#" class="text-dark">Read Now<i class="ri-arrow-right-s-line"></i></a>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
