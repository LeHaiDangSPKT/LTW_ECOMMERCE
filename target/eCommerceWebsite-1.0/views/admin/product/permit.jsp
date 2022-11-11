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
        <div class="col-sm-12">
          <div class="iq-card">
            <div class="iq-card-header d-flex justify-content-center">
              <div class="iq-header-title">
                <h4 class="card-title">QUẢN LÝ TẤT CẢ SẢN PHẨM ĐƯỢC PHÉP BÁN</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <div class="table-responsive">
                <table id="user-list-table" class="table table-striped table-bordered mt-4" role="grid"
                       aria-describedby="user-list-page-info">
                  <thead>
                  <tr>
                    <th>STT</th>
                    <th>Tên sản phẩm</th>
                    <th>Mô tả</th>
                    <th>Giá</th>
                    <th>Số lượng đã bán</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${productList}" var="productList" varStatus="STT" >
                    <tr>
                      <td>${STT.index + 1}</td>
                      <td>${productList.name}</td>
                      <td>${productList.description}</td>
                      <td>${productList.price}</td>
                      <td>${productList.sold}</td>
                    </tr>
                  </c:forEach>
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
