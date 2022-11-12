
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="iq-edit-list-data">
                <div class="tab-content">
                    <div class="tab-pane fade active show" id="personal-information" role="tabpanel">
                        <div class="iq-card">
                            <div class="iq-card-header d-flex justify-content-between">
                                <div class="iq-header-title">
                                    <h4 class="card-title">Thông tin cửa hàng</h4>
                                </div>
                            </div>
                            <div class="iq-card-body">
                                <form action="<c:url value="/vendor/create-store"/>" method="post" enctype="multipart/form-data">
                                    <div class="form-group row align-items-center">
                                        <div class="col-md-12">
                                            <div class="profile-img-edit">
                                                <img class="profile-pic" src="../template/images/user/11.png"
                                                     alt="profile-pic">
                                                <div class="p-image text-center">
                                                    <a href="#" class="upload-button btn iq-bg-primary">
                                                        <i class="fa-solid fa-pen-to-square"></i>
                                                    </a>
                                                    <input class="file-upload" type="file" name="avatar"
                                                           accept="image/*"/>
                                                </div>
                                            </div>
                                            <br>
                                            <br>
                                            <label>Thêm ảnh:</label>
                                            <br>
                                            <input type="file" name="image1">

                                            <input type="file" name="image2">

                                            <input type="file" name="image3">
                                        </div>
                                    </div>
                                    <div class=" row align-items-center">
                                        <c:if test="${action == 'add'}">
                                            <input type="hidden" class="form-control" name="id" value="${count + 1}">
                                        </c:if>
                                        <div class="form-group col-sm-6">
                                            <label for="name">Tên cửa hàng:</label>
                                            <input type="text" class="form-control" id="name" name="name" value="">
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <label for="owner">Chủ cửa hàng:</label>
                                            <input type="text" class="form-control" name="ownerId" id="owner" value="">
                                        </div>
                                        <div class="form-group col-sm-12">
                                            <label>Mô tả:</label>
                                            <textarea class="form-control" name="bio" rows="5"
                                                      style="line-height:22px;">
                                        </textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary ml-3 mr-2">Submit</button>
                                        <button type="reset" class="btn iq-bg-danger">Cancel</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</body>
</html>
