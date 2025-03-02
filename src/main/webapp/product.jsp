<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2/5/2025
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
    <style>
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<body>
<h1>Trang quản lý sản phẩm</h1>
<div style="display: flex">
    <div style="width: 50%">
        <a href="add-product.jsp">Thêm mới</a>

<%--        <div class="w3-container">--%>
<%--            <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">Open Modal</button>--%>

<%--            <div id="id01" class="w3-modal">--%>
<%--                <form>--%>
<%--                <div class="w3-modal-content">--%>
<%--                    <header class="w3-container w3-teal">--%>
<%--             <span onclick="document.getElementById('id01').style.display='none'"--%>
<%--              class="w3-button w3-display-topright">&times;</span>--%>
<%--                        <h2>Modal Header</h2>--%>
<%--                    </header>--%>
<%--                    <div class="w3-container">--%>
<%--                        <p>Some text..</p>--%>
<%--                        <p>Some text..</p>--%>
<%--                    </div>--%>
<%--                    <footer class="w3-container w3-teal">--%>
<%--                        <p>Modal Footer</p>--%>
<%--                    </footer>--%>
<%--                </div>--%>
<%--                    <button type="submit">ADD</button>--%>
<%--                </form>--%>
<%--            </div>--%>

<%--        </div>--%>



    </div>
    <div style="width: 50%">
       <input type="text" class="btn_search" id="btn_search"> <button onclick="btn_search()">Tìm Kiếm</button>
    </div>

</div>



<table id="customers">
    <tr>
        <th>STT</th>
        <th>Tên Sản Phẩm</th>
        <th>Số Lượng</th>
        <th>Hình ảnh</th>
        <th>Hành Động</th>
    </tr>
    <c:forEach var="product" items="${list_product}">
    <tr>
        <td>${product.getId()}</td>
        <td> ${product.getName()}</td>
        <td>${product.getSoluong()}</td>
        <td><img src="image/${product.getFile_name()}"></td>
        <td>
            <a href="get_product?id=${product.getId()}"><i style='font-size:24px' class='far'>&#xf044;</i></a>
            <a href="#"><i style='font-size:24px' class='far'>&#xf2ed;</i></a>
        </td>


    </tr>
    </c:forEach>
</table>







<script>

    function  btn_search(){
        let txt_search = $("#btn_search").val();
        let  html = `<tr>
                    <th>STT</th>
                    <th>Tên Sản Phẩm</th>
                    <th>Số Lượng</th>
                    <th>Hành Động</th>
                    </tr>`;
        $.ajax({
            url: "search-product?name=" +txt_search,
            success: function (result) {
                console.log(result);


                    result.forEach((item) =>{
                        console.log(item)
                        let data =`<tr>
                            <td>`+item.id+`</td>
                            <td> `+item.name+`</td>
                            <td>`+item.soluong+`</td>
                            <td>
                            <a href="get_product?id=`+item.id+`"><i style='font-size:24px' class='far'>&#xf044;</i></a>
                            <a href="#"><i style='font-size:24px' class='far'>&#xf2ed;</i></a>
                            </td>

                            </tr>;`
                        html += data;
                })

                $("#customers").empty();
                $("#customers").append(html);



            },
            error: function (xhr, status, error) {
                console.log("error");
            }
        });

    }


    $("form").submit(function (){
        alert("add");




    })





</script>
</body>
</html>
