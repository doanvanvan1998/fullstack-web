<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2/15/2025
  Time: 7:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Detail</title>
  <style>
    body {font-family: Arial, Helvetica, sans-serif;}
    * {box-sizing: border-box;}

    input[type=text], select, textarea {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      margin-top: 6px;
      margin-bottom: 16px;
      resize: vertical;
    }

    input[type=submit] {
      background-color: #04AA6D;
      color: white;
      padding: 12px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type=submit]:hover {
      background-color: #45a049;
    }

    .container {
      border-radius: 5px;
      /* background-color: #f2f2f2; */
      padding: 20px;
    }
  </style>


</head>
<body>
<h1>Chi tiết sản phẩm</h1>

<div class="container">
  <form action="" method="post" style="width: 500px;">
    <label >Tên sản phẩm</label>
    <input type="text" id="fname" name="name" value="${product.getName()}" >

    <label >Số lượng</label>
    <input type="text" id="lname" name="soluong" value="${product.getSoluong()}">
    <input type="submit" value="Submit">
  </form>
</div>


</body>
</html>
