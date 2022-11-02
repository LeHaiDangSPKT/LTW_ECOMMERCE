<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Store</title>
</head>
<body>
<div class="container-fluid">
    <div id="carouselExampleSlidesOnly" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item">
                <img src="../template/images/small/img-1.jpg">
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3">
            <div class="iq-card">
                <div class="iq-card-header d-flex justify-content-between">
                    <div class="iq-header-title">
                        <h4 class="card-title">Thêm cửa hàng</h4>
                    </div>
                </div>
                <div class="iq-card-body">
                    <form>
                        <div class="form-group">
                            <div class="add-img-user profile-img-edit">
                                <img class="profile-pic img-fluid" src="../template/images/user/11.png"
                                     alt="profile-pic">
                                <div class="p-image">
                                    <a href="#" class="upload-button btn iq-bg-primary">File Upload</a>
                                    <input class="file-upload" type="file" accept="image/*">
                                </div>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-9">
            <div class="iq-card">
                <div class="iq-card-header d-flex justify-content-between">
                    <div class="iq-header-title">
                        <h4 class="card-title">Thông tin cửa hàng</h4>
                    </div>
                </div>
                <div class="iq-card-body">
                    <div class="new-user-info">
                        <form>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="name">Tên cửa hàng:</label>
                                    <input type="text" class="form-control" id="name" placeholder="Tên cửa hàng">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="ownerId">Owner Id:</label>
                                    <input type="text" class="form-control" id="ownerId" placeholder="Owner Id">
                                </div>
                                <div class="form-group col-sm-6">
                                    <label>Commission:</label>
                                    <select class="form-control" id="exampleFormControlSelect2">
                                        <option>12-18</option>
                                        <option>19-32</option>
                                        <option selected="">33-45</option>
                                        <option>46-62</option>
                                        <option>63 &gt;</option>
                                    </select>
                                </div>
                                <div class="form-group col-sm-12">
                                    <label>Mô tả:</label>
                                    <textarea class="form-control" name="bio" rows="5"
                                              style="line-height:22px;">
                                        </textarea>
                                </div>

                            </div>
                            <button type="submit" class="btn btn-primary mr-2">Submit</button>
                            <button type="reset" class="btn iq-bg-danger">Cancel</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
