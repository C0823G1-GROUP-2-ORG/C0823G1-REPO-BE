<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 03/12/2023
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<jsp:include page="header-admin.jsp"/>
<h1 style="text-align: center;font-weight: bold;color: #f44566; margin-top: 100px;margin-bottom: 40px">Danh sách khách hàng</h1>
<table>
    <tr>
        <td>
            <a href="/customer-admin?action=doingCustomer" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Khách hàng đang thuê hợp đồng
            </a>
        </td>
        <td>
            <a href="/customer-admin?action=notDoingCustomer" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Khách hàng từng thuê hợp đồng
            </a>
        </td>
        <td>
            <a href="/customer-admin?action=listCustomer" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Toàn bộ khách hàng
            </a>
        </td>
        <td>
            <a href="/customer-admin?action=addStaff" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Thêm mới khách hàng
            </a>
        </td>
    </tr>
</table>
<br>
<div class="d-flex justify-content-center">
    <table border="1" class="table table-striped">
        <tr style="background-color: rebeccapurple">
            <th scope="col" style="color: #F5DEB3">Stt</th>
            <th scope="col" style="color: #F5DEB3">Tên nhân viên</th>
            <th scope="col" style="color: #F5DEB3">Ngày sinh</th>
            <th scope="col" style="color: #F5DEB3">Giới tính</th>
            <th scope="col" style="color: #F5DEB3">Số chứng minh</th>
            <th scope="col" style="color: #F5DEB3">Số điện thoai</th>
            <th scope="col" style="color: #F5DEB3">Email</th>
            <th scope="col" style="color: #F5DEB3">Địa chỉ</th>
            <th scope="col" style="color: #F5DEB3">Tên tài khoản</th>
            <th scope="col" style="color: #F5DEB3">Tình trạng</th>
            <th scope="col" style="color: #F5DEB3">Sửa</th>
            <th scope="col" style="color: #F5DEB3">Xóa</th>

        </tr>
        <c:forEach items='${requestScope["customerDTOS"]}' var="ctm" varStatus="loop">
            <tr class="align-middle">
                <td>${loop.count}</td>
                <td>${ctm.getName()}</td>
                <td>${ctm.getDateOfBirth()}</td>
                <td>
                    <c:if test='${ctm.getGender() == 0}'>
                        <c:out value="${'Nam'}"></c:out>
                    </c:if>
                    <c:if test='${ctm.getGender() == 1}'>
                        <c:out value="${'Nữ'}"></c:out>
                    </c:if>
                </td>
                <td>${ctm.getNumberCMND()}</td>
                <td>${ctm.getNumberPhone()}</td>
                <td>${ctm.getEmail()}</td>
                <td>${ctm.getAddress()}</td>
                <td>${ctm.getAccount()}</td>
                <td>
                    <c:if test='${ctm.getIsDeleted() == 0}'>
                        <c:out value="${'Tồn tại'}"></c:out>
                    </c:if>
                    <c:if test='${ctm.getIsDeleted() == 1}'>
                        <c:out value="${'Đã xóa'}"></c:out>
                    </c:if>
                </td>
                <c:if test='${ctm.getIsDeleted() == 0}'>
                    <td>
                        <a href="#" class="btn btn-primary" data-bs-toggle="modal"
                           data-bs-target="#exampleModal${ctm.getId()}">
                            Sửa
                        </a>
                        <div class="modal fade" id="exampleModal${ctm.getId()}" tabindex="-1"
                             aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="/customer-admin?action=editCustomer&id=${ctm.getId()}" method="post">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel1">Sửa thông tin khách hàng</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <table>
                                                <tr>
                                                    <td>Tên khách hàng:</td>
                                                    <td>${ctm.getName()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Địa chỉ:</td>
                                                    <td><input type="text" name="address" id="address" style="width: 300px"></td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="submit" class="btn btn-primary" value="Lưu thay đổi">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </td>
                </c:if>
                <c:if test='${ctm.getIsDeleted() == 1}'>
                    <td></td>
                </c:if>
                <c:if test='${ctm.getIsDeleted() == 0}'>
                    <td>
                        <a href="#" class="btn btn-primary" data-bs-toggle="modal"
                           data-bs-target="#exampleModal1${ctm.getId()}">
                            Xóa
                        </a>
                        <div class="modal fade" id="exampleModal1${ctm.getId()}" tabindex="-1"
                             aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="/customer-admin?action=removeCustomer&id=${ctm.getId()}" method="post">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel2">Xác nhận xóa khách hàng</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <table>
                                                <tr>
                                                    <td>Tên khách hàng:</td>
                                                    <td>${ctm.getName()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Ngày sinh:</td>
                                                    <td>${ctm.getDateOfBirth()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Email:</td>
                                                    <td>${ctm.getEmail()}</td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="submit" class="btn btn-primary" value="Xóa">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </td>
                </c:if>
                <c:if test='${ctm.getIsDeleted() == 1}'>
                    <td>
                        <a href="#" class="btn btn-danger" data-bs-toggle="modal"
                           data-bs-target="#exampleModal2${ctm.getId()}">
                            Thêm
                        </a>
                        <div class="modal fade" id="exampleModal2${ctm.getId()}" tabindex="-1"
                             aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="/customer-admin?action=recoverCustomer&id=${ctm.getId()}" method="post">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel3">Xác nhận phục hồi khách hàng</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <table>
                                                <tr>
                                                    <td>Tên khách hàng:</td>
                                                    <td>${ctm.getName()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Ngày sinh:</td>
                                                    <td>${ctm.getDateOfBirth()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Email:</td>
                                                    <td>${ctm.getEmail()}</td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="submit" class="btn btn-primary" value="Phục hồi">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </td>
                </c:if>
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
<script>
    function showAlert(message) {
        alert(message);
    }
</script>
</body>
</html>



