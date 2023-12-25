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
    <script scr = <c:url value="/bootstrap/js/jquery-3.7.1.min.js"/>></script>
    <script type="module" scr = <c:url value="/bootstrap/js/search.js"/>></script>
    <script type="module" src=<c:url value="/bootstrap/js/bootstrap.bundle.min.js"/>></script>
</head>

<body >
<div style="background-color: white"  class="container-fluid d-flex row">
    <div style="background-color: darkgray;" id="search" class="col-lg-12">
        <div style="font-size: 50px" id="title" class=" col-lg-12 text-white text-uppercase text-center">
            Tra Cứu Y Học Trực Tuyến
        </div>
        <div id="sub-title" class="col-lg-12 text-white text-center">
            Kiến Thức Cập Nhật - Chuyên Mục Phong Phú - Thông Tin Tin Cậy
        </div>
        <form action=<c:url value="/index" /> method="get">
            <div style="margin-bottom: 1%" id="form-submit" class="col-lg-12 row d-flex justify-content-center mt-3 ">
                <input value="${title}"  style="border: 0px;padding: 1%;" required class="col-lg-5" type="text" name="title" placeholder="Nhập từ khoá tìm kiếm">
                <button style="border-radius: 0px;" type="submit" class="btn btn-primary col-lg-1">Search</button>
            </div>
        </form>
    </div>
    <div id="title-list" style="margin: 0px;background-color: #d9d9d9;" class="col-lg-12 d-flex row justify-content-center">
        <c:forEach varStatus="loop" var="item" items="${newSletterModels}">
            <div class="col-lg-10 ms-5 mt-5 mb-5  justify-content-center">
                <a class="" style="font-size: 32px;" href=<c:url value="/detail?id=${item.getId()}"/>>${item.getTitle()}</a>
            </div>
        </c:forEach>
        <c:if test="${newSletterModels.size()==0}">
            <div style="font-size: 40px;" class="col-lg-10 ms-5 mt-5 mb-5  justify-content-center">Không tìm thấy kết quả nào.</div>
        </c:if>
    </div>
    <div id="footer" class="col-lg-12 mb-lg-5">
        <div id="footer-title" style="font-size: 30px" class="fw-bold col-lg-12 mt-lg-3 mb-lg-3">Tài Liệu Tham Khảo</div>
        <div>
            <ul class="list-group">
                <c:forEach var="item" varStatus="loop"  items="${otherDocument}">
                    <div class="list-group">
                        <p class="d-inline-flex gap-1">
                            <button class="btn list-group-item list-group-item-action list-group-item-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#collapse${loop.index}" aria-expanded="false" aria-controls="collapse${loop.index}">
                                    ${item.getName()}
                            </button>
                        </p>
                        <div class="collapse" id="collapse${loop.index}">
                            <div class="card card-body">
                                <ul class="list-group">
                                    <c:forEach var="item1" varStatus="loop1"  items="${item.getFacultyModelList()}">
                                        <div class="list-group">
                                            <p class="d-inline-flex gap-1">
                                                <button class="btn list-group-item list-group-item-action list-group-item-dark" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-${loop.index}-${loop1.index}" aria-expanded="false" aria-controls="collapse-${loop.index}-${loop1.index}">
                                                        ${item1.getName()}
                                                </button>
                                            </p>
                                            <div class="collapse" id="collapse-${loop.index}-${loop1.index}">
                                                <div class="card card-body">
                                                    <ul class="list-group">
                                                        <c:forEach var="item2" varStatus="loop2"  items="${item1.getArticleModelList()}">
                                                            <div class="list-group">
                                                                <p class="d-inline-flex gap-1">
                                                                    <a href="${item2.getLink()}" class="btn list-group-item list-group-item-action list-group-item-light">
                                                                            ${item2.getName()}
                                                                    </a>
                                                                </p>
                                                            </div>
                                                        </c:forEach>
                                                    </ul>

                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>


                                </ul>
                            </div>
                        </div>
                    </div>
                </c:forEach>


            </ul>
        </div>

    </div>
</div>


</body>
</html>
<%--<c:forEach varStatus="loop1" var="item1" items="${item.getFacultyModelList()}">--%>
<%--    <p class="d-inline-flex gap-1">--%>
<%--        <button class="btn list-group-item list-group-item-action list-group-item-info" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-1-${loop1.index}" aria-expanded="false" aria-controls="collapseExample-1-${loop1.index}">--%>
<%--                ${item1.getName()}--%>
<%--        </button>--%>
<%--    </p>--%>
<%--    <div class="collapse" id="collapse-1-${loop.index}">--%>
<%--        <div class="card card-body">--%>
<%--            <div class="card card-body">--%>
<%--                <c:forEach varStatus="loop2" var="item2" items="${item1.getArticleModelList()}">--%>
<%--                    <button class="btn list-group-item list-group-item-action list-group-item-info" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-2-${loop2.index}" aria-expanded="false" aria-controls="collapseExample-2-${loop2.index}">--%>
<%--                            ${item2.getName()}--%>
<%--                    </button>--%>
<%--                </c:forEach>--%>
<%--                <div class="card card-body">--%>
<%--                    <div class="card card-body">--%>
<%--                        <button class="btn list-group-item list-group-item-action list-group-item-info" type="button">--%>
<%--                                ${item2.getLink()}--%>
<%--                        </button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    </div>--%>
<%--</c:forEach>--%>