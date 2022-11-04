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
                <h4 class="card-title">Quản lý tất cả đơn hàng đang giao</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <div class="table-responsive">
                <table id="user-list-table" class="table table-striped table-bordered mt-4" role="grid"
                       aria-describedby="user-list-page-info">
                  <thead>
                  <tr>
                    <th>Tên sản phẩm</th>
                    <th>Mô tả</th>
                    <th>Giá</th>
                    <th>Số lượng đã bán</th>
                    <th></th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>Lê Hải</td>
                    <td>Đăng</td>
                    <td>111111111111</td>
                    <td>annasthesia@gmail.com</td>
                    <td><a href="<c:url value='/admin/order/details'/>" class="text-decoration-underline text-primary">Xem chi tiết</a></td>
                  </tr>
                  <tr>
                    <td>Anna Sthesia</td>
                    <td>Anna Sthesia</td>
                    <td>(760) 756 7568</td>
                    <td>annasthesia@gmail.com</td>
                    <td><a href="<c:url value='/admin/order/details'/>" class="text-decoration-underline text-primary">Xem chi tiết</a></td>
                  </tr>
                  <tr>
                    <td>Anna Sthesia</td>
                    <td>Anna Sthesia</td>
                    <td>(760) 756 7568</td>
                    <td>annasthesia@gmail.com</td>
                    <td><a href="<c:url value='/admin/order/details'/>" class="text-decoration-underline text-primary">Xem chi tiết</a></td>

                  </tr>
                  </tbody>
                </table>
              </div>
              <div class="row mt-3 justify-content-center">
                <nav aria-label="Page navigation example">
                  <ul class="pagination justify-content-end mb-0">
                    <li class="page-item disabled">
                      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                      <a class="page-link" href="#">Next</a>
                    </li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
