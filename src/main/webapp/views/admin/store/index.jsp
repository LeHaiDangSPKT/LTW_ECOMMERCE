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
                <h4>QUẢN LÝ CỬA HÀNG MỚI</h4>
                <h6>Tổng số cửa hàng: ${total}</h6>
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
                <h4 class="card-title">Top 10 cửa hàng bán nhiều nhất</h4>
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
                    <th>Id người chủ cửa hàng</th>
                    <th>Tổng đơn bán</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${storeList}" var="stores" varStatus="STT" >
                    <tr>
                      <td>${STT.index + 1 }</td>
                      <td>${stores.name}</td>
                      <td>${stores.bio}</td>
                      <td>${stores.ownerID}</td>
                      <td>${stores.total}</td>
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
