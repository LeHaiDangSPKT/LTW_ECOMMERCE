<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
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
                <h4 class="card-title">QUẢN LÝ TẤT CẢ LOẠI SẢN PHẨM</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <div class="table-responsive">
                <select class="form-control w-25">
                  <option value=false>Chưa bị xoá</option>
                  <option value=true>Đã bị xoá</option>
                </select>
                <table id="user-list-table" class="table table-striped table-bordered mt-4" role="grid"
                       aria-describedby="user-list-page-info">
                  <thead>
                  <tr>
                    <th>STT</th>
                    <th>Tên loại sản phẩm</th>
                    <th>Hành động</th>
                  </tr>
                  </thead>
                  <tbody>
                  <%--                  Hide--%>
                  <input type="hidden" id="id" value="">
                  <input type="hidden" id="state" value="">
                  <c:forEach items="${categoryListNotDelete}" var="categoryListNotDelete" varStatus="STT" >
                    <tr>
                      <td>${STT.index + 1}</td>
                      <td>${categoryListNotDelete.name}</td>
                      <td>
                        <div class="d-flex align-items-center list-user-action justify-content-around">
                          <a href="category/edit?id=${categoryListNotDelete.id}"  class="bg-primary p-3"><i class="fa-solid fa-pencil" style="transform: translate(-50%, -50%); color: white"></i></a>
                          <a href="" onclick="ClickIcon(event, 'delete-soft' )" data-toggle="modal" data-target="#deleteModal" class="bg-primary p-3"><i id="${categoryListNotDelete.id}" class="fa-solid fa-trash" style="padding: 10px; transform: translate(-50%, -50%); color: white"></i></a>
                        </div>
                      </td>
                    </tr>
                  </c:forEach>
                  <c:forEach items="${categoryListDeleted}" var="categoryListDeleted" varStatus="STT" >
                    <tr>
                      <td>${STT.index + 1}</td>
                      <td>${categoryListDeleted.name}</td>
                      <td>
                        <div class="d-flex align-items-center list-user-action justify-content-around">
                          <a href="" onclick="ClickIcon(event, 'delete')" data-toggle="modal" data-target="#deleteModal" class="bg-primary p-3"><i id="${categoryListDeleted.id}" class="fa-solid fa-trash" style="padding: 10px; transform: translate(-50%, -50%); color: white"></i></a>
                          <a href="" onclick="ClickIcon(event, 'restore')" data-toggle="modal" data-target="#deleteModal"  class="bg-primary p-3"><i id="${categoryListDeleted.id}" class="fa-solid fa-window-restore" style="transform: translate(-50%, -50%); color: white"></i></a>
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
        <a href="category/add" class="btn btn-primary">Thêm mới</a>
      </div>
      <%--      MODAL DELETE--%>
      <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="deleteModalLabel"></h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" id="deleteModalBody">
              Bạn có thực sự muốn xoá không?
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Huỷ</button>
              <button type="button" onclick="Action()" class="btn btn-primary" data-dismiss="modal">Chắc chắn</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  function ClickIcon(e, state) {
    e.preventDefault();
    const id = e.target.id;
    console.log(id)
    document.getElementById('id').value = id;
    document.getElementById('state').value = state;

    if (state == 'delete-soft') {
      document.getElementById('deleteModalLabel').innerText = 'Xoá loại sản phẩm';
      document.getElementById('deleteModalBody').innerText = 'Bạn có thực sự muốn xoá không?'
    } else if (state == 'delete'){
      document.getElementById('deleteModalLabel').innerText = 'Xoá vĩnh viễn loại sản phẩm';
      document.getElementById('deleteModalBody').innerText = 'Bạn có thực sự muốn xoá không?'
    } else {
      document.getElementById('deleteModalLabel').innerText = 'Hoàn tác loại sản phẩm';
      document.getElementById('deleteModalBody').innerText = 'Bạn có thực sự muốn hoàn tác không?'
    }
  }
  function Action() {
    const state = document.getElementById('state').value;
    const id = document.getElementById('id').value;
    if (state == 'delete-soft') {
      window.location.href = 'category/delete-soft?id='+id.toString();
    } else if (state == 'delete'){
      window.location.href = 'category/delete?id='+id.toString();
    } else {
      window.location.href = 'category/restore?id='+id.toString();
    }
  }
</script>
</body>
</html>

