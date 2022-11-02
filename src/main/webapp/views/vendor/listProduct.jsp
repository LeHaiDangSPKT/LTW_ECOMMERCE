<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/01/2022
  Time: 6:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <div class="iq-card">
                <div class="iq-card-header d-flex justify-content-between">
                    <div class="iq-header-title">
                        <h4 class="card-title">Danh sách sản phẩm</h4>
                    </div>
                    <div class="iq-card-header-toolbar d-flex align-items-center">
                        <a href="<c:url value="/vendor/add-product?action=add"/> " class="btn btn-primary">
                            Thêm sản phẩm
                        </a>
                    </div>
                </div>
                <div class="iq-card-body">
                    <div class="table-responsive">
                        <div class="row">
                            <div class="form-group col-sm-6">
                                <div class="form-group">
                                    <label>Chọn cửa hàng:</label>
                                    <select class="form-control" id="">
                                        <option selected="" disabled="">Cửa hàng</option>
                                        <option>General Books</option>
                                        <option>History Books</option>
                                        <option>Horror Story</option>
                                        <option>Arts Books</option>
                                        <option>Film & Photography</option>
                                        <option>Business & Economics</option>
                                        <option>Comics & Mangas</option>
                                        <option>Computers & Internet</option>
                                        <option> Sports</option>
                                        <option> Travel & Tourism</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group col-sm-6">
                                <div class="form-group">
                                    <label>Chọn thể loại:</label>
                                    <select class="form-control" id="exampleFormControlSelect1">
                                        <option selected="" disabled="">Thể loại</option>
                                        <option>General Books</option>
                                        <option>History Books</option>
                                        <option>Horror Story</option>
                                        <option>Arts Books</option>
                                        <option>Film & Photography</option>
                                        <option>Business & Economics</option>
                                        <option>Comics & Mangas</option>
                                        <option>Computers & Internet</option>
                                        <option> Sports</option>
                                        <option> Travel & Tourism</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <table class="data-tables table table-striped table-bordered" style="width:100%">
                            <thead>
                            <tr>
                                <th style="width: 3%;">No</th>
                                <th style="width: 12%;">Ảnh</th>
                                <th style="width: 15%;">Tên sách</th>
                                <th style="width: 15%;">Loại sách</th>
                                <th style="width: 18%;">Mô tả</th>
                                <th style="width: 10%;">Giá</th>
                                <th style="width: 9%;">Số lượng</th>
                                <th style="width: 10%;">Hành động</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td><img class="img-fluid rounded" src="../template/images/products/01.jpg" alt=""></td>
                                <td>Nhà Giả Kim</td>
                                <td>Tiểu thuyết</td>
                                <td>Được viết bởi tác giả: Paulo Coelho</td>
                                <td>$89</td>
                                <td>200</td>
                                <td>
                                    <div class="flex align-items-center list-user-action">
                                        <a class="iq-bg-primary" data-toggle="tooltip"
                                           data-placement="center"
                                           title="" data-original-title="Edit"
                                           href="<c:url value="/vendor/add-product?action=edit&id=1"/> ">
                                            <i class="fa-solid fa-pen-to-square"></i>
                                        </a>
                                        <a class="iq-bg-primary" data-toggle="tooltip" data-placement="center"
                                           title="" data-original-title="Delete"
                                           href="#">
                                            <i class="fa-solid fa-trash"></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
