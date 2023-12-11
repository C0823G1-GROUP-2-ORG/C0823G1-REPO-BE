<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 05/12/2023
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<jsp:include page="header-admin.jsp" />
<main class="container-1">
    <div class="row">
        <c:forEach items="${apartments}" var="apartment">
            <div class="col-sm-4">
                <div class="card">
                    <div class="container-1">
                        <div class="card__container">
                            <article class="card__article">
                                <img src="${apartment.getImage()}"
                                     class="card__img">
                                <div class="card__data">
                                    <span class="card__description"> Căn hộ: ${apartment.getName()}  </span>
                                    <c:if test="${apartment.getIdApartmentType() == 1}">
                                        <span class="card__description">Loại căn hộ: <c:out value="${'Studio'}"></c:out></span>
                                    </c:if>
                                    <c:if test="${apartment.getIdApartmentType() == 2}">
                                        <span class="card__description">Loại căn hộ: <c:out value="${'Family'}"></c:out></span>
                                    </c:if>
                                    <c:if test="${apartment.getIdApartmentType() == 3}">
                                        <span class="card__description">Loại căn hộ: <c:out value="${'Officetel'}"></c:out></span>
                                    </c:if>
                                    <a href="/apartment-admin?action=detail&id=${apartment.getId()}" class="card__button"> Xem chi tiết
                                    </a>
                                </div>
                            </article>
                            <div class="card-body " style="position: relative">
                                <c:if test="${apartment.getStatus() == 'Chưa cho thuê'}">
                                    <button type="button" class="btn btn-success" style="position: absolute;top: 15px;right: 15px">Chưa cho thuê</button>
                                </c:if>
                                <c:if test="${apartment.getStatus() == 'Đã cho thuê'}">
                                    <button type="button" class="btn btn-danger" style="position: absolute;top: 15px;right: 15px">Đã cho thuê</button>
                                </c:if>
                                <h5 class="card-title">Căn hộ: ${apartment.getName()}</h5>
                                <h5 class="card-title">Số tầng: ${apartment.getIdFloors()}</h5>
                                <p class="_tyxjp1">Chi phí thuê:
                                    <fmt:setLocale value="vi_VN" />
                                    <fmt:setBundle basename="path_to_your_resource_bundle" />
                                    <fmt:formatNumber value="${apartment.getRentalCosts()}" type="currency" currencyCode="VND" /></p>
                                <a class="btn btn-primary btn-outline-danger" href="/viewing-schedule?action=scheduleView&id=${apartment.getId()}"
                                   style=" color: white; width: 400px;border: none">
                                    Đặt lịch xem
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</main>
<jsp:include page="footer-admin.jsp" />
</body>
</html>
