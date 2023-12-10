<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 03/12/2023
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hello Apartment</title>
    <link rel="stylesheet" href="../css/main%20(1).css">
    <link rel="stylesheet" href="../css/animation%20(1).css">
    <link rel="stylesheet" href="../css/footer.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
    <style>

        ul {
            list-style-type: none;
        }

        p {
            font-family: Roboto, serif;
        }

        body.new-design .hero .hero-title .eyebrow {
            font-size: 12px;
            line-height: 16px;
            font-weight: 700;
            letter-spacing: -.05em;
            text-transform: uppercase;
            padding-bottom: 0.5rem;
            margin-bottom: 0;
        }

        .hero .hero-title {
            color: #fff;
            font-size: 66px;
            letter-spacing: 2px;
            font-variant-ligatures: none;
            line-height: 70px;
            margin-bottom: 16px;
            position: relative;
            text-transform: uppercase;
            z-index: 25;
        }

        h1:not([class*=is-title-]), .is-title-xxl {
            font-size: 2.5rem;
            font-weight: 100;
            letter-spacing: -0.05em;
            line-height: 2.5rem;
            text-transform: uppercase;
        }

        .card {
            border: none
        }

    </style>
</head>
<body>
<jsp:include page="../admin/header-admin.jsp" />
<h1 style="text-align: center;font-weight: bold;color: #f44566; margin-top: 100px;margin-bottom: 40px">Danh sách hợp đồng</h1>
<h5 style="color: red;">${message}</h5>
<table>
    <tr>
        <td>
            <a href="/contract-servlet?action=getAllContract" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Xem tất cả hợp đồng đã kí
            </a>
        </td>
        <td>
            <a href="/contract-servlet?action=addContract" class="btn btn-primary"
               data-bs-target="#modal-add">
                Thêm mới hợp đồng
            </a>
<%--    <a href="#" class="btn btn-primary" data-bs-toggle = "modal"--%>
<%--       data-bs-target = "#modal-add">--%>
<%--        Thêm mới hợp đồng--%>
<%--    </a>--%>
<%--    <div class="modal" id="modal-add" tabindex="-1">--%>
<%--        <div class="modal-dialog">--%>
<%--            <div class="modal-content">--%>
<%--                <div class="modal-header">--%>
<%--                    <h5 class="modal-title">Thông tin hợp đồng</h5>--%>
<%--                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                </div>--%>
<%--                <div class="modal-body">--%>
<%--                    <form action="/contract-servlet?action=addContract" method="post">--%>
<%--                        <table>--%>
<%--                            <tr>--%>
<%--                                <th>Ngày kí HĐ</th>--%>
<%--                                <td><input type="date" name = "contractDate"></td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <th>Ngày kết thúc</th>--%>
<%--                                <td><input type="date" name="contractEndDate" placeholder="01/01/2023"></td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <th>Tiền đặt cọc</th>--%>
<%--                                <td><input type="text" name="deposit" value="0"></td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <th>Mã khách hàng</th>--%>
<%--                                <td><input type="text" name="idCustomer"></td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <th>Mã nhân viên</th>--%>
<%--                                <td><input type="text" name="idStaff"></td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <th>Mã căn hộ</th>--%>
<%--                                <td><input type="text" name="idApartment"></td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td></td>--%>
<%--                                <td><input type="submit" value="Lưu Hợp đồng" class="btn btn-primary"></td>--%>
<%--                            </tr>--%>
<%--                        </table>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--                <div class="modal-footer">--%>
<%--                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
<%--                    <button type="button" class="btn btn-primary">Save changes</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
        </td>
        <td>
            <a href="/contract-servlet?action=search" class="btn btn-primary">Tìm kiếm</a>
        </td>
        <td>
            <a href="/contract-servlet?action=sort" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Sắp xếp theo ngày kết thúc
            </a>
        </td>
    </tr>
</table>
<br>
<h5 style="color: red">${mesage}</h5>
<div class="d-flex justify-content-center">
    <table border="1" class="table table-striped" style="text-align: center">
        <tr style="background-color: rebeccapurple">
            <th scope="col" style="color: #F5DEB3;width: 5%">Mã HĐ</th>
            <th scope="col" style="color: #F5DEB3;width: 10%">Ngày làm hợp đồng</th>
            <th scope="col" style="color: #F5DEB3;width: 10%">Ngày kết thúc</th>
            <th scope="col" style="color: #F5DEB3;width: 10%">Tiền đặt cọc</th>
            <th scope="col" style="color: #F5DEB3;width: 15%">Mã khách hàng (Họ và tên)</th>
            <th scope="col" style="color: #F5DEB3;width: 15%">Mã nhân viên (Họ và tên)</th>
            <th scope="col" style="color: #F5DEB3;width: 10%">Mã Căn hộ (Tên căn hộ)̣</th>
            <th scope="col" style="color: #F5DEB3;width: 10%">Tình trạng</th>
            <th scope="col" style="color: #F5DEB3;width: 10%">Gia hạn</th>
            <th scope="col" style="color: #F5DEB3;width: 5%">Ngưng hợp đồng</th>
        </tr>
        <c:forEach items="${list}" var="contract" varStatus="loop">
            <tr class="align-middle">
                <td>${contract.id}</td>
                <td>${contract.contractDate}</td>
                <td>${contract.contractEndDate}</td>
                <td>${contract.deposit}</td>
<%--                <td>${contract.idCustomer}</td>--%>
                <td> ${contract.idCustomer}
                    <c:forEach items="${customer}" var="customer" varStatus="loop">
                        <c:if test="${customer.id == contract.idCustomer}">
                            (${customer.name})
                        </c:if>
                    </c:forEach>
                </td>
                <td> ${contract.idStaff}
                <c:forEach items="${staff}" var="staff" varStatus="loop">
                    <c:if test="${staff.id == contract.idStaff}">
                         (${staff.name})
                    </c:if>
                </c:forEach>
                </td>
<%--                <td>${contract.idApartment}</td>--%>
                <td> ${contract.idApartment}
                    <c:forEach items="${apartments}" var="apartment" varStatus="loop">
                        <c:if test="${apartment.id == contract.idApartment}">
                            (${apartment.name})
                        </c:if>
                    </c:forEach>
                </td>
                <td>
                    <c:if test="${contract.isDeleted == 0}">
                        <div style="color: #00c61c">Đang sử dụng</div>

                    </c:if>
                    <c:if test="${contract.isDeleted == 1}">
                        <div style="color: red">Đã hết hạn</div>
                    </c:if>
                </td>
                <td>
                    <c:if test="${contract.isDeleted == 0}">
                        <a href="/contract-servlet?action=extension&id=${contract.id}" class="btn btn-primary">Gia hạn</a>
                    </c:if>
                </td>
                <td>
                    <c:if test="${contract.isDeleted == 0}">
<%--                        <a href="/contract-servlet?action=delete&id=${contract.id}" class="btn btn-danger" id="but">Ngưng</a>--%>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#modal-add${contract.id}">
                            Ngưng
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="modal-add${contract.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Xác Nhận chấm dứt hợp đồng?</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <table class="table table-cell">
                                            <tr>
                                                <th>Mã hợp đồng</th>
                                                <td>${contract.id}</td>
                                            </tr>
                                            <tr>
                                                <th>Ngày làm hợp đồng</th>
                                                <td>${contract.contractDate}</td>
                                            </tr>
                                            <tr>
                                                <th>Ngày kết thúc</th>
                                                <td>${contract.contractEndDate}</td>
                                            </tr>
                                            <tr>
                                                <th>Tiền đặt cọc</th>
                                                <td>${contract.deposit}</td>
                                            </tr>
                                            <tr>
                                                <th>Mã khách hàng</th>
                                                <td>${contract.idCustomer}</td>
                                            </tr>
                                            <tr>
                                                <th>Mã nhân viên</th>
                                                <td>${contract.idStaff}</td>
                                            </tr>
                                            <tr>
                                                <th>Mã căn hộ</th>
                                                <td>${contract.idApartment}</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
<%--                                        <button type="button" class="btn btn-primary"><a href="/contract-servlet?action=delete$id=${contract.id}">Đồng ý</a></button>--%>
                                        <a href="/contract-servlet?action=delete&id=${contract.id}" type="submit" class="btn btn-primary">Đồng ý</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </td>
<%--                <td><a href="/contract-servlet?action=delete&id=${contract.id}" class="btn btn-danger" id="but">Ngưng</a></td>--%>
            </tr>
        </c:forEach>
    </table>
</div>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
