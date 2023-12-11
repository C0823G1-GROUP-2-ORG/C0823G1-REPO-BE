<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Thêm mới</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
    }
  </style>
</head>
<body>
<div class="container" style="margin: 50px; width: 90%; height: auto">
  <h1 class="text-center">Thêm mới nhân viên</h1>
  <form method="post">
    <div class="form-group">
      <label class="form-label" for="name">Tên nhân viên:</label>
      <input type="text" class="form-control" id="name" name="name" placeholder="Nhập họ tên">
      <div id="emailHelp1" class="form-text" style="color: red">${message1}</div>
    </div>
    <div class="form-group">
      <label class="form-label" for="dateOfBirth">Ngày sinh:</label>
      <input type="text" class="form-control" id="dateOfBirth" name="dateOfBirth" placeholder="YYYY-MM-DD">
      <div id="emailHelp2" class="form-text" style="color: red">${message2}</div>
    </div>
    <div class="form-group">
      <label class="form-label">Giới tính:</label>
      <label>
        <select name="gender">
          <option value="0">Nam</option>
          <option value="1">Nữ</option>
        </select>
      </label>
    </div>
    <div class="form-group">
      <label class="form-label" for="numberCMND">CCCD:</label>
      <input type="text" class="form-control" id="numberCMND" name="numberCMND" placeholder="Nhập số CMT/CCCD 9-12 số" pattern="^([0-9]{9}|[0-9]{12})+$" minlength="9" maxlength="12">
      <div id="emailHelp3" class="form-text" style="color: red">${message3}</div>
    </div>
    <div class="form-group">
      <label class="form-label" for="wage">Mức lương:</label>
      <input type="text" class="form-control" id="wage" name="wage" placeholder="Nhập lương">
    </div>
    <div class="form-group">
      <label class="form-label" for="phone">SĐT:</label>
      <input type="text" class="form-control" id="phone" name="phone" placeholder="Nhập số điện thoại" minlength="9">
      <div id="emailHelp4" class="form-text" style="color: red">${message4}</div>
    </div>
    <div class="form-group">
      <label for="exampleInputEmail1" class="form-label">Email:</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="name@gmail.com">
      <div id="emailHelp" class="form-text">Chúng tôi sẽ không bao giờ chia sẻ email của bạn với bất kỳ ai khác.
      </div>
      <div id="emailHelp5" class="form-text" style="color: red">${message5}</div>
    </div>
    <div class="form-group">
      <label class="form-label" for="address">Địa chỉ:</label>
      <input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ">
    </div>
    <br>
    <div class="form-group">
      <label class="form-label">Bộ phận:</label>
      <label>
        <select name="idWorkingPart">
          <option value="1">Nhân viên</option>
          <option value="2">Trưởng phòng</option>
        </select>
      </label>
    </div>
    <div class="form-group">
      <label class="form-label" for="idAccount">Tài khoản </label>
      <input type="number" class="form-control" id="idAccount" name="idAccount">
      <div id="emailHelp6" class="form-text" style="color: red">${message6}</div>
    </div>
    <button type="submit" class="btn btn-primary btn-block">Thêm</button>
  </form>
</div>
<div>${message}</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</html>
