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
<h1 style="text-align: center;font-weight: bold;color: #f44566; margin-top: 100px;margin-bottom: 40px">Danh sách nhân
    viên</h1>
<table>
    <tr>
        <td>
            <a href="/staff-admin?action=doingStaff" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Các nhân viên đang làm
            </a>
        </td>
        <td>
            <a href="/staff-admin?action=notDoingStaff" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Các nhân viên đã nghĩ
            </a>
        </td>
        <td>
            <a href="/staff-admin?action=listAllStaff" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Toàn bộ nhân viên
            </a>
        </td>
        <td>
            <a href="/staff-admin?action=addStaff" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Thêm mới nhân viên
            </a>
        </td>
    </tr>
</table>
<br>
<div class="d-flex justify-content-center">
    <table border="1" class="table table-striped" style="font-size: 0.85em">
        <tr style="background-color: rebeccapurple">
            <th scope="col" style="color: #F5DEB3">Stt</th>
            <th scope="col" style="color: #F5DEB3">Tên nhân viên</th>
            <th scope="col" style="color: #F5DEB3">Ngày sinh</th>
            <th scope="col" style="color: #F5DEB3">Giới tính</th>
            <th scope="col" style="color: #F5DEB3">Số chứng minh</th>
            <th scope="col" style="color: #F5DEB3">Lương</th>
            <th scope="col" style="color: #F5DEB3">Số điện thoai</th>
            <th scope="col" style="color: #F5DEB3">Email</th>
            <th scope="col" style="color: #F5DEB3">Địa chỉ</th>
            <th scope="col" style="color: #F5DEB3">Tên bộ phận</th>
            <th scope="col" style="color: #F5DEB3">Tên tài khoản</th>
            <th scope="col" style="color: #F5DEB3">Tình trạng</th>
            <th scope="col" style="color: #F5DEB3">Sửa</th>
            <th scope="col" style="color: #F5DEB3">Xóa</th>

        </tr>
        <c:forEach items='${requestScope["staffDTOS"]}' var="staff" varStatus="loop">
            <tr class="align-middle">
                <td>${loop.count}</td>
                <td>${staff.getName()}</td>
                <td>${staff.getDateOfBirth()}</td>
                <td>
                <c:if test='${staff.getGender() == 0}'>
                        <c:out value="${'Nam'}"></c:out>
                </c:if>
                <c:if test='${staff.getGender() == 1}'>
                    <c:out value="${'Nữ'}"></c:out>
                </c:if>
                </td>
                <td>${staff.getNumberCMND()}</td>
                <td> <fmt:setLocale value="vi_VN"/>
                    <fmt:setBundle basename="path_to_your_resource_bundle"/>
                    <fmt:formatNumber value="${staff.getWage()}" type="currency" currencyCode="VND"/></td>
                <td>${staff.getNumberPhone()}</td>
                <td>${staff.getEmail()}</td>
                <td>${staff.getAddress()}</td>
                <td>${staff.getWorkingParts()}</td>
                <td>${staff.getAccount()}</td>
                <td>
                <c:if test='${staff.getIsDeleted() == 0}'>
                    <c:out value="${'Đang làm'}"></c:out>
                </c:if>
                <c:if test='${staff.getIsDeleted() == 1}'>
                    <c:out value="${'Nghĩ việc'}"></c:out>
                </c:if>
                </td>
                <c:if test='${staff.getIsDeleted() == 0}'>
                    <td>
                        <a href="#" class="btn btn-primary" data-bs-toggle="modal"
                           data-bs-target="#exampleModal${staff.getId()}">
                            Sửa
                        </a>
                        <div class="modal fade" id="exampleModal${staff.getId()}" tabindex="-1"
                             aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="/staff-admin?action=editStaff&id=${staff.getId()}" method="post">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel1">Sửa thông tin nhân viên</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <table>
                                                <tr>
                                                    <td>Tên nhân viên:</td>
                                                    <td>${staff.getName()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Lương:</td>
                                                    <td><input type="text" name="wage" id="wage"
                                                               placeholder="${staff.getWage()}" style="width: 350px" pattern="^[1-9]\d*$"></td>
                                                </tr>
                                                <tr>
                                                    <td>Địa chỉ:</td>
                                                    <td><input type="text" name="address" id="address" style="width: 350px"></td>
                                                </tr>
                                                <tr>
                                                    <td>Bộ phận:</td>
                                                    <td>
                                                        <label>
                                                            <select name="workPart" style="width: 350px">
                                                                <option value="1">Nhân viên</option>
                                                                <option value="2">Trưởng phòng</option>
                                                            </select>
                                                        </label>
                                                    </td>
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
                <c:if test='${staff.getIsDeleted() == 1}'>
                    <td></td>
                </c:if>
                <c:if test='${staff.getIsDeleted() == 0}'>
                    <td>
                        <a href="#" class="btn btn-primary" data-bs-toggle="modal"
                           data-bs-target="#exampleModal1${staff.getId()}">
                            Xóa
                        </a>
                        <div class="modal fade" id="exampleModal1${staff.getId()}" tabindex="-1"
                             aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="/staff-admin?action=removeStaff&id=${staff.getId()}" method="post">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel2">Xác nhận xóa nhân viên</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <table>
                                                <tr>
                                                    <td>Tên nhân viên:</td>
                                                    <td>${staff.getName()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Ngày sinh:</td>
                                                    <td>${staff.getDateOfBirth()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Email:</td>
                                                    <td>${staff.getEmail()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Bộ phận:</td>
                                                    <td>${staff.getWorkingParts()}</td>
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
                <c:if test='${staff.getIsDeleted() == 1}'>
                    <td>
                        <a href="#" class="btn btn-danger" data-bs-toggle="modal"
                           data-bs-target="#exampleModal2${staff.getId()}">
                            Thêm
                        </a>
                        <div class="modal fade" id="exampleModal2${staff.getId()}" tabindex="-1"
                             aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="/staff-admin?action=recoverStaff&id=${staff.getId()}" method="post">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel3">Xác nhận phục hồi nhân viên</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <table>
                                                <tr>
                                                    <td>Tên nhân viên:</td>
                                                    <td>${staff.getName()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Ngày sinh:</td>
                                                    <td>${staff.getDateOfBirth()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Email:</td>
                                                    <td>${staff.getEmail()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Bộ phận:</td>
                                                    <td>${staff.getWorkingParts()}</td>
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



