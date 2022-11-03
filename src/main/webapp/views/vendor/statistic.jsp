<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 col-lg-3">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-body">
                    <div class="d-flex align-items-center">
                        <div
                                class="rounded-circle iq-card-icon d-flex align-items-center justify-content-center bg-primary"><i
                                class="fa-solid fa-users"></i></div>
                        <div class="text-left ml-3">
                            <h2 class="mb-0"><span class="counter">5000</span></h2>
                            <h5 class="">Customer</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-body">
                    <div class="d-flex align-items-center">
                        <div
                                class="rounded-circle iq-card-icon d-flex align-items-center justify-content-center bg-danger"><i
                                class="fa-solid fa-book"></i></div>
                        <div class="text-left ml-3">
                            <h2 class="mb-0"><span class="counter">4.8</span>k</h2>
                            <h5 class="">Books</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-body">
                    <div class="d-flex align-items-center">
                        <div class="rounded-circle iq-card-icon d-flex align-items-center justify-content-center bg-warning"><i
                                class="fa-solid fa-cart-shopping"></i>
                        </div>
                        <div class="text-left ml-3">
                            <h2 class="mb-0"><span class="counter">1.2</span>k</h2>
                            <h5 class="">Sale</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-body">
                    <div class="d-flex align-items-center">
                        <div
                                class="rounded-circle iq-card-icon d-flex align-items-center justify-content-center bg-info"><i
                                class="fa-solid fa-satellite-dish"></i></div>
                        <div class="text-left ml-3">
                            <h2 class="mb-0"><span class="counter">690</span></h2>
                            <h5 class="">Orders</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 similar-detail">
                    <div class="iq-header-title">
                        <h4 class="card-title mb-0">Top sách bán chạy</h4>
                    </div>
                </div>
                    <div class="iq-card-body">
                        <div class="row">
                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="iq-card iq-card-block iq-card-stretch iq-card-height search-bookcontent">
                                    <div class="iq-card-body p-0">
                                        <div class="d-flex align-items-center">
                                            <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                <a href="#"><img class="img-fluid rounded w-100"
                                                                                  src="../template/images/search-book/01.jpg" alt=""></a>
                                                <div class="view-book">
                                                    <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="mb-2">
                                                    <h6 class="mb-1">A Hunger knut book</h6>
                                                    <p class="font-size-13 line-height mb-1">Gurt Mistrioty</p>
                                                    <div class="d-block">
                                                   <span class="font-size-13 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                                                    </div>
                                                </div>
                                                <div class="price d-flex align-items-center">
                                                    <span class="pr-1 old-price">$99</span>
                                                    <h6><b>$89</b></h6>
                                                </div>
                                                <div class="iq-product-action">
                                                    <a href="#">
                                                        <i class="fa-solid fa-cart-shopping text-primary"></i>
                                                    </a>
                                                    <a href="#" class="ml-2">
                                                        <i class="fa-solid fa-heart text-danger"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="iq-card iq-card-block iq-card-stretch iq-card-height search-bookcontent">
                                    <div class="iq-card-body p-0">
                                        <div class="d-flex align-items-center">
                                            <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                                  src="../template/images/search-book/02.jpg" alt=""></a>
                                                <div class="view-book">
                                                    <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="mb-2">
                                                    <h6 class="mb-1">In Cold Blood Book..</h6>
                                                    <p class="font-size-13 line-height mb-1">Anna Mull</p>
                                                    <div class="d-block">
                                                   <span class="font-size-13 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                                                    </div>
                                                </div>
                                                <div class="price d-flex align-items-center">
                                                    <span class="pr-1 old-price">$129</span>
                                                    <h6><b>$99</b></h6>
                                                </div>
                                                <div class="iq-product-action">
                                                    <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                    <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="iq-card iq-card-block iq-card-stretch iq-card-height search-bookcontent">
                                    <div class="iq-card-body p-0">
                                        <div class="d-flex align-items-center">
                                            <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                                  src="../template/images/search-book/03.jpg" alt=""></a>
                                                <div class="view-book">
                                                    <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="mb-2">
                                                    <h6 class="mb-1">The Truman Capite</h6>
                                                    <p class="font-size-13 line-height mb-1">Ira Membrit</p>
                                                    <div class="d-block">
                                                   <span class="font-size-13 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                                                    </div>
                                                </div>
                                                <div class="price d-flex align-items-center">
                                                    <span class="pr-1 old-price">$79</span>
                                                    <h6><b>$70</b></h6>
                                                </div>
                                                <div class="iq-product-action">
                                                    <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                    <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="iq-card iq-card-block iq-card-stretch iq-card-height search-bookcontent">
                                    <div class="iq-card-body p-0">
                                        <div class="d-flex align-items-center">
                                            <div class="col-6 p-0 position-relative image-overlap-shadow">
                                                <a href="javascript:void();"><img class="img-fluid rounded w-100"
                                                                                  src="../template/images/search-book/04.jpg" alt=""></a>
                                                <div class="view-book">
                                                    <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="mb-2">
                                                    <h6 class="mb-1">A Book Of Thinner</h6>
                                                    <p class="font-size-13 line-height mb-1">Pete Sariya</p>
                                                    <div class="d-block">
                                                   <span class="font-size-13 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                                                    </div>
                                                </div>
                                                <div class="price d-flex align-items-center">
                                                    <h6><b>$129</b></h6>
                                                </div>
                                                <div class="iq-product-action">
                                                    <a href="javascript:void();"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                                                    <a href="javascript:void();" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
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
        <div class="col-lg-12">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 similar-detail">
                    <div class="iq-header-title">
                        <h4 class="card-title mb-0">Top đơn hàng mới nhất</h4>
                    </div>
                </div>
                <div class="iq-card-body">
                    <div class="table-responsive">
                        <table id="list-all-order" class="table table-striped table-bordered mt-4"
                               role="grid" aria-describedby="user-list-page-info">
                            <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Mã đơn hàng</th>
                                <th>Người mua</th>
                                <th>Vận chuyển</th>
                                <th>Trạng thái</th>
                                <th>Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Sách văn học</td>
                                <td>01</td>
                                <td>Trần Minh Mẫn</td>
                                <td>Chuyển phát nhanh</td>
                                <td>Chờ xử lý</td>
                                <td>
                                    <a class="iq-bg-primary" data-toggle="tooltip"
                                       data-placement="center"
                                       title="" data-original-title="Edit"
                                       href="<c:url value="/vendor/order-detail?action=edit&id=1"/> ">
                                        Xem chi tiết
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
