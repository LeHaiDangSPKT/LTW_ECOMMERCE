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
                <h4 class="card-title">QUẢN LÝ TẤT CẢ ĐƠN VỊ VẬN CHUYỂN</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <div class="table-responsive">
                <select class="form-control w-25">
                  <option value=false>Đang hoạt động</option>
                  <option value=true>Tạm ngưng hoạt động</option>
                </select>
                <table id="user-list-table" class="table table-striped table-bordered mt-4" role="grid"
                       aria-describedby="user-list-page-info">
                  <thead>
                  <tr>
                    <th>STT</th>
                    <th>Tên đơn vị vận chuyển</th>
                    <th>Mô tả</th>
                    <th>Giá</th>
                    <th>Hành động</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${deliveryListNotDelete}" var="deliveryListNotDelete" varStatus="STT" >
                    <tr>
                      <td>${STT.index + 1}</td>
                      <td>${deliveryListNotDelete.name}</td>
                      <td>${deliveryListNotDelete.description}</td>
                      <td>${deliveryListNotDelete.price}</td>
                      <td>
                        <div class="d-flex align-items-center list-user-action justify-content-around">
                          <a href="delivery/edit" class="bg-primary p-3"><i class="fa-solid fa-pencil" style="transform: translate(-50%, -50%); color: white"></i></a>
                          <a class="bg-primary p-3"><i class="fa-solid fa-trash" style="transform: translate(-50%, -50%); color: white"></i></a>
                        </div>
                      </td>
                    </tr>
                  </c:forEach>
                  <c:forEach items="${deliveryListDeleted}" var="deliveryListDeleted" varStatus="STT" >
                    <tr>
                      <td>${STT.index + 1}</td>
                      <td>${deliveryListDeleted.name}</td>
                      <td>${deliveryListDeleted.description}</td>
                      <td>${deliveryListDeleted.price}</td>
                      <td>
                        <div class="d-flex align-items-center list-user-action justify-content-around">
                          <a href="delivery/edit" class="bg-primary p-3"><i class="fa-solid fa-pencil" style="transform: translate(-50%, -50%); color: white"></i></a>
                          <a class="bg-primary p-3"><i class="fa-solid fa-trash" style="transform: translate(-50%, -50%); color: white"></i></a>
                          <a class="bg-primary p-3"><i class="fa-solid fa-window-restore" style="transform: translate(-50%, -50%); color: white"></i></a>
                        </div>
                      </td>
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
      <div class="iq-card-header-toolbar d-flex align-items-center flex-row-reverse">
        <a href="delivery/add" class="btn btn-primary">Thêm mới</a>
      </div>
    </div>
  </div>
</div>

