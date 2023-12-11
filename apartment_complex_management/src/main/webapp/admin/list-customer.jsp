<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
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

        .card {
            border: none
        }

    </style>
    <link rel="stylesheet" href="../css/styleCustomer.css">
</head>
<body>
<jsp:include page="header-admin.jsp"/>
<h1 class="h1">Danh sách khách hàng</h1>
<a href="/customer-servlet?action=formAddCustomer" class="btn btn-primary">Thêm mới khách hàng</a>
<a href="/customer-servlet?action=search-employee" class="btn btn-primary">Tìm kiếm khách hàng</a>
<table class="table table-striped table-hover">
    <tr  >
        <th >STT</th>
        <th >Tên</th>
        <th >Ngày sinh</th>
        <th >Giới tính</th>
        <th >CCCD</th>
        <th >SĐT</th>
        <th >Email</th>
        <th >Địa chỉ</th>
        <th >Sửa</th>
        <th >Xoá</th>
    </tr>
    <c:forEach items="${customers}" var="customer" varStatus="loop">
        <c:if test="${customer.isDeleted == false}">
        <tr class="align-middle">
            <td>${loop.count}</td>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <c:if test="${customer.gender == true}">
                <td>Nam</td>
            </c:if>
            <c:if test="${customer.gender == false}">
                <td>Nữ</td>
            </c:if>
            <td>${customer.numberCMND}</td>
            <td>${customer.numberPhone}</td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
            <td>
                <a href="/customer-servlet?action=editCustomer&id=${customer.id}" class="btn btn-info">Sửa</a>
            </td>
            <td>
                <button type="button" class="btn btn-primary" onclick="infoDelete('${customer.id}','${customer.name}')"
                        data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Xoá
                </button>
            </td>
        </tr>
        </c:if>
    </c:forEach>
</table>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/customer-servlet?action=deleteCustomer" method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Xác nhận</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input hidden="hidden" id="id" name="id">
                    <span>Bạn có muốm xoá </span>
                    <span id="delName"></span>
                    <span> không?</span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
                    <button type="submit" class="btn btn-primary">Xoá</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
<script>
    function infoDelete(id, name) {
        document.getElementById("delName").innerText = name;
        document.getElementById("id").value = id;
    }

    function infoEdit(id, name) {

    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</html>
