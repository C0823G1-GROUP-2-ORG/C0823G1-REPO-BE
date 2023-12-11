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
<h1 style="text-align: center;font-weight: bold;color: #f44566; margin-top: 100px;margin-bottom: 40px">Danh sách lịch
    xem </h1>
<table>
    <tr>
        <td>
            <a href="/viewing-schedule-admin?action=deleteOldSchedule" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Xóa lịch xem cũ
            </a>
        </td>
        <td>
            <a href="/viewing-schedule-admin?action=todaySchedule" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Lịch xem hôm nay
            </a>
        </td>
        <td>
            <a href="/viewing-schedule-admin?action=notRepSchedule" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Lịch xem chưa phản hồi
            </a>
        </td>
        <td>
            <a href="/viewing-schedule-admin?action=listViewSchedule" class="btn btn-primary"
               data-bs-target="#exampleModal">
                Toàn bộ lịch xem
            </a>
        </td>
    </tr>
</table>
<br>
<div class="d-flex justify-content-center">
    <table border="1" class="table table-striped">
        <tr style="background-color: rebeccapurple">
            <th scope="col" style="color: #F5DEB3;width: 5%">Stt</th>
            <th scope="col" style="color: #F5DEB3;width: 10%">Tên căn hộ</th>
            <th scope="col" style="color: #F5DEB3;width: 16%">Tên khách hàng</th>
            <th scope="col" style="color: #F5DEB3;width: 10.5%">Số điện thoại</th>
            <th scope="col" style="color: #F5DEB3;width: 20.5%">Email</th>
            <th scope="col" style="color: #F5DEB3;width: 15%">Ngày xem căn hộ</th>
            <th scope="col" style="color: #F5DEB3;width: 12%">Tình trạng</th>
            <th scope="col" style="color: #F5DEB3;width: 8%">Sửa</th>
            <th scope="col" style="color: #F5DEB3;width: 8%">Phản hồi</th>
        </tr>
        <c:forEach items='${requestScope["viewingScheduleDTOList"]}' var="schedule" varStatus="loop">
            <tr class="align-middle">
                <td>${loop.count}</td>
                <td>${schedule.getApartmentName()}</td>
                <td>${schedule.getCustomerName()}</td>
                <td>${schedule.getCustomerPhone()}</td>
                <td>${schedule.getEmail()}</td>
                <td>${schedule.getViewDate()}</td>
                <c:if test="${schedule.getStatus() == 'Chờ phản hồi'}">
                    <td style="color: red">
                            ${schedule.getStatus()}
                    </td>
                </c:if>
                <c:if test="${schedule.getStatus() == 'Đã phản hồi'}">
                    <td>
                            ${schedule.getStatus()}
                    </td>
                </c:if>
                <td>
                    <a href="#" class="btn btn-primary" data-bs-toggle="modal"
                       data-bs-target="#exampleModal${schedule.getId()}">
                        Sửa
                    </a>
                    <div class="modal fade" id="exampleModal${schedule.getId()}" tabindex="-1"
                         aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="/viewing-schedule-admin?action=editSchedule&id=${schedule.getId()}"
                                      method="post">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel1">Sửa thông tin lịch xem</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <table>
                                            <tr>
                                                <td>Tên căn hộ:</td>
                                                <td>${schedule.getApartmentName()}</td>
                                            </tr>
                                            <tr>
                                                <td>Tên khách hàng</td>
                                                <td>${schedule.getCustomerName()}</td>
                                            </tr>
                                            <tr>
                                                <td>Số điện thoại:</td>
                                                <td>
                                                        ${schedule.getCustomerPhone()}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Email:</td>
                                                <td>${schedule.getEmail()}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Ngày xem:</td>
                                                <td><input type="text" id="viewDate"
                                                           name="viewDate" placeholder="${schedule.getViewDate()}"
                                                           pattern="^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$"><br>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="modal-footer">
                                        <button onclick="showAlert('${requestScope["message"]}')" type="submit"
                                                class="btn btn-primary" value="Lưu thay đổi">Lưu thay đổi
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </td>
                <c:if test="${schedule.getStatus() == 'Chờ phản hồi'}">
                    <td>
                        <a href="#" class="btn btn-primary" data-bs-toggle="modal"
                           data-bs-target="#exampleModal1${schedule.getId()}">
                            Phản hồi
                        </a>
                        <div class="modal fade" id="exampleModal1${schedule.getId()}" tabindex="-1"
                             aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="/viewing-schedule-admin?action=feedbackSchedule&id=${schedule.getId()}"
                                          method="post">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel2">Phản hồi lịch xem đến khách hàng</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <table>
                                                <tr>
                                                    <td>Tên căn hộ:</td>
                                                    <td>${schedule.getApartmentName()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Tên khách hàng</td>
                                                    <td>${schedule.getCustomerName()}</td>
                                                </tr>
                                                <tr>
                                                    <td>Số điện thoại:</td>
                                                    <td>
                                                            ${schedule.getCustomerPhone()}
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Email:</td>
                                                    <td>${schedule.getEmail()}
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Ngày xem:</td>
                                                    <td>${schedule.getViewDate()}
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="submit" class="btn btn-primary" value="Phản hồi">
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
