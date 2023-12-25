<%--
  Created by IntelliJ IDEA.
  User: peanhatphat
  Date: 20/12/2023
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Medical Research</title>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="viewprot" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href=<c:url value="/bootstrap/css/bootstrap.min.css"/>>
    <link rel="stylesheet" href=<c:url value="/bootstrap/css/index.css" /> >

</head>

<body >
    <div style="background-color: #9ed6fe"  class="container-fluid d-flex row">
        <div style="font-size: 50px;margin-top: 20%" id="title" class=" col-lg-12 text-white text-uppercase text-center">
        Tra Cứu Y Học Trực Tuyến
          </div>
        <div id="sub-title" class="col-lg-12 text-white text-center">
            Kiến Thức Cập Nhật - Chuyên Mục Phong Phú - Thông Tin Tin Cậy
        </div>
        <form action=<c:url value="/index" /> method="get">
        <div style="margin-bottom: 20%" id="form-submit" class="col-lg-12 row d-flex justify-content-center mt-3 ">
                <input style="border: 0px;padding: 1%;" required class="col-lg-8" type="text" name="title" placeholder="Nhập từ khoá tìm kiếm">
                <button style="border-radius: 0px;" type="submit" class="btn btn-primary col-lg-1">Search</button>

        </div>
        </form>
    </div>
<script scr = <c:url value="js/jquery-3.7.1.min.js"/>></script>
</body>
</html>