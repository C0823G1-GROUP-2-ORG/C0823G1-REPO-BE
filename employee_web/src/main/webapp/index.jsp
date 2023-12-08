<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<h1 class="text-center">Danh sách nhân viên</h1>
<a href="/employee-servlet" class="btn btn-primary">Hiển thị danh sách nhân viên</a>
<a href="/employee-servlet?action=show-employee" class="btn btn-primary">Thêm mới nhân viên</a>
<div class="form-group">
    <input type="text" class="form-control" placeholder="Nhập để tìm kiếm">
    <a href="/employee-servlet?action=search-employee" class="btn btn-primary">Tìm kiếm</a>
    <a href="/employee-servlet?action=arrange-employee" class="btn btn-primary">Sắp xếp</a>
</div>
<table class="table table-striped table-hover">
    <thead>
    <tr>
        <th>STT</th>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Giới tính</th>
        <th>CCCD</th>
        <th>Lương</th>
        <th>SĐT</th>
        <th>Email</th>
        <th>Địa chỉ</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="employee" varStatus="loop">
        <tr>
            <td>${loop.count}</td>
            <td>${employee.name}</td>
            <td>${employee.birthday}</td>
            <c:if test="${employee.gender == true}">
                <td>Nam</td>
            </c:if>
            <c:if test="${employee.gender == false}">
                <td>Nữ</td>
            </c:if>
            <td>${employee.idCard}</td>
            <td>${employee.wage}$</td>
            <td>${employee.phone}</td>
            <td>${employee.email}</td>
            <td>${employee.address}</td>
            <td>
                <a href="/employee-servlet?action=edit-employee&id=${employee.id}" class="btn btn-info">Sửa</a>
            </td>
            <td>
                <button type="button" class="btn btn-primary" onclick="infoDelete('${employee.id}','${employee.name}')"
                        data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Xoá
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/employee-servlet?action=delete-employee" method="post">
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
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>
                    <button type="submit" class="btn btn-primary">Đúng</button>
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