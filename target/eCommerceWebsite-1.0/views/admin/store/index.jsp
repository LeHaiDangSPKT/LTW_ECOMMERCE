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
      <div class="row iq-card py-2 flex-column justify-content-center align-items-center">
        <h4>Quản lý cửa mới</h4>
        <h6>Tổng số cửa hàng: 35</h6>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-between align-items-center">
              <div class="iq-header-title">
                <h4 class="card-title mb-0">Biểu đồ đường</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <div id="morris-area-chart"></div>
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-between align-items-center">
              <div class="iq-header-title">
                <h4 class="card-title mb-0">Biểu đồ cột</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <div id="morris-bar-chart"></div>
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-between align-items-center">
              <div class="iq-header-title">
                <h4 class="card-title mb-0">Biểu đồ cột</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <div id="morris-donut-chart"></div>
            </div>
          </div>
        </div>
        <div class="col-sm-12">
          <div class="iq-card">
            <div class="iq-card-header d-flex justify-content-center">
              <div class="iq-header-title">
                <h4 class="card-title">Top 10 người dùng mua hàng nhiều nhất</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <div class="table-responsive">
                <table id="user-list-table" class="table table-striped table-bordered mt-4" role="grid"
                       aria-describedby="user-list-page-info">
                  <thead>
                  <tr>
                    <th>STT</th>
                    <th>Tên cửa hàng</th>
                    <th>Mô tả</th>
                    <th>Id người tại cửa hàng</th>
                    <th>Rating</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>1</td>
                    <td>Lê Hải</td>
                    <td>Đăng</td>
                    <td>111111111111</td>
                    <td>annasthesia@gmail.com</td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Anna Sthesia</td>
                    <td>Anna Sthesia</td>
                    <td>(760) 756 7568</td>
                    <td>annasthesia@gmail.com</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>Anna Sthesia</td>
                    <td>Anna Sthesia</td>
                    <td>(760) 756 7568</td>
                    <td>annasthesia@gmail.com</td>
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
