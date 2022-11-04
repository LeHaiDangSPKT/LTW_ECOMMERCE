<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

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
                    <h4 class="card-title">Đơn hàng chi tiết</h4>
                </div>
            </div>
            <div class="iq-card-body">
                <form>
                    <div class="row justify-content-center">
                        <div class="form-group col-lg-6">
                            <label>Mã khách hàng</label>
                            <input type="text" class="form-control" id="userId">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Mã cửa hàng</label>
                            <input type="text" class="form-control" id="storeId">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Mã đơn vị vận chuyển</label>
                            <input type="text" class="form-control" id="deliveryId">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Địa chỉ</label>
                            <input type="text" class="form-control" id="address">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Số điện thoại</label>
                            <input type="text" class="form-control" id="phone-number">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Số tiền người dùng trả</label>
                            <input type="text" class="form-control" id="amountFromUser">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Số tiền cửa hàng nhận được</label>
                            <input type="text" class="form-control" id="amountTốtre">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Số tiền hệ thống nhận được</label>
                            <input type="text" class="form-control" id="amountToGD">
                        </div>
                        <div class="form-group col-lg-6">
                            <label>Trạng thái</label>
                            <select id="status" class="form-control">
                                <option value="">Trạng thái 1</option>
                                <option value="">Trạng thái 2</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
