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
                  <%--                  Hide--%>
                  <input type="hidden" id="id" value="">
                  <input type="hidden" id="state" value="">

                  <c:forEach items="${deliveryListNotDelete}" var="deliveryListNotDelete" varStatus="STT" >
                    <tr>
                      <td>${STT.index + 1}</td>
                      <td>${deliveryListNotDelete.name}</td>
                      <td>${deliveryListNotDelete.description}</td>
                      <td>${deliveryListNotDelete.price}</td>
                      <td>
                        <div class="d-flex align-items-center list-user-action justify-content-around">
                          <a href="delivery/edit?id=${deliveryListNotDelete.id}"  class="bg-primary p-3"><i class="fa-solid fa-pencil" style="transform: translate(-50%, -50%); color: white"></i></a>
                          <a href="" onclick="ClickIcon(event, 'delete-soft' )" data-toggle="modal" data-target="#deleteModal" class="bg-primary p-3"><i id="${deliveryListNotDelete.id}" class="fa-solid fa-trash" style="padding: 10px; transform: translate(-50%, -50%); color: white"></i></a>
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
                          <a href="" onclick="ClickIcon(event, 'delete')" data-toggle="modal" data-target="#deleteModal" class="bg-primary p-3"><i id="${deliveryListDeleted.id}" class="fa-solid fa-trash" style="padding: 10px; transform: translate(-50%, -50%); color: white"></i></a>
                          <a href="" onclick="ClickIcon(event, 'restore')" data-toggle="modal" data-target="#deleteModal"  class="bg-primary p-3"><i id="${deliveryListDeleted.id}" class="fa-solid fa-window-restore" style="transform: translate(-50%, -50%); color: white"></i></a>
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
    document.getElementById('id').value = id;
    document.getElementById('state').value = state;

    if (state == 'delete-soft') {
      document.getElementById('deleteModalLabel').innerText = 'Xoá đơn vị vận chuyển';
      document.getElementById('deleteModalBody').innerText = 'Bạn có thực sự muốn xoá không?'
    } else if (state == 'delete'){
      document.getElementById('deleteModalLabel').innerText = 'Xoá vĩnh viễn đơn vị vận chuyển';
      document.getElementById('deleteModalBody').innerText = 'Bạn có thực sự muốn xoá không?'
    } else {
      document.getElementById('deleteModalLabel').innerText = 'Hoàn tác đơn vị vận chuyển';
      document.getElementById('deleteModalBody').innerText = 'Bạn có thực sự muốn hoàn tác không?'
    }
  }
  function Action() {
    const state = document.getElementById('state').value;
    const id = document.getElementById('id').value;
    if (state == 'delete-soft') {
      window.location.href = 'delivery/delete-soft?id='+id.toString();
    } else if (state == 'delete'){
      window.location.href = 'delivery/delete?id='+id.toString();
    } else {
      window.location.href = 'delivery/restore?id='+id.toString();
    }
  }
</script>
</body>
</html>

