
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
              <label>Tác giả:</label>
              <select class="form-control" id="exampleFormControlSelect2">
                <option selected="" disabled="">Book Author</option>
                <option>Jhone Steben</option>
                <option>John Klok</option>
                <option>Ichae Semos</option>
                <option>Jules Boutin</option>
                <option>Kusti Franti</option>
                <option>David King</option>
                <option>Henry Jurk</option>
                <option>Attilio Marzi</option>
                <option>Argele Intili</option>
                <option>Attilio Marzi</option>
              </select>
            </div>
            <div class="form-group">
              <label>Ảnh:</label>
              <div class="custom-file">
                <input type="file" class="custom-file-input" accept="image/png, image/jpeg">
                <label class="custom-file-label">Choose file</label>
              </div>
            </div>
            <div class="form-group">
              <label>Giá:</label>
              <input type="text" class="form-control">
            </div>
            <div class="form-group col-md-12">
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
