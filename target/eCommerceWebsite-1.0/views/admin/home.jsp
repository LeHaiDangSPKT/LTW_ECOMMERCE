<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>HomePage</title>
</head>
<body>
<div id="loading">
  <div id="loading-center">
  </div>
</div>
<!-- loader END -->
<!-- Wrapper Start -->
<div class="wrapper">
  <!-- Sidebar  -->
  <div class="iq-sidebar">
    <div class="iq-sidebar-logo d-flex justify-content-between">
      <a href="index-2.html" class="header-logo">
        <img src="template/web/images/logo.png" class="img-fluid rounded-normal" alt="">
        <div class="logo-title">
          <span class="text-primary text-uppercase">Booksto</span>
        </div>
      </a>
      <div class="iq-menu-bt-sidebar">
        <div class="iq-menu-bt align-self-center">
          <div class="wrapper-menu">
            <div class="main-circle"><i class="las la-bars"></i></div>
          </div>
        </div>
      </div>
    </div>
    <div id="sidebar-scrollbar">
      <nav class="iq-sidebar-menu">
        <ul id="iq-sidebar-toggle" class="iq-menu">
          <li class="active"><a href="index-2.html"><i class="las la-house-damage"></i>Home Page</a></li>
          <li><a href="category.html"><i class="ri-function-line"></i>Category Page</a></li>
          <li><a href="book-page.html"><i class="ri-book-line"></i>Book Page</a></li>
          <li><a href="book-pdf.html"><i class="ri-file-pdf-line"></i>Book PDF</a></li>
          <li><a href="Checkout.html"><i class="ri-checkbox-multiple-blank-line"></i>Checkout</a></li>
          <li><a href="wishlist.html"><i class="ri-heart-line"></i>wishlist</a></li>
        </ul>
      </nav>
      <div id="sidebar-bottom" class="p-3 position-relative">
        <div class="iq-card">
          <div class="iq-card-body">
            <div class="sidebarbottom-content">
              <div class="image"><img src="images/page-img/side-bkg.png" alt=""></div>
              <button type="submit" class="btn w-100 btn-primary mt-4 view-more">Become Membership</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- TOP Nav Bar -->
  <div class="iq-top-navbar">
    <div class="iq-navbar-custom">
      <nav class="navbar navbar-expand-lg navbar-light p-0">
        <div class="iq-menu-bt d-flex align-items-center">
          <div class="wrapper-menu">
            <div class="main-circle"><i class="las la-bars"></i></div>
          </div>
          <div class="iq-navbar-logo d-flex justify-content-between">
            <a href="index-2.html" class="header-logo">
              <img src="images/logo.png" class="img-fluid rounded-normal" alt="">
              <div class="logo-title">
                <span class="text-primary text-uppercase">Booksto</span>
              </div>
            </a>
          </div>
        </div>
        <div class="navbar-breadcrumb">
          <h5 class="mb-0">Shop</h5>
          <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Home Page</li>
            </ul>
          </nav>
        </div>
        <div class="iq-search-bar">
          <form action="#" class="searchbox">
            <input type="text" class="text search-input" placeholder="Search Here...">
            <a class="search-link" href="#"><i class="ri-search-line"></i></a>
          </form>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"  aria-label="Toggle navigation">
          <i class="ri-menu-3-line"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto navbar-list">
            <li class="nav-item nav-icon search-content">
              <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                <i class="ri-search-line"></i>
              </a>
              <form action="#" class="search-box p-0">
                <input type="text" class="text search-input" placeholder="Type here to search...">
                <a class="search-link" href="#"><i class="ri-search-line"></i></a>
              </form>
            </li>
            <li class="nav-item nav-icon">
              <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                <i class="ri-notification-2-line"></i>
                <span class="bg-primary dots"></span>
              </a>
              <div class="iq-sub-dropdown">
                <div class="iq-card shadow-none m-0">
                  <div class="iq-card-body p-0">
                    <div class="bg-primary p-3">
                      <h5 class="mb-0 text-white">All Notifications<small class="badge  badge-light float-right pt-1">4</small></h5>
                    </div>
                    <a href="#" class="iq-sub-card" >
                      <div class="media align-items-center">
                        <div class="">
                          <img class="avatar-40 rounded" src="images/user/01.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">Emma Watson Barry</h6>
                          <small class="float-right font-size-12">Just Now</small>
                          <p class="mb-0">95 MB</p>
                        </div>
                      </div>
                    </a>
                    <a href="#" class="iq-sub-card" >
                      <div class="media align-items-center">
                        <div class="">
                          <img class="avatar-40 rounded" src="images/user/02.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">New customer is join</h6>
                          <small class="float-right font-size-12">5 days ago</small>
                          <p class="mb-0">Cyst Barry</p>
                        </div>
                      </div>
                    </a>
                    <a href="#" class="iq-sub-card" >
                      <div class="media align-items-center">
                        <div class="">
                          <img class="avatar-40 rounded" src="images/user/03.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">Two customer is left</h6>
                          <small class="float-right font-size-12">2 days ago</small>
                          <p class="mb-0">Cyst Barry</p>
                        </div>
                      </div>
                    </a>
                    <a href="#" class="iq-sub-card" >
                      <div class="media align-items-center">
                        <div class="">
                          <img class="avatar-40 rounded" src="images/user/04.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">New Mail from Fenny</h6>
                          <small class="float-right font-size-12">3 days ago</small>
                          <p class="mb-0">Cyst Barry</p>
                        </div>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </li>
            <li class="nav-item nav-icon dropdown">
              <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                <i class="ri-mail-line"></i>
                <span class="bg-primary dots"></span>
              </a>
              <div class="iq-sub-dropdown">
                <div class="iq-card shadow-none m-0">
                  <div class="iq-card-body p-0 ">
                    <div class="bg-primary p-3">
                      <h5 class="mb-0 text-white">All Messages<small class="badge  badge-light float-right pt-1">5</small></h5>
                    </div>
                    <a href="#" class="iq-sub-card">
                      <div class="media align-items-center">
                        <div class="">
                          <img class="avatar-40 rounded" src="images/user/01.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">Barry Emma Watson</h6>
                          <small class="float-left font-size-12">13 Jun</small>
                        </div>
                      </div>
                    </a>
                    <a href="#" class="iq-sub-card">
                      <div class="media align-items-center">
                        <div class="">
                          <img class="avatar-40 rounded" src="images/user/02.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">Lorem Ipsum Watson</h6>
                          <small class="float-left font-size-12">20 Apr</small>
                        </div>
                      </div>
                    </a>
                    <a href="#" class="iq-sub-card">
                      <div class="media align-items-center">
                        <div class="">
                          <img class="avatar-40 rounded" src="images/user/03.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">Why do we use it?</h6>
                          <small class="float-left font-size-12">30 Jun</small>
                        </div>
                      </div>
                    </a>
                    <a href="#" class="iq-sub-card">
                      <div class="media align-items-center">
                        <div class="">
                          <img class="avatar-40 rounded" src="images/user/04.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">Variations Passages</h6>
                          <small class="float-left font-size-12">12 Sep</small>
                        </div>
                      </div>
                    </a>
                    <a href="#" class="iq-sub-card">
                      <div class="media align-items-center">
                        <div class="">
                          <img class="avatar-40 rounded" src="images/user/05.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">Lorem Ipsum generators</h6>
                          <small class="float-left font-size-12">5 Dec</small>
                        </div>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </li>
            <li class="nav-item nav-icon dropdown">
              <a href="#" class="search-toggle iq-waves-effect text-gray rounded">
                <i class="ri-shopping-cart-2-line"></i>
                <span class="badge badge-danger count-cart rounded-circle">4</span>
              </a>
              <div class="iq-sub-dropdown">
                <div class="iq-card shadow-none m-0">
                  <div class="iq-card-body p-0 toggle-cart-info">
                    <div class="bg-primary p-3">
                      <h5 class="mb-0 text-white">All Carts<small class="badge  badge-light float-right pt-1">4</small></h5>
                    </div>
                    <a href="#" class="iq-sub-card">
                      <div class="media align-items-center">
                        <div class="">
                          <img class="rounded" src="images/cart/01.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">Night People book</h6>
                          <p class="mb-0">$32</p>
                        </div>
                        <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                      </div>
                    </a>
                    <a href="#" class="iq-sub-card">
                      <div class="media align-items-center">
                        <div class="">
                          <img class="rounded" src="images/cart/02.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">The Sin Eater Book</h6>
                          <p class="mb-0">$40</p>
                        </div>
                        <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                      </div>
                    </a>
                    <a href="#" class="iq-sub-card">
                      <div class="media align-items-center">
                        <div class="">
                          <img class="rounded" src="images/cart/03.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">the Orange Tree</h6>
                          <p class="mb-0">$30</p>
                        </div>
                        <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                      </div>
                    </a>
                    <a href="#" class="iq-sub-card">
                      <div class="media align-items-center">
                        <div class="">
                          <img class="rounded" src="images/cart/04.jpg" alt="">
                        </div>
                        <div class="media-body ml-3">
                          <h6 class="mb-0 ">Harsh Reality book</h6>
                          <p class="mb-0">$25</p>
                        </div>
                        <div class="float-right font-size-24 text-danger"><i class="ri-close-fill"></i></div>
                      </div>
                    </a>
                    <div class="d-flex align-items-center text-center p-3">
                      <a class="btn btn-primary mr-2 iq-sign-btn" href="#" role="button">View Cart</a>
                      <a class="btn btn-primary iq-sign-btn" href="#" role="button">Shop now</a>
                    </div>
                  </div>
                </div>
              </div>
            </li>
            <li class="line-height pt-3 text-center">
              <button type="submit" class="btn w-75 btn-primary view-more mb-2">Log in</button>
              <button type="submit" class="btn w-75 btn-primary view-more mb-2">Sign in</button>
            </li>
<%--            <li class="line-height pt-3">--%>
<%--              <a href="#" class="search-toggle iq-waves-effect d-flex align-items-center">--%>
<%--                <img src="images/user/1.jpg" class="img-fluid rounded-circle mr-3" alt="user">--%>
<%--                <div class="caption">--%>
<%--                  <h6 class="mb-1 line-height">Barry Tech</h6>--%>
<%--                  <p class="mb-0 text-primary">$20.32</p>--%>
<%--                </div>--%>
<%--              </a>--%>
<%--              <div class="iq-sub-dropdown iq-user-dropdown">--%>
<%--                <div class="iq-card shadow-none m-0">--%>
<%--                  <div class="iq-card-body p-0 ">--%>
<%--                    <div class="bg-primary p-3">--%>
<%--                      <h5 class="mb-0 text-white line-height">Hello Barry Tech</h5>--%>
<%--                      <span class="text-white font-size-12">Available</span>--%>
<%--                    </div>--%>
<%--                    <a href="profile.html" class="iq-sub-card iq-bg-primary-hover">--%>
<%--                      <div class="media align-items-center">--%>
<%--                        <div class="rounded iq-card-icon iq-bg-primary">--%>
<%--                          <i class="ri-file-user-line"></i>--%>
<%--                        </div>--%>
<%--                        <div class="media-body ml-3">--%>
<%--                          <h6 class="mb-0 ">My Profile</h6>--%>
<%--                          <p class="mb-0 font-size-12">View personal profile details.</p>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </a>--%>
<%--                    <a href="profile-edit.html" class="iq-sub-card iq-bg-primary-hover">--%>
<%--                      <div class="media align-items-center">--%>
<%--                        <div class="rounded iq-card-icon iq-bg-primary">--%>
<%--                          <i class="ri-profile-line"></i>--%>
<%--                        </div>--%>
<%--                        <div class="media-body ml-3">--%>
<%--                          <h6 class="mb-0 ">Edit Profile</h6>--%>
<%--                          <p class="mb-0 font-size-12">Modify your personal details.</p>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </a>--%>
<%--                    <a href="account-setting.html" class="iq-sub-card iq-bg-primary-hover">--%>
<%--                      <div class="media align-items-center">--%>
<%--                        <div class="rounded iq-card-icon iq-bg-primary">--%>
<%--                          <i class="ri-account-box-line"></i>--%>
<%--                        </div>--%>
<%--                        <div class="media-body ml-3">--%>
<%--                          <h6 class="mb-0 ">Account settings</h6>--%>
<%--                          <p class="mb-0 font-size-12">Manage your account parameters.</p>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </a>--%>
<%--                    <a href="privacy-setting.html" class="iq-sub-card iq-bg-primary-hover">--%>
<%--                      <div class="media align-items-center">--%>
<%--                        <div class="rounded iq-card-icon iq-bg-primary">--%>
<%--                          <i class="ri-lock-line"></i>--%>
<%--                        </div>--%>
<%--                        <div class="media-body ml-3">--%>
<%--                          <h6 class="mb-0 ">Privacy Settings</h6>--%>
<%--                          <p class="mb-0 font-size-12">Control your privacy parameters.</p>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </a>--%>
<%--                    <div class="d-inline-block w-100 text-center p-3">--%>
<%--                      <a class="bg-primary iq-sign-btn" href="sign-in.html" role="button">Sign out<i class="ri-login-box-line ml-2"></i></a>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </li>--%>
          </ul>
        </div>
      </nav>
    </div>
  </div>
  <!-- TOP Nav Bar END -->
  <!-- Page Content  -->
  <div id="content-page" class="content-page">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <div class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height rounded">
            <div class="newrealease-contens">
              <ul id="newrealease-slider" class="list-inline p-0 m-0 d-flex align-items-center">
                <li class="item">
                  <a href="javascript:void(0);">
                    <img src="images/new_realeases/01.jpg" class="img-fluid w-100 rounded" alt="">
                  </a>
                </li>
                <li class="item">
                  <a href="javascript:void(0);">
                    <img src="images/new_realeases/02.jpg" class="img-fluid w-100 rounded" alt="">
                  </a>
                </li>
                <li class="item">
                  <a href="javascript:void(0);">
                    <img src="images/new_realeases/03.jpg" class="img-fluid w-100 rounded" alt="">
                  </a>
                </li>
                <li class="item">
                  <a href="javascript:void(0);">
                    <img src="images/new_realeases/04.jpg" class="img-fluid w-100 rounded" alt="">
                  </a>
                </li>
                <li class="item">
                  <a href="javascript:void(0);">
                    <img src="images/new_realeases/05.jpg" class="img-fluid w-100 rounded" alt="">
                  </a>
                </li>
                <li class="item">
                  <a href="javascript:void(0);">
                    <img src="images/new_realeases/06.jpg" class="img-fluid w-100 rounded" alt="">
                  </a>
                </li>
                <li class="item">
                  <a href="javascript:void(0);">
                    <img src="images/new_realeases/07.jpg" class="img-fluid w-100 rounded" alt="">
                  </a>
                </li>
                <li class="item">
                  <a href="javascript:void(0);">
                    <img src="images/new_realeases/08.jpg" class="img-fluid w-100 rounded" alt="">
                  </a>
                </li>
                <li class="item">
                  <a href="javascript:void(0);">
                    <img src="images/new_realeases/09.jpg" class="img-fluid w-100 rounded" alt="">
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
              <div class="iq-header-title">
                <h4 class="card-title mb-0">Browse Books</h4>
              </div>
              <div class="iq-card-header-toolbar d-flex align-items-center">
                <a href="category.html" class="btn btn-sm btn-primary view-more">View More</a>
              </div>
            </div>
            <div class="iq-card-body">
              <div class="row">
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/01.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">Reading on the World</h6>
                            <p class="font-size-13 line-height mb-1">Jhone Steben</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <span class="pr-1 old-price">$100</span>
                            <h6><b>$89</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/02.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">The Catcher in the Rye</h6>
                            <p class="font-size-13 line-height mb-1">Fritz Wold</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <h6><b>$99</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/03.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">Little Black Book</h6>
                            <p class="font-size-13 line-height mb-1">John Klok</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <span class="pr-1 old-price">$150</span>
                            <h6><b>$129</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/04.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">Take On The Risk</h6>
                            <p class="font-size-13 line-height mb-1">George Strong</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <span class="pr-1 old-price">$120</span>
                            <h6><b>$100</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/05.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">Absteact On Background</h6>
                            <p class="font-size-13 line-height mb-1">Ichae Semos</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <span class="pr-1 old-price">$105</span>
                            <h6><b>$99</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/06.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">Find The Wave Book</h6>
                            <p class="font-size-13 line-height mb-1">Fidel Martin</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <span class="pr-1 old-price">$110</span>
                            <h6><b>$100</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/07.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">See the More Story</h6>
                            <p class="font-size-13 line-height mb-1">Jules Boutin</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <span class="pr-1 old-price">$89</span>
                            <h6><b>$79</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/08.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">The Wikde Book</h6>
                            <p class="font-size-13 line-height mb-1">Kusti Franti</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <span class="pr-1 old-price">$99</span>
                            <h6><b>$89</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent mb-lg-0">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/09.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">Conversion Erik Routley</h6>
                            <p class="font-size-13 line-height mb-1">Argele Intili</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <span class="pr-1 old-price">$100</span>
                            <h6><b>$79</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent mb-md-0 mb-lg-0">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/10.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">The Leo Dominica</h6>
                            <p class="font-size-13 line-height mb-1">Henry Jurk</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <span class="pr-1 old-price">$120</span>
                            <h6><b>$99</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent mb-sm-0 mb-md-0 mb-lg-0">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/11.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">By The Editbeth Jat</h6>
                            <p class="font-size-13 line-height mb-1">David King</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <h6><b>$149</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3">
                  <div class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent mb-0 mb-sm-0 mb-md-0 mb-lg-0">
                    <div class="iq-card-body p-0">
                      <div class="d-flex align-items-center">
                        <div class="col-6 p-0 position-relative image-overlap-shadow">
                          <a href="#"><img class="img-fluid rounded w-100" src="images/browse-books/12.jpg" alt=""></a>
                          <div class="view-book">
                            <a href="book-page.html" class="btn btn-sm btn-white">View Book</a>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-2">
                            <h6 class="mb-1">The Crucial Decade</h6>
                            <p class="font-size-13 line-height mb-1">Attilio Marzi</p>
                            <div class="d-block line-height">
                                                   <span class="font-size-11 text-warning">
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                      <i class="fa fa-star"></i>
                                                   </span>
                            </div>
                          </div>
                          <div class="price d-flex align-items-center">
                            <span class="pr-1 old-price">$99</span>
                            <h6><b>$89</b></h6>
                          </div>
                          <div class="iq-product-action">
                            <a href="#"><i class="ri-shopping-cart-2-fill text-primary"></i></a>
                            <a href="#" class="ml-2"><i class="ri-heart-fill text-danger"></i></a>
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
        <div class="col-lg-6">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-between mb-0">
              <div class="iq-header-title">
                <h4 class="card-title">Featured Books</h4>
              </div>
              <div class="iq-card-header-toolbar d-flex align-items-center">
                <div class="dropdown">
                                 <span class="dropdown-toggle p-0 text-body" id="dropdownMenuButton2" data-toggle="dropdown">
                                 This Week<i class="ri-arrow-down-s-fill"></i>
                                 </span>
                  <div class="dropdown-menu dropdown-menu-right shadow-none" aria-labelledby="dropdownMenuButton2">
                    <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                    <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                    <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                    <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                    <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="iq-card-body">
              <div class="row align-items-center">
                <div class="col-sm-5 pr-0">
                  <a href="#"><img class="img-fluid rounded w-100" src="images/page-img/featured-book.png" alt=""></a>
                </div>
                <div class="col-sm-7 mt-3 mt-sm-0">
                  <h4 class="mb-2">Casey Christie night book into find...</h4>
                  <p class="mb-2">Author: Gheg origin</p>
                  <div class="mb-2 d-block">
                                    <span class="font-size-12 text-warning">
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                       <i class="fa fa-star"></i>
                                    </span>
                  </div>
                  <span class="text-dark mb-3 d-block">Lorem Ipsum is simply dummy test in find a of the printing and typeset ing industry into end.</span>
                  <button type="submit" class="btn btn-primary learn-more">Learn More</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="iq-card iq-card-block iq-card-stretch iq-card-height">
            <div class="iq-card-header d-flex justify-content-between mb-0">
              <div class="iq-header-title">
                <h4 class="card-title">Featured Writer</h4>
              </div>
              <div class="iq-card-header-toolbar d-flex align-items-center">
                <div class="dropdown">
                                 <span class="dropdown-toggle p-0 text-body" id="dropdownMenuButton3" data-toggle="dropdown">
                                 This Week<i class="ri-arrow-down-s-fill"></i>
                                 </span>
                  <div class="dropdown-menu dropdown-menu-right shadow-none" aria-labelledby="dropdownMenuButton3">
                    <a class="dropdown-item" href="#"><i class="ri-eye-fill mr-2"></i>View</a>
                    <a class="dropdown-item" href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
                    <a class="dropdown-item" href="#"><i class="ri-pencil-fill mr-2"></i>Edit</a>
                    <a class="dropdown-item" href="#"><i class="ri-printer-fill mr-2"></i>Print</a>
                    <a class="dropdown-item" href="#"><i class="ri-file-download-fill mr-2"></i>Download</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="iq-card-body">
              <ul class="list-inline row mb-0 align-items-center iq-scrollable-block">
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/01.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Brandon Guidelines</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/02.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Hugh Millie-Yate</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">432</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/03.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Nathaneal Down</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">5471</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/04.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Thomas R. Toe</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">8764</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/05.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Druid Wensleydale</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">8987</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/06.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Natalya Undgrowth</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/07.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Desmond Eagle</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">4324</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/08.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Lurch Schpellchek</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">012</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/09.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Natalya Undgrowth</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/10.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Natalya Undgrowth</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/11.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Natalya Undgrowth</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                  </div>
                </li>
                <li class="col-sm-6 d-flex mb-3 align-items-center">
                  <div class="icon iq-icon-box mr-3">
                    <a href="#"><img class="img-fluid avatar-60 rounded-circle" src="images/user/01.jpg" alt=""></a>
                  </div>
                  <div class="mt-1">
                    <h6>Natalya Undgrowth</h6>
                    <p class="mb-0 text-primary">Publish Books: <span class="text-body">2831</span></p>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
<!-- Wrapper END -->
<!-- Footer -->
<footer class="iq-footer">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-6">
        <ul class="list-inline mb-0">
          <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
          <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
        </ul>
      </div>
      <div class="col-lg-6 text-right">
        Copyright 2020 <a href="#">Booksto</a> All Rights Reserved.
      </div>
    </div>
  </div>
</footer>

</body>
</html>
