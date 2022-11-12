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
            <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height rounded">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="../template/images/browse-books/01.jpg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
                    <div class="iq-header-title">
                        <h4 class="card-title mb-0">Browse Books</h4>
                    </div>
                    <div class="iq-card-header-toolbar d-flex align-items-center">
                        <a href="category.html" class="btn btn-sm btn-primary view-more">View More</a>
                    </div>
                </div>
                <div class="iq-card-body">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                                <div class="iq-card-body p-0">
                                    <div class="d-flex align-items-center">
                                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                                            <a href="">
                                                <img class="img-fluid rounded w-100"
                                                     src="/uploads/1668214044958.jpg"
                                                     alt="">
                                            </a>
                                            <div class="view-book">
                                                <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="mb-2">
                                                <h6 class="mb-1">Reading on the World</h6>
                                                <p class="font-size-13 line-height mb-1">Jhone Steben</p>
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
                                            <div class="price d-flex align-items-center">
                                                <span class="pr-1 old-price">$100</span>
                                                <h6><b>$89</b></h6>
                                            </div>
                                            <div class="iq-product-action">
                                                <a href="javascript:void();"><i
                                                        class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                <a href="javascript:void();" class="ml-2"><i
                                                        class="ri-heart-fill text-danger"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                            <a href="javascript:void();"><img class="img-fluid rounded w-100"
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
                                <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle"
                                                                  src="../template/images/user/01.jpg" alt=""></a>
                            </div>
                            <div class="mt-1">
                                <h6>Brandon Guidelines</h6>
                                <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                            </div>
                        </li>
                        <li class="col-sm-6 d-flex mb-3 align-items-center">
                            <div class="icon iq-icon-box mr-3">
                                <a href="javascript:void();"><img class="img-fluid avatar-60 rounded-circle"
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
                                    <a href="javascript:void();">
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
