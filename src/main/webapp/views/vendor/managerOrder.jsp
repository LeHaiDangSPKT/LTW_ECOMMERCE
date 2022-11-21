<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="iq-card">
                <div class="iq-card-body p-0">
                    <div class="iq-edit-list">
                        <ul class="iq-edit-profile d-flex nav nav-pills">
                            <li class="col-md-2 p-0">
                                <a class="nav-link ${statusResp=='all'?'active':''}"
                                   href="<c:url value="/vendor/order/manager?status=all"/>">
                                    Tất cả
                                </a>
                            </li>
                            <li class="col-md-2 p-0">
                                <a class="nav-link ${statusResp=='not-processed'?'active':''}"
                                   href="<c:url value="/vendor/order/manager?status=not-processed"/> ">
                                    Chờ xử lý
                                </a>
                            </li>
                            <li class="col-md-2 p-0">
                                <a class="nav-link ${statusResp=='delivered'?'active':''}"
                                   href="<c:url value="/vendor/order/manager?status=delivered"/> ">
                                    Đang giao
                                </a>
                            </li>
                            <li class="col-md-2 p-0">
                                <a class="nav-link ${statusResp=='shipped'?'active':''}"
                                   href="<c:url value="/vendor/order/manager?status=shipped"/> ">
                                    Đã giao
                                </a>
                            </li>
                            <li class="col-md-2 p-0">
                                <a class="nav-link ${statusResp=='cancelled'?'active':''}"
                                   href="<c:url value="/vendor/order/manager?status=cancelled"/> ">
                                    Đơn hủy
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="iq-card-transparent mb-0">
                <div class="d-block">
                    <div class="w-100 iq-search-filter">
                        <div class="iq-search-bar search-book d-flex align-items-center">
                            <form action="#" class="searchbox">
                                <input type="text" class="text search-input" placeholder="search here...">
                                <a class="search-link" href="#"></a>
                            </form>
                            <button type="submit" class="btn btn-primary search-data ml-2 mb-3">Search</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="iq-edit-list-data">
                <div class="tab-content">
                    <div class="tab-pane fade active show" id="allorder" role="tabpanel">
                        <div class="iq-card">
                            <div class="iq-card-header d-flex justify-content-between">
                                <div class="iq-header-title">
                                    <h4 class="card-title">Số đơn hàng: 1</h4>
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
                                                <td>${order.status}</td>
                                                <td>
                                                    <a class="iq-bg-primary" data-toggle="tooltip"
                                                       data-placement="center"
                                                       title="" data-original-title="Edit"
                                                       href="<c:url value="/vendor/order/detail?action=edit&id=1"/> ">
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
        </div>
    </div>
</div>
</body>
</html>
