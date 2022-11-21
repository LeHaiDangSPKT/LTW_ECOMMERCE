<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div id="loading">
    <div id="loading-center">
    </div>
</div>
<!-- loader END -->
<!-- Wrapper Start -->
<div class="wrapper">
    <div id="content-page" class="content-page">
        <div class="iq-card">
            <div class="iq-card-header d-flex justify-content-center">
                <div class="iq-header-title">
                    <h4 class="card-title" id="title">${orders.status}</h4>
                </div>
            </div>
            <div class="iq-card-body">
                <form>
                    <div class="row justify-content-center">
                        <input type="hidden" class="form-control" name="id">
                        <div class="form-group col-lg-6">
                            <label>Mã khách hàng</label>
                            <input type="text" class="form-control" name="userId" readonly value="${orders.userId}">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Mã cửa hàng</label>
                            <input type="text" class="form-control" name="storeId" readonly value="${orders.storeId}">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Mã đơn vị vận chuyển</label>
                            <input type="text" class="form-control" name="deliveryId" readonly value="${orders.deliveryId}">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Địa chỉ</label>
                            <input type="text" class="form-control" name="address" readonly value="${orders.address}">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Số điện thoại</label>
                            <input type="text" class="form-control" name="phone" readonly value="${orders.phone}">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Số tiền người dùng trả</label>
                            <input type="text" class="form-control" name="amountFromUser" readonly value="${orders.amountFromUser}">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Số tiền cửa hàng nhận được</label>
                            <input type="text" class="form-control" name="amountToStore" readonly value="${orders.amountToStore}">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Số tiền hệ thống nhận được</label>
                            <input type="text" class="form-control" name="amountToGD" readonly value="${orders.amountToGD}">
                        </div>
                        <div class="btn btn-secondary w-50" id="back">
                            Quay lại
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    document.getElementById("title").innerText == "delivered" ? document.getElementById("title").innerText = "ĐƠN HÀNG CHI TIẾT (ĐÃ GIAO)" : document.getElementById("title").innerText ="ĐƠN HÀNG CHI TIẾT (ĐANG GIAO)"
    document.getElementById("back").addEventListener('click', function () {
        history.back();
    })
</script>
</body>
</html>
