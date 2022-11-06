<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="iq-sidebar">
    <div class="iq-sidebar-logo d-flex justify-content-between">
        <a href="#" class="header-logo">
            <img src="../template/images/logo.png" class="img-fluid rounded-normal" alt="">
            <div class="logo-title">
                <span class="text-primary text-uppercase">MDK Shop</span>
            </div>
        </a>
    </div>
    <div id="sidebar-scrollbar">
        <nav class="iq-sidebar-menu">
            <ul id="iq-sidebar-toggle" class="iq-menu">
                <li>
                    <a href="<c:url value="/vendor/home" />">
                        <i class="fa-solid fa-book-open"></i>
                        Cửa hàng
                    </a>
                </li>
                <li>
                    <a href="<c:url value="/vendor/create-store" />">
                        <i class="fa-solid fa-circle-plus"></i>
                        Tạo cửa hàng
                    </a>
                </li>
                <li>
                    <a href="<c:url value="/vendor/store" />">
                        <i class="fa-solid fa-store"></i>
                        Quản lý cửa hàng
                    </a>
                </li>
                <li>
                    <a href="<c:url value="/vendor/list-product"/> ">
                        <i class="fa-solid fa-table-list"></i>
                        Quản lý sản phẩm
                    </a>
                </li>
                <li>
                    <a href="<c:url value="/vendor/manager-order"/> ">
                        <i class="fa-solid fa-truck-fast"></i>
                        Quản lý đơn hàng
                    </a>
                </li>
                <li>
                    <a href="<c:url value="/vendor/statistic"/> ">
                        <i class="fa-solid fa-chart-simple"></i>
                        Thống kê
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>