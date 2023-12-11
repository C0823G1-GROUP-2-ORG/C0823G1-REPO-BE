<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 09/12/2023
  Time: 1:43 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm mới hợp đồng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
        /*form{*/
        /*    width: 50%;*/
        /*    display: flex;*/
        /*    justify-content: center;*/
        /*}*/

    </style>
</head>
<body>
<jsp:include page="../admin/header-admin.jsp" />
<h1 style="text-align: center;font-weight: bold;color: #f44566; margin-top: 100px;margin-bottom: 40px">Thêm mới hợp đồng</h1>
<div style="text-align: center">
    <h5 style="color: red">${message}</h5>
</div>

<form method="post">
    <div class="d-flex justify-content-center" style="width: 50%; margin-left: 25%">
        <table border="1" class="table table-striped">
            <tr>
                <th>Ngày làm hợp đồng</th>
                <td><input type="date" name="contractDate" placeholder="01/01/2023"></td>
            </tr>
            <tr>
                <th>Ngày kết thúc</th>
                <td><input type="date" name="contractEndDate" placeholder="01/01/2023"></td>
            </tr>
            <tr>
                <th><label for="nameCustomer">Khách hàng</label></th>
                <td>
                    <select name="customer" id="nameCustomer">
                        <c:forEach items="${customer}" var="customer" varStatus="loop">
                            <option value="${customer.id}">${customer.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Nhân viên</th>
                <td>
                    <select name="staff">
                        <c:forEach items="${staff}" var="staff" varStatus="loop">
                            <option name="staff" value="${staff.id}">${staff.name}</option>
                        </c:forEach>
                    </select>

                </td>
            </tr>
            <tr>
                <th>Mã căn hộ</th>
                <td>
                    <select name="apartment">
                        <c:forEach items="${apartments}" var="apartment" varStatus="loop">
                            <option name="apartment" value="${apartment.id}">${apartment.name}</option>
                        </c:forEach>
                    </select>

                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Lưu Hợp đồng" class="btn btn-primary"></td>
            </tr>
        </table>
    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
