<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp"%>

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
        <div class="col-md-12">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-center align-items-center text-center">
              <div class="iq-header-title">
                <h4>QUẢN LÝ NGƯỜI DÙNG MỚI</h4>
                <h6>Tổng số người dùng: ${countP}</h6>
              </div>
            </div>
          </div>
        </div>

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
                  <tr class="text-center">
                    <th>STT</th>
                    <th>Họ và tên đệm</th>
                    <th>Tên</th>
                    <th>CMND/CCCD</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Tổng đơn hàng</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${userList}" var="users" varStatus="STT" >
                    <tr class="text-center">
                      <td>${STT.index + 1 }</td>
                      <td>${users.lastname }</td>
                      <td>${users.firstname }</td>
                      <td>${users.id_card }</td>
                      <td>${users.email }</td>
                      <td>${users.phone }</td>
                      <td>${users.totalOrders }</td>
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
