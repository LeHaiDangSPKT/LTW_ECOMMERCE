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
        <div class="col-lg-12">
            <div class="iq-card">
                <div class="iq-card-body p-0">
                    <div class="iq-edit-list">
                        <ul class="iq-edit-profile d-flex nav nav-pills">
                            <li class="col-md-2 p-0">
                                <a class="nav-link active" data-toggle="pill" href="#allorder">
                                    Tất cả
                                </a>
                            </li>
                            <li class="col-md-2 p-0">
                                <a class="nav-link" data-toggle="pill" href="#processingorder">
                                    Chờ xử lý
                                </a>
                            </li>
                            <li class="col-md-2 p-0">
                                <a class="nav-link" data-toggle="pill" href="#shipped">
                                    Đang giao
                                </a>
                            </li>
                            <li class="col-md-2 p-0">
                                <a class="nav-link" data-toggle="pill" href="#delivered">
                                    Đã giao
                                </a>
                            </li>
                            <li class="col-md-2 p-0">
                                <a class="nav-link" data-toggle="pill" href="#cancelled">
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
                                <div class="row">
                                    <div class="form-group col-sm-6">
                                        <div class="form-group">
                                            <label>Chọn cửa hàng:</label>
                                            <select class="form-control" id="">
                                                <option selected="" disabled="">Cửa hàng</option>
                                                <option>General Books</option>
                                                <option>History Books</option>
                                            </select>

                                        </div>
                                        <button type="submit" class="btn btn-primary search-data ml-2">
                                            Xác nhận
                                        </button>
                                    </div>

                                </div>
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
                    <div class="tab-pane fade" id="processingorder" role="tabpanel">
                        <div class="iq-card">
                            <div class="iq-card-header d-flex justify-content-between">
                                <div class="iq-header-title">
                                    <h4 class="card-title">Số lượng đơn hàng: 1</h4>
                                </div>
                            </div>
                            <div class="iq-card-body">
                                <div class="row">
                                    <div class="form-group col-sm-6">
                                        <div class="form-group">
                                            <label>Chọn cửa hàng:</label>
                                            <select class="form-control" id="">
                                                <option selected="" disabled="">Cửa hàng</option>
                                                <option>General Books</option>
                                                <option>History Books</option>
                                            </select>

                                        </div>
                                        <button type="submit" class="btn btn-primary search-data ml-2">
                                            Xác nhận
                                        </button>
                                    </div>

                                </div>
                                <div class="table-responsive">
                                    <table id="list-order-processing" class="table table-striped table-bordered mt-4"
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
                    <div class="tab-pane fade" id="shipped" role="tabpanel">
                        <div class="iq-card">
                            <div class="iq-card-header d-flex justify-content-between">
                                <div class="iq-header-title">
                                    <h4 class="card-title">Số lượng đơn hàng: 1</h4>
                                </div>
                            </div>
                            <div class="iq-card-body">
                                <div class="row">
                                    <div class="form-group col-sm-6">
                                        <div class="form-group">
                                            <label>Chọn cửa hàng:</label>
                                            <select class="form-control" id="">
                                                <option selected="" disabled="">Cửa hàng</option>
                                                <option>General Books</option>
                                                <option>History Books</option>
                                            </select>

                                        </div>
                                        <button type="submit" class="btn btn-primary search-data ml-2">
                                            Xác nhận
                                        </button>
                                    </div>

                                </div>
                                <div class="table-responsive">
                                    <table id="list-order-shipped" class="table table-striped table-bordered mt-4"
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
                                            <td>Đang giao</td>
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
                    <div class="tab-pane fade" id="delivered" role="tabpanel">
                        <div class="iq-card">
                            <div class="iq-card-header d-flex justify-content-between">
                                <div class="iq-header-title">
                                    <h4 class="card-title">Số lượng đơn hàng</h4>
                                </div>
                            </div>
                            <div class="iq-card-body">
                                <div class="row">
                                    <div class="form-group col-sm-6">
                                        <div class="form-group">
                                            <label>Chọn cửa hàng:</label>
                                            <select class="form-control" id="">
                                                <option selected="" disabled="">Cửa hàng</option>
                                                <option>General Books</option>
                                                <option>History Books</option>
                                            </select>

                                        </div>
                                        <button type="submit" class="btn btn-primary search-data ml-2">
                                            Xác nhận
                                        </button>
                                    </div>

                                </div>
                                <div class="table-responsive">
                                    <table id="list-order-delivered" class="table table-striped table-bordered mt-4"
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
                                            <td>Đã giao</td>
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
                    <div class="tab-pane fade" id="cancelled" role="tabpanel">
                        <div class="iq-card">
                            <div class="iq-card-header d-flex justify-content-between">
                                <div class="iq-header-title">
                                    <h4 class="card-title">Số lượng đơn hàng</h4>
                                </div>
                            </div>
                            <div class="iq-card-body">
                                <div class="row">
                                    <div class="form-group col-sm-6">
                                        <div class="form-group">
                                            <label>Chọn cửa hàng:</label>
                                            <select class="form-control" id="">
                                                <option selected="" disabled="">Cửa hàng</option>
                                                <option>General Books</option>
                                                <option>History Books</option>
                                            </select>

                                        </div>
                                        <button type="submit" class="btn btn-primary search-data ml-2">
                                            Xác nhận
                                        </button>
                                    </div>

                                </div>
                                <div class="table-responsive">
                                    <table id="list-order-cancelled" class="table table-striped table-bordered mt-4"
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
                                            <td>Chờ phản hồi</td>
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
        </div>
    </div>
</div>
</body>
</html>
