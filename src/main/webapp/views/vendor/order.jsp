<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="col-lg-12">
    <div class="iq-card">
        <div class="iq-card-header d-flex justify-content-between">
            <div class="iq-header-title">
                <h4 class="card-title">Thông tin đơn hàng</h4>
            </div>
        </div>
        <div class="iq-card-body">
            <form onsubmit="required()">
                <div class="row mt-3">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Tên cửa hàng: *</label>
                            <input type="text" class="form-control" name="nameStore" required="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Tên người nhận: *</label>
                            <input type="text" class="form-control" name="name" required="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Số điện thoại: *</label>
                            <input type="text" class="form-control" name="mno" required="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Vân chuyển: *</label>
                            <input type="text" class="form-control" name="delivery" required="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Đia chỉ: *</label>
                            <input type="text" class="form-control" name="address" required="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Ngày đặt: *</label>
                            <input type="text" class="form-control" name="createdAt" required="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="status">Trạng thái: *</label>
                            <select class="form-control" id="status">
                                <option>Chờ xử lý</option>
                                <option>Đang giao</option>
                                <option>Đã giao</option>
                                <option>Đã hủy</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <button id="savenddeliver" type="submit" class="btn btn-primary">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
