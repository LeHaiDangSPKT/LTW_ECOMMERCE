<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp"%>
<c:url value="/admin/transaction/buy" var="urlList"/>
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
<%--<div class="wrapper">--%>
<%--  <div id="content-page" class="content-page">--%>
<%--    <div class="container-fluid">--%>
<%--      <div class="row">--%>
<%--        <div class="col-sm-12">--%>
<%--          <div class="iq-card">--%>
<%--            <div class="iq-card-header d-flex justify-content-center">--%>
<%--              <div class="iq-header-title">--%>
<%--                <h4 class="card-title">QUẢN LÝ TẤT CẢ CÁC GIAO DỊCH</h4>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="iq-card-body">--%>
<%--              <div class="table-responsive">--%>
<%--                <select id="selectCate">--%>
<%--                  <c:forEach items="${userList}" var="userList">--%>
<%--                    <option value="${userList.id}"--%>
<%--                      ${userList.id == userId ? "selected" : ""}--%>
<%--                    >--%>
<%--                        ${userList.name}--%>
<%--                    </option>--%>
<%--                  </c:forEach>--%>
<%--                </select>--%>
<%--                <table id="user-list-table" class="table table-striped table-bordered mt-4" role="grid"--%>
<%--                       aria-describedby="user-list-page-info">--%>
<%--                  <thead>--%>
<%--                  <tr class="text-center">--%>
<%--                    <th>STT</th>--%>
<%--                    <th>Mã khách hàng</th>--%>
<%--                    <th>Số tiền khách hàng trả</th>--%>
<%--                    <th>Số tiền cửa hàng nhận được</th>--%>
<%--                    <th>Thời gian</th>--%>
<%--                  </tr>--%>
<%--                  </thead>--%>
<%--                  <tbody>--%>
<%--                  <c:forEach items="${ordersList}" var="ordersList" varStatus="STT" >--%>
<%--                    <tr class="text-center">--%>
<%--                      <td>${STT.index + 1 + totalItemInPage*(tag-1)}</td>--%>
<%--                      <td>${ordersList.userId}</td>--%>
<%--                      <td>${ordersList.amountFromUser}</td>--%>
<%--                      <td>${ordersList.amountToStore}</td>--%>
<%--                      <td>${ordersList.updatedAt.toString().substring(0,10)}</td>--%>
<%--                    </tr>--%>
<%--                  </c:forEach>--%>
<%--                  </tbody>--%>
<%--                </table>--%>
<%--              </div>--%>
<%--              <div class="col-sm-12 col-md-4 mx-auto">--%>
<%--                <div class="dataTables_paginate paging_simple_numbers">--%>
<%--                  <ul class="pagination justify-content-center">--%>
<%--                    <li class="paginate_button page-item ${tag == 1 ? "disabled" : ""}">--%>
<%--                      <a href="${pageContext.request.contextPath}/admin/transaction?index=${tag - 1}"--%>
<%--                         class="page-link">Previous--%>
<%--                      </a>--%>
<%--                    </li>--%>
<%--                    <c:forEach begin="1" end="${endP}" var="i">--%>
<%--                      <li class="paginate_button page-item ${i == tag ? "active" : ""}">--%>
<%--                        <a href="${pageContext.request.contextPath}/admin/transaction?&index=${i}"--%>
<%--                           class="page-link">${i}</a>--%>
<%--                      </li>--%>
<%--                    </c:forEach>--%>
<%--                    <li class="paginate_button page-item ${tag == endP ? "disabled" : ""}">--%>
<%--                      <a href="${pageContext.request.contextPath}/admin/transaction?index=${tag + 1}"--%>
<%--                         class="page-link">Next</a>--%>
<%--                    </li>--%>
<%--                  </ul>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<script type="text/javascript">
  $('#selectCate').change(function () {
    const userId = $("#selectCate option:selected").val();
    window.location.href = "${urlList}?userId=" + userId;
  });
</script>
</body>
</html>