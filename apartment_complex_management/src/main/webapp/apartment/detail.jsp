<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 06/12/2023
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../css/detail.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <style>
        .overline {
            font-size: .625rem;
            letter-spacing: .0625rem;
            line-height: 1rem;
            font-weight: 400;
            text-transform: uppercase;
        }

        ._19xnuo97 {
            padding-left: 8px !important;
            padding-right: 8px !important;
        }
    </style>
</head>
<body>
<c:if test="${not empty apartment}">
    <section>
        <div class="container flex">
            <div class="left col-6">
                <img src="${apartment.getImage()}" alt=""
                     style="width: 100%; height: 100%">

            </div>
            <div class="right col-6" style="position: relative">
                <h3>Căn hộ số ${apartment.getName()}</h3>
                <h4> Chi phí thuê: <fmt:setLocale value="vi_VN"/>
                    <fmt:setBundle basename="path_to_your_resource_bundle"/>
                    <fmt:formatNumber value="${apartment.getRentalCosts()}" type="currency" currencyCode="VND"/></h4>
                <div style="text-align: left">
                    <table>
                        <tr>
                            <th>Diện tích:</th>
                            <td style="width: 120px; padding-left: 6px">${apartment.getAcreage()}m<sup>2</sup></td>
                            <th>Số người tối đa:</th>
                            <td style="padding-left: 6px">${apartment.getMaxPeople()}</td>
                        </tr>
                        <tr>
                            <th>Loại căn hộ:</th>
                            <td style="width: 120px; padding-left: 6px">
                                <c:if test="${apartment.getIdApartmentType() == 1}">
                                    <c:out value="${'Studio'}"></c:out>
                                </c:if>
                                <c:if test="${apartment.getIdApartmentType() == 2}">
                                    <c:out value="${'Family'}"></c:out>
                                </c:if>
                                <c:if test="${apartment.getIdApartmentType() == 3}">
                                    <c:out value="${'Officetel'}"></c:out>
                                </c:if>
                            </td>
                            <th>Kiểu thuê:</th>
                            <td style="padding-left: 6px">
                                <c:if test="${apartment.getIdRentalType() == 1}">
                                    <c:out value="${'Ngày'}"></c:out>
                                </c:if>
                                <c:if test="${apartment.getIdRentalType() == 2}">
                                    <c:out value="${'Tháng'}"></c:out>
                                </c:if>
                                <c:if test="${apartment.getIdRentalType() == 3}">
                                    <c:out value="${'Năm'}"></c:out>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>Số tầng:</th>
                            <td style="width: 120px; padding-left: 6px">
                                <c:if test="${apartment.getIdFloors() == 1}">
                                    <c:out value="${'1'}"></c:out>
                                </c:if>
                                <c:if test="${apartment.getIdFloors() == 2}">
                                    <c:out value="${'2'}"></c:out>
                                </c:if>
                                <c:if test="${apartment.getIdFloors() == 3}">
                                    <c:out value="${'3'}"></c:out>
                                </c:if>
                                <c:if test="${apartment.getIdFloors() == 4}">
                                    <c:out value="${'4'}"></c:out>
                                </c:if>
                                <c:if test="${apartment.getIdFloors() == 5}">
                                    <c:out value="${'5'}"></c:out>
                                </c:if>
                                <c:if test="${apartment.getIdFloors() == 6}">
                                    <c:out value="${'6'}"></c:out>
                                </c:if>
                            </td>
                            <th>Tình trạng:</th>
                            <td style="padding-left: 6px">${apartment.getStatus()}</td>
                        </tr>
                    </table>
                </div>

                <p style="margin: 0; font-weight: bold; color: black"> Mô tả:
                </p>
                <p style="width: 100%; text-align: justify">
                        ${apartment.getDescription()}
                </p>
                <p style="margin: 0; font-weight: bold; color: black"> Dịch vụ đi kèm: </p>
                <table style="width: 100%; margin-top: 20px;font-size: 2em">
                    <tr>
                        <td style="width: 20%">
                            <i class="fa-solid fa-wifi offset-0"></i>
                        </td>
                        <td style="width: 20%">
                            <i class="fa-solid fa-tv"></i>
                        </td>
                        <td style="width: 20%">
                            <i class="fa-solid fa-snowflake"></i>
                        </td>
                        <td style="width: 20%">
                            <i class="fa-solid fa-kitchen-set"></i>
                        </td>
                        <td style="width: 20%">
                            <i class="fa-solid fa-fire-extinguisher"></i>
                        </td>
                    </tr>
                </table>
                <c:if test="${apartment.getStatus() == 'Chưa cho thuê'}">
                    <a class="btn btn-primary" href="/viewing-schedule?action=scheduleView&id=${apartment.getId()}"
                       role="button" style="position: absolute;bottom: 35px;right: 30px;left: 40px">Đặt lịch xem</a>
                </c:if>
                <c:if test="${apartment.getStatus() == 'Đã cho thuê'}">
                    <div class="btn"
                       role="button" style="position: absolute;bottom: 35px;right: 30px;left: 40px; background-color: #535c68; color: white">Đã cho thuê</div>
                </c:if>
            </div>
        </div>
    </section>
</c:if>
</body>
</html>
