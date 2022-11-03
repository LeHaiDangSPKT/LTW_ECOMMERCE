<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
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
                        <c:if test="${action == 'add'}">
                            <h4 class="card-title">Thêm sản phẩm</h4>
                        </c:if>
                        <c:if test="${action == 'edit'}">
                            <h4 class="card-title">Chỉnh sửa sản phẩm</h4>
                        </c:if>
                    </div>
                </div>
                <div class="iq-card-body">
                    <form action="https://templates.iqonic.design/booksto/html/admin-books.html">
                        <div class="form-group">
                            <label>Tên sách:</label>
                            <input type="text" class="form-control">
                        </div>
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
                        <div class="form-group">
                            <label>Ảnh thứ 1:</label>
                            <input type="file" name="file1">
                            <br>
                            <label>Ảnh thứ 2:</label>
                            <input type="file" name="file1">
                            <br>
                            <label>Ảnh thứ 3:</label>
                            <input type="file" name="file1">

                        </div>
                        <div class="form-group">
                            <label>Giá:</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="quantity">Số lượng:</label>
                            <button type="button" class="fa fa-minus qty-btn" id="btn-minus"></button>
                            <input type="text" id="quantity" value="0">
                            <button type="button" class="fa fa-plus qty-btn" id="btn-plus"></button>
                        </div>
                        <div class="form-group">
                            <label>Mô tả:</label>
                            <textarea class="form-control" rows="4"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
