<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/01/2022
  Time: 5:48 PM
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
                                <form>
                                    <div class="form-group row align-items-center">
                                        <div class="col-md-12">
                                            <div class="profile-img-edit">
                                                <img class="profile-pic" src="../template/images/user/11.png"
                                                     alt="profile-pic">
                                                <div class="p-image">
                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                    <input class="file-upload" type="file" accept="image/*"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" row align-items-center">
                                        <div class="form-group col-sm-6">
                                            <label for="name">Tên cửa hàng:</label>
                                            <input type="text" class="form-control" id="name" value="Shop sách cũ">
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <label for="owner">Chủ cửa hàng:</label>
                                            <input type="text" class="form-control" id="owner" value="Trần Minh Mẫn">
                                        </div>
                                        <div class="form-group col-sm-6">
                                            <label>Commission:</label>
                                            <select class="form-control" id="commission">
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
                                        <button type="submit" class="btn btn-primary mr-2">Submit</button>
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
