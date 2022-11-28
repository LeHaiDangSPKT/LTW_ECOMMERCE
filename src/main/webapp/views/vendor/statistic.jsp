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
                            <h2 class="mb-0"><span class="counter">${totalCustomer}</span></h2>
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
                            <h2 class="mb-0"><span class="counter">${totalProduct}</span></h2>
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
                            <h2 class="mb-0"><span class="counter">${totalSale}</span></h2>
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
                            <h2 class="mb-0"><span class="counter">${totalOrder}</span></h2>
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
                        <h4 class="card-title mb-0">Top 4 sách bán chạy</h4>
                    </div>
                </div>
                    <div class="iq-card-body">
                        <div class="row">
                            <c:forEach items="${products}" var="product">
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <div class="iq-card iq-card-block iq-card-stretch iq-card-height search-bookcontent">
                                        <div class="iq-card-body p-0">
                                            <div>
                                                <div class="col-12 p-0 position-relative image-overlap-shadow"
                                                     style="height: 150px;">
                                                    <a href="#">
                                                        <c:url value="/image?fname=${product.getImages().get(0).getName()}&type=product"
                                                                       var="imgUrl"></c:url>
                                                        <img class="img-fluid rounded w-100 h-100"
                                                             style="object-fit: contain;"
                                                             src="${imgUrl}"
                                                             alt=""></a>
                                                    <div class="view-book">
                                                        <a href="<c:url
                                                   value="/vendor/product/edit?pname=${product.name}&storeId=${product.storeId}"/> " class="btn btn-sm btn-white">View Book</a>
                                                    </div>
                                                </div>
                                                <div class="col-12 mt-3">
                                                    <div class="mb-2">
                                                        <h6 class="mb-1">${product.name}</h6>
                                                        <p class="font-size-13 line-height mb-1">${product.description}</p>
                                                        <div class="d-block">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                                                        </div>
                                                    </div>
                                                    <div class="price d-flex">
                                                        <span
                                                                class="pr-1 old-price font-size-13">${product.price}</span>
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
        <div class="col-lg-12">
            <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
                <div class="iq-card-header d-flex justify-content-between align-items-center position-relative mb-0 similar-detail">
                    <div class="iq-header-title">
                        <h4 class="card-title mb-0">Đơn hàng mới nhất</h4>
                    </div>
                </div>
                <div class="iq-card-body">
                    <div class="table-responsive">
                        <table id="list-all-order" class="table table-striped table-bordered mt-4"
                               role="grid" aria-describedby="user-list-page-info">
                            <thead>
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Người mua</th>
                                <th>Vận chuyển</th>
                                <th>Ngày đặt</th>
                                <th>Trạng thái</th>
                                <th>Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${orders}" var="order">
                                <tr>
                                    <td>${order.id}</td>
                                    <td>${order.user.firstname} ${order.user.lastname}</td>
                                    <td>${order.delivery.name}</td>
                                    <td>${order.createdAt}</td>
                                    <c:if test="${order.status == 'not-processed'}">
                                        <td>Chờ xử lý</td>
                                    </c:if>
                                    <c:if test="${order.status == 'shipped'}">
                                        <td>Đang giao</td>
                                    </c:if>
                                    <c:if test="${order.status == 'delivered'}">
                                        <td>Đã giao</td>
                                    </c:if>
                                    <c:if test="${order.status == 'cancelled'}">
                                        <td>Đã hủy</td>
                                    </c:if>
                                    <td>
                                        <a class="iq-bg-primary" data-toggle="tooltip"
                                           data-placement="center"
                                           title="" data-original-title="Edit"
                                           href="<c:url
                                                       value="/vendor/order/detail?action=edit&orderId=${order.id}"/> ">
                                            Xem chi tiết
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
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
