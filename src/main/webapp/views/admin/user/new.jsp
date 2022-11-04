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
        <h4>Quản lý người dùng mới</h4>
        <h6>Tổng số người dùng: 35</h6>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-between align-items-center">
              <div class="iq-header-title">
                <h4 class="card-title mb-0">Biểu đồ đường</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <div id="iq-sale-chart"></div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-between align-items-center">
              <div class="iq-header-title">
                <h4 class="card-title mb-0">Biểu đồ cột</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <ul class="list-inline p-0 mb-0">
                <li>
                  <div class="iq-details mb-2">
                    <span class="title">Income</span>
                    <div class="percentage float-right text-primary">95 <span>%</span></div>
                    <div class="iq-progress-bar-linear d-inline-block w-100">
                      <div class="iq-progress-bar iq-bg-primary">
                        <span class="bg-primary" data-percent="90"></span>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="iq-details mb-2">
                    <span class="title">Profit</span>
                    <div class="percentage float-right text-warning">72 <span>%</span></div>
                    <div class="iq-progress-bar-linear d-inline-block w-100">
                      <div class="iq-progress-bar iq-bg-warning">
                        <span class="bg-warning" data-percent="75"></span>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="iq-details mb-2">
                    <span class="title">Expenses</span>
                    <div class="percentage float-right text-info">75 <span>%</span></div>
                    <div class="iq-progress-bar-linear d-inline-block w-100">
                      <div class="iq-progress-bar iq-bg-info">
                        <span class="bg-info" data-percent="65"></span>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-body">
              <h4 class="text-uppercase text-black mb-0">Biểu đồ tròn</h4>
              <div class="d-flex justify-content-between align-items-center">
                <div class="font-size-80 text-black">12</div>
                <div class="text-left">
                  <p class="m-0 text-uppercase font-size-12">1 Hours Ago</p>
                  <div class="mb-1 text-black">1500<span class="text-danger"><i
                          class="ri-arrow-down-s-fill"></i>3.25%</span></div>
                  <p class="m-0 text-uppercase font-size-12">1 Day Ago</p>
                  <div class="mb-1 text-black">1890<span class="text-success"><i
                          class="ri-arrow-down-s-fill"></i>1.00%</span></div>
                  <p class="m-0 text-uppercase font-size-12">1 Week Ago</p>
                  <div class="text-black">1260<span class="text-danger"><i
                          class="ri-arrow-down-s-fill"></i>9.87%</span></div>
                </div>
              </div>
              <div id="wave-chart-7"></div>
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
                    <th>Họ và tên đệm</th>
                    <th>Tên</th>
                    <th>CMND/CCCD</th>
                    <th>Email</th>
                    <th>Phone</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>Lê Hải</td>
                    <td>Đăng</td>
                    <td>111111111111</td>
                    <td>annasthesia@gmail.com</td>
                    <td>0868366694</td>
                  </tr>
                  <tr>
                    <td>Anna Sthesia</td>
                    <td>Anna Sthesia</td>
                    <td>(760) 756 7568</td>
                    <td>annasthesia@gmail.com</td>
                    <td>USA</td>
                  </tr>
                  <tr>
                    <td>Anna Sthesia</td>
                    <td>Anna Sthesia</td>
                    <td>(760) 756 7568</td>
                    <td>annasthesia@gmail.com</td>
                    <td>USA</td>
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
