<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sửa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center">Sửa nhân viên</h1>
    <form method="post">
        <div class="form-group">
            <label class="form-label" for="name">Tên nhân viên:</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập họ tên"
                   value="${employee.name}">
        </div>
        <div class="form-group">
            <label class="form-label" for="birthday">Ngày sinh:</label>
            <input type="date" class="form-control" id="birthday" name="birthday" placeholder="YYYY/MM/DD"
                   value="${employee.birthday}"><br>
        </div>
        <div class="form-group">
            <label class="form-label" for="gender">Giới tính:</label>
            <input type="radio" id="gender" name="gender" value="male"> Nam
            <input type="radio" id="gender1" name="gender" value="female"> Nữ
            <input type="radio" id="gender2" name="gender" value="other"> Khác
        </div>
        <div class="form-group">
            <label class="form-label" for="idCard">CCCD:</label>
            <input type="text" class="form-control" id="idCard" name="idCard" placeholder="Nhập số CMT/CCCD 9-12 số"
                   minlength="9" maxlength="12" value="${employee.idCard}">
        </div>
        <div class="form-group">
            <label class="form-label" for="wage">Mức lương:</label>
            <input type="text" class="form-control" id="wage" name="wage" placeholder="Nhập lương"
                   value="${employee.wage}">
        </div>
        <div class="form-group">
            <label class="form-label" for="phone">SĐT:</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="Nhập số điện thoại"
                   minlength="9" value="${employee.phone}">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1" class="form-label">Email:</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email"
                   placeholder="name@gmail.com" value="${employee.email}">
            <div id="emailHelp" class="form-text">Chúng tôi sẽ không bao giờ chia sẻ email của bạn với bất kỳ ai khác.
            </div>
        </div>
        <div class="form-group">
            <label class="form-label" for="address">Địa chỉ:</label>
            <input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ"
                   value="${employee.address}">
        </div>
        <div class="form-group">
            <label class="form-label" for="idPart">Mã bộ phận:</label>
            <input type="number" class="form-control" id="idPart" name="idPart" value="${employee.idPart}">
        </div>
        <div class="form-group">
            <label class="form-label" for="idAccount">Mã tài khoản:</label>
            <input type="number" class="form-control" id="idAccount" name="idAccount" value="${employee.idAccount}">
        </div>
        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Xác nhận sửa</label>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Lưu thay đổi</button>
    </form>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</html>
