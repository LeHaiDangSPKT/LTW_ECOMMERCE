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
                    <a id="home" aria-expanded="false" href="<c:url value="/vendor/home" />">
                        <i class="fa-solid fa-book-open"></i>
                        Trang chủ
                    </a>
                </li>
                <li>
                    <a id="store" aria-expanded="false" href="<c:url value="/vendor/store" />">
                        <i class="fa-solid fa-store"></i>
                        Thông tin cửa hàng
                    </a>
                </li>
                <li>
                    <a id="product" aria-expanded="false" href="<c:url value="/vendor/product/category?categoryId=0"/> ">
                        <i class="fa-solid fa-table-list"></i>
                        Quản lý sản phẩm
                    </a>
                </li>
                <li>
                    <a id="order" aria-expanded="false" href="<c:url value="/vendor/order/manager?status=all"/>">
                        <i class="fa-solid fa-truck-fast"></i>
                        Quản lý đơn hàng
                    </a>
                </li>
                <li>
                    <a id="statistic" aria-expanded="false" href="<c:url value="/vendor/statistic"/> ">
                        <i class="fa-solid fa-chart-simple"></i>
                        Thống kê
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>
<script>
    function changeActive() {
        const url = window.location.pathname;
        if (url.includes("store")) {
            document.getElementById("store").setAttribute("aria-expanded", "true");
        } else if (url.includes("product")) {
            document.getElementById("product").setAttribute("aria-expanded", "true");
        } else if (url.includes("order")) {
            document.getElementById("order").setAttribute("aria-expanded", "true");
        } else if (url.includes("home")) {
            document.getElementById("home").setAttribute("aria-expanded", "true");
        } else if (url.includes("statistic")) {
            document.getElementById("statistic").setAttribute("aria-expanded", "true");
        }
    }
    window.onload = function () {
        changeActive();
    }
</script>