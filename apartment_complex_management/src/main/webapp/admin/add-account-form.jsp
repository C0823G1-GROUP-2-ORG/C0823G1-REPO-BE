<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 07/12/2023
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
<section>
    <div class="container flex" style="width: 70%; padding: 4.5em">
        <form style="width: 100%; position: relative" method="post">
            <h1 style="color: #f44566; text-align: center">Điền thông tin tài khoản:</h1>
            <div class="mb-3">
                Tên tài khoản
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="useName">
                <div id="emailHelp1" class="form-text" style="color: red">${message1}</div>
            </div>
            <div class="mb-3">
                Mật khẩu
                <input type="text" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" name="password">
                <div id="emailHelp2" class="form-text" style="color: red">${message2}</div>
            </div>
            <div class="mb-3">
                Loại tài khoản
                <label>
                    <select name="idAccountType">
                        <option value="1">Khách hàng</option>
                        <option value="2">Nhân viên</option>
                        <option value="3">Admin</option>
                    </select>
                </label>
            </div>
            <div id="emailHelp4" class="form-text" style="font-size: 15px">${result}</div>

            <input type="submit" class="btn btn-primary" value="Thêm tài khoản" style="width: 45%; position: absolute;bottom: 0">
            <a href="/account-admin?action=listAccount" class="btn" style="right: 0;width: 45%; position: absolute;bottom: 0; background-color: #f44566; color: white;">Quay lại trang trước</a>
        </form>
    </div>
</section>
</body>
</html>
