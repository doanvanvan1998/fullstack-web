<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>COOLMATE</title>
    <link rel="stylesheet" href="./dist/css/style.css" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
</head>

<body>
<div class="container">
    <header>
        <div class="topbar">
            <ul class="left-topbar">
                <li><a href="#">về coolmate</a></li>
                <li><a href="#">84rising*</a></li>
                <li><a href="#">coolxprint</a></li>
            </ul>
            <ul class="right-topbar">
                <li><a href="#">CoolClub <i class="fa-solid fa-star"></i></a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Trung tâm CSKH</a></li>
                <li><a href="#">Đăng nhập</a></li>
            </ul>
        </div>
        <div class="header-menu">
            <div class="logo">
                <a href="#"><img src="https://www.coolmate.me/images/logo-coolmate-new-v2.png" alt="COOLMATE_LOGO" /></a>
            </div>
            <div class="header-menu-nav-active">
                <div class="menu-item"><a href="#">nam</a></div>
                <div class="menu-item"><a href="#">nữ</a></div>
                <div class="menu-item"><a href="#">thể thao</a></div>
                <div class="menu-item"><a href="#">care&share</a></div>
            </div>
            <div class="header-actions">
                <div class="header-actions-search">
                    <input type="text" placeholder="Tìm kiếm sản phẩm..." />
                    <i class="fa-solid fa-search search-btn"></i>
                </div>
                <div class="header-actions-account">
                    <a href="#" title="Tài khoản"><i class="fa-solid fa-user"></i></a>
                </div>
                <div class="header-actions-cart">
                    <a href="#" title="Giỏ hàng"><i class="fa-solid fa-bag-shopping"></i><span class="cart-count">0</span></a>
                </div>
            </div>
        </div>
    </header>

    <div class="topbar-promotion">
        <div class="topbar-promotion-content">
            <a href="#">Tặng 50k CoolCash + Voucher 15% cho thành viên CoolClub mới! <span>Tham gia</span><i
                    class="fa-solid fa-arrow-right"></i></a>
        </div>
    </div>
    <main>
        <div class="left-main">
            <div class="pannel suitable-type">
                <div class="title" onclick="toggleList(this)">
                    <h3>Phù hợp với</h3><i class="fa-solid fa-chevron-down"></i>
                </div>
                <ul class="pannel-content suitable-list search-condition">
                    <li><input type="radio" id="home" name="suitable" /><label for="home">Mặc ở nhà</label></li>
                    <li><input type="radio" id="daily" name="suitable" /><label for="daily">Mặc hằng ngày</label></li>
                    <li><input type="radio" id="sport" name="suitable" /><label for="sport">Thể thao</label></li>
                </ul>
            </div>
            <div class="pannel size-type">
                <div class="title" onclick="toggleList(this)">
                    <h3>Kích cỡ</h3><i class="fa-solid fa-chevron-down"></i>
                </div>
                <ul class="pannel-content size-list search-condition">
                    <c:forEach var="size" items="${list_size}">


                    <li><input type="checkbox" id="size-s" name="size" value="${size.getId()}" /><label for="size-s">${size.getName()}</label></li>
<%--                    <li><input type="checkbox" id="size-m" name="size" /><label for="size-m">M</label></li>--%>
<%--                    <li><input type="checkbox" id="size-l" name="size" /><label for="size-l">L</label></li>--%>
<%--                    <li><input type="checkbox" id="size-xl" name="size" /><label for="size-xl">XL</label></li>--%>
<%--                    <li><input type="checkbox" id="size-2xl" name="size" /><label for="size-2xl">2XL</label></li>--%>
<%--                    <li><input type="checkbox" id="size-3xl" name="size" /><label for="size-3xl">3XL</label></li>--%>
                    </c:forEach>
                </ul>
            </div>
            <div class="pannel color-type">
                <div class="title" onclick="toggleList(this)">
                    <h3>Màu sắc</h3><i class="fa-solid fa-chevron-down"></i>
                </div>
                <ul class="pannel-content color-list search-condition">
                    <li><input type="radio" id="scheme" name="color" /><label for="scheme"
                                                                              style="--color: linear-gradient(226.4deg, rgba(255, 26, 1, 1) 28.9%, rgba(254, 155, 1, 1) 33%, rgba(255, 241, 0, 1) 48.6%, rgba(34, 218, 1, 1) 65.3%, rgba(0, 141, 254, 1) 80.6%, rgba(113, 63, 254, 1) 100.1%)">Phối
                        màu</label></li>
                    <li><input type="radio" id="black" name="color" /><label for="black" style="--color: #000000;">Đen</label>
                    </li>
                    <li><input type="radio" id="gray" name="color" /><label for="gray" style="--color: #808080;">Xám</label>
                    </li>
                    <li><input type="radio" id="white" name="color" /><label for="white" style="--color: #ffffff;">Trắng</label>
                    </li>
                    <li><input type="radio" id="beige" name="color" /><label for="beige" style="--color: #F0E2CF;">Be</label>
                    </li>
                    <li><input type="radio" id="blue" name="color" /><label for="blue" style="--color: #0000FF;">Xanh
                        lam</label></li>
                    <li><input type="radio" id="green" name="color" /><label for="green" style="--color: #2E8B57;">Xanh
                        lá</label></li>
                    <li><input type="radio" id="red" name="color" /><label for="red" style="--color: #ff0000;">Đỏ</label></li>
                    <li><input type="radio" id="orange" name="color" /><label for="orange" style="--color: #F0882B;">Cam</label>
                    </li>
                    <li><input type="radio" id="yellow" name="color" /><label for="yellow"
                                                                              style="--color: #FCFC13;">Vàng</label></li>
                    <li><input type="radio" id="purple" name="color" /><label for="purple" style="--color: #B299D3;">Tím</label>
                    </li>
                    <li><input type="radio" id="brown" name="color" /><label for="brown" style="--color: #A0522D;">Nâu</label>
                    </li>
                    <li><input type="radio" id="dark-blue" name="color" /><label for="dark-blue" style="--color: #1E3A5F;">Xanh
                        đậm</label></li>
                    <li><input type="radio" id="black-gray" name="color" /><label for="black-gray" style="--color: #4A4A4A;">Đen
                        xám</label></li>
                </ul>
            </div>
            <div class="pannel material-type">
                <div class="title" onclick="toggleList(this)">
                    <h3>Chất liệu</h3><i class="fa-solid fa-chevron-down"></i>
                </div>
                <ul class="pannel-content material-list search-condition">
                    <li><input type="checkbox" id="cotton" name="material" /><label for="cotton">Cotton</label></li>
                    <li><input type="checkbox" id="polyester" name="material" /><label for="polyester">Polyester</label></li>
                </ul>
            </div>
        </div>
        <div class="right-main">
            <div class="empty"></div>
            <div class="product-grid">

                <c:forEach var="product" items="${list_product}">
                <div class="product-item">
                    <div class="rating">5<i class="fa-solid fa-star"></i><span class="rating-count">(2)</span></div>
                    <div class="product-image">
                        <img class="main-img"
                             src="https://media3.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85/uploads/November2024/24CMAW.TT015_-_Do_1.jpg"
                             alt="main-img" />
                        <img class="sub-img"
                             src="https://media3.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85/uploads/October2024/24CMAW.TT015_-_Do_2.JPG"
                             alt="sub-img" />
                        <img style="display: none;" class="bonus-img"
                             src="https://media3.coolmate.me/cdn-cgi/image/width=713,height=1050,quality=85/uploads/March2025/Footer_(14).jpg"
                             alt="bonus-img">
                        <div class="size-in-stock">
                            <span class="size-title">Thêm nhanh vào giỏ hàng +</span>
                            <ul class="size-btns">
                                <c:forEach var="item" items="${product.getList_size()}">
                                <li class="sz-item">${item}</li>
<%--                                <li class="sz-item">m</li>--%>
<%--                                <li class="sz-item">l</li>--%>
<%--                                <li class="sz-item">xl</li>--%>
<%--                                <li class="sz-item">2xl</li>--%>
<%--                                <li class="sz-item">3xl</li>--%>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="product-info">
                        <ul class="color-in-stock">
                            <li>
                                <input type="radio" id="pr-1-scheme" name="pr-1-color" />
                                <label for="pr-1-scheme"
                                       style="--color: linear-gradient(226.4deg, rgba(255, 26, 1, 1) 28.9%, rgba(254, 155, 1, 1) 33%, rgba(255, 241, 0, 1) 48.6%, rgba(34, 218, 1, 1) 65.3%, rgba(0, 141, 254, 1) 80.6%, rgba(113, 63, 254, 1) 100.1%)">
                                </label>
                            </li>
                            <li>
                                <input type="radio" id="pr-1-black" name="pr-1-color" />
                                <label for="pr-1-black" style="--color: #000000;"></label>
                            </li>
                            <li>
                                <input type="radio" id="pr-1-gray" name="pr-1-color" />
                                <label for="pr-1-gray" style="--color: #808080;"></label>
                            </li>
                            <li>
                                <input type="radio" id="pr-1-white" name="pr-1-color" />
                                <label for="pr-1-white" style="--color: #ffffff;"></label>
                            </li>
                        </ul>
                        <p class="product-name">Áo Singlet Chạy Bộ Graphic Dot</p>
                        <div class="product-price-info">
                            <span class="apply-price">143.000<span>đ</span></span>
                            <span class="discount">
                  <p>-</p>
                  <p>20</p>
                  <p>%</p>
                </span>
                            <span class="raw-price">179.000<span>đ</span></span>
                        </div>
                    </div>
                </div>
                </c:forEach>
<%--                <div class="product-item">--%>
<%--                    <div class="rating">4.8<i class="fa-solid fa-star"></i><span class="rating-count">(10)</span></div>--%>
<%--                    <div class="product-image">--%>
<%--                        <img class="main-img"--%>
<%--                             src="https://media3.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85/uploads/July2024/24CMAW.TT011.29_85.jpg"--%>
<%--                             alt="main-img" />--%>
<%--                        <img class="sub-img"--%>
<%--                             src="https://media3.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85/uploads/July2024/24CMAW.TT011.30_87.jpg"--%>
<%--                             alt="sub-img" />--%>
<%--                        <img class="bonus-img"--%>
<%--                             src="https://media3.coolmate.me/cdn-cgi/image/width=713,height=1050,quality=85/uploads/March2025/Footer_(14).jpg"--%>
<%--                             alt="bonus-img">--%>
<%--                        <div class="size-in-stock">--%>
<%--                            <span class="size-title">Thêm nhanh vào giỏ hàng +</span>--%>
<%--                            <ul class="size-btns">--%>
<%--                                <li class="sz-item">s</li>--%>
<%--                                <li class="sz-item">m</li>--%>
<%--                                <li class="sz-item">l</li>--%>
<%--                                <li class="sz-item">xl</li>--%>
<%--                                <li class="sz-item">2xl</li>--%>
<%--                                <li class="sz-item">3xl</li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="product-info">--%>
<%--                        <ul class="color-in-stock">--%>
<%--                            <li>--%>
<%--                                <input type="radio" id="pr-2-scheme" name="pr-2-color" />--%>
<%--                                <label for="pr-2-scheme"--%>
<%--                                       style="--color: linear-gradient(226.4deg, rgba(255, 26, 1, 1) 28.9%, rgba(254, 155, 1, 1) 33%, rgba(255, 241, 0, 1) 48.6%, rgba(34, 218, 1, 1) 65.3%, rgba(0, 141, 254, 1) 80.6%, rgba(113, 63, 254, 1) 100.1%)">--%>
<%--                                </label>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <input type="radio" id="pr-2-black" name="pr-2-color" />--%>
<%--                                <label for="pr-2-black" style="--color: #000000;"></label>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <input type="radio" id="pr-2-gray" name="pr-2-color" />--%>
<%--                                <label for="pr-2-gray" style="--color: #808080;"></label>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <input type="radio" id="pr-2-white" name="pr-2-color" />--%>
<%--                                <label for="pr-2-white" style="--color: #ffffff;"></label>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                        <p class="product-name">Áo Tanktop thể thao Melange</p>--%>
<%--                        <div class="product-price-info">--%>
<%--                            <span class="apply-price">143.000<span>đ</span></span>--%>
<%--                            <span class="discount">--%>
<%--                  <p>-</p>--%>
<%--                  <p>20</p>--%>
<%--                  <p>%</p>--%>
<%--                </span>--%>
<%--                            <span class="raw-price">179.000<span>đ</span></span>--%>
<%--                        </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
    </main>
    <footer></footer>
</div>
<script src="./dist/js/main.js"></script>
</body>

</html>