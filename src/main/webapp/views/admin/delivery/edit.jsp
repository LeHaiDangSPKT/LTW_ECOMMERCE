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
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-center">
                            <div class="iq-header-title">
                                <h4 class="card-title">Chỉnh sửa đơn vị vận chuyển</h4>
                            </div>
                        </div>
                        <div class="iq-card-body">
                            <form action="">
                                <div class="form-group">
                                    <label>Tên đơn vị vận chuyển:</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Mô tả:</label>
                                    <textarea class="form-control" rows="4"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Giá:</label>
                                    <input type="number" min=0 class="form-control">
                                </div>
                                <button type="submit" class="btn btn-primary">Xác nhận</button>
                                <button type="reset" class="btn btn-danger">Dọn dẹp</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>