<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="/common/taglib.jsp"%>
<c:url value="/admin/order" var="urlList"/>
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
                <h4 class="card-title">QUẢN LÝ TẤT CẢ CÁC ĐƠN HÀNG ${state == "delivered" ? "ĐÃ GIAO" : "ĐANG GIAO"}</h4>
              </div>
            </div>
            <div class="iq-card-body">
              <div class="table-responsive">
                <select id="selectCate">
                  <c:forEach items="${storesList}" var="storesList">
                    <option value="${storesList.id}"
                      ${storesList.id == storeId ? "selected" : ""}
                    >
                        ${storesList.name}
                    </option>
                  </c:forEach>
                </select>
                <table id="user-list-table" class="table table-striped table-bordered mt-4" role="grid"
                       aria-describedby="user-list-page-info">
                  <thead>
                  <tr class="text-center">
                    <th>STT</th>
                    <th>Mã người mua hàng</th>
                    <th>Mã đơn vị vận chuyển</th>
                    <th>Địa chỉ khách hàng</th>
                    <th>Số điện thoại</th>
                    <th>Giá thành</th>
                    <th>Chi tiết</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${ordersList}" var="ordersList" varStatus="STT" >
                    <tr class="text-center">
                      <td>${STT.index + 1 + totalItemInPage*(tag-1)}</td>
                      <td>${ordersList.userId}</td>
                      <td>${ordersList.deliveryId}</td>
                      <td>${ordersList.address}</td>
                      <td>${ordersList.phone}</td>
                      <td>${ordersList.amountFromUser}</td>
                      <td><a href="order/details?id=${ordersList.id}" class="text-decoration-underline text-primary">Xem chi tiết</a></td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
              <div class="col-sm-12 col-md-4 mx-auto">
                <div class="dataTables_paginate paging_simple_numbers">
                  <ul class="pagination justify-content-center">
                    <li class="paginate_button page-item ${tag == 1 ? "disabled" : ""}">
                      <a href="${pageContext.request.contextPath}/admin/order?state=${state}&storeId=${storeId}&index=${tag - 1}"
                         class="page-link">Previous
                      </a>
                    </li>
                    <c:forEach begin="1" end="${endP}" var="i">
                      <li class="paginate_button page-item ${i == tag ? "active" : ""}">
                        <a href="${pageContext.request.contextPath}/admin/order?state=${state}&storeId=${storeId}&index=${i}"
                           class="page-link">${i}</a>
                      </li>
                    </c:forEach>
                    <li class="paginate_button page-item ${tag == endP ? "disabled" : ""}">
                      <a href="${pageContext.request.contextPath}/admin/order?state=${state}&storeId=${storeId}&index=${tag + 1}"
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
<script type="text/javascript">
  $('#selectCate').change(function () {
    const storeId = $("#selectCate option:selected").val();
    window.location.href = "${urlList}?state=${state}&storeId=" + storeId;
  });
</script>
</body>
</html>

