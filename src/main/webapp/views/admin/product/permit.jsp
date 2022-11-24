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
                  <h6>Tổng sản phẩm được phép bán: ${productList.size() + totalItemInPage*(tag-1)} / ${countP}</h6>
                <table id="user-list-table" class="table table-striped table-bordered mt-4" role="grid"
                       aria-describedby="user-list-page-info">
                  <thead>
                  <tr class="text-center">
                    <th>STT</th>
                    <th>Tên sản phẩm</th>
                    <th>Mô tả</th>
                    <th>Giá</th>
                    <th>Số lượng đã bán</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${productList}" var="productList" varStatus="STT" >
                    <tr class="text-center">
                      <td>${STT.index + 1 + totalItemInPage*(tag-1)}</td>
                      <td>${productList.name}</td>
                      <td>${productList.description}</td>
                      <td>${productList.price}</td>
                      <td>${productList.sold}</td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
                <div class="col-sm-12 col-md-4 mx-auto">
                    <div class="dataTables_paginate paging_simple_numbers">
                        <ul class="pagination justify-content-center">
                            <li class="paginate_button page-item ${tag == 1 ? "disabled" : ""}">
                                <a href="${pageContext.request.contextPath}/admin/product/permit?index=${tag - 1}"
                                   class="page-link">Previous
                                </a>
                            </li>
                            <c:forEach begin="1" end="${endP}" var="i">
                                <li class="paginate_button page-item ${i == tag ? "active" : ""}">
                                    <a href="${pageContext.request.contextPath}/admin/product/permit?&index=${i}"
                                       class="page-link">${i}</a>
                                </li>
                            </c:forEach>
                            <li class="paginate_button page-item ${tag == endP ? "disabled" : ""}">
                                <a href="${pageContext.request.contextPath}/admin/product/permit?index=${tag + 1}"
                                   class="page-link">Next</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
