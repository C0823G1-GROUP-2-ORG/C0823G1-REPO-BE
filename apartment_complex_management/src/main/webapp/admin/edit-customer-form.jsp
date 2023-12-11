<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
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
</head>
<body>
<jsp:include page="header-admin.jsp"/>
<section>
    <div class="container flex" style="width: 80%; height: 130%; padding: 4.5em">
        <form method="post" style="width: 100%; position: relative">
            <h1 style="color: #f44566; text-align: center">Chỉnh sửa khách hàng</h1>
            <div class="form-group">
                <label class="form-label" for="name">Tên khách hàng:</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Nhập họ tên"
                       value="${customer.name}" pattern="[^\d]+[\p{L}\s]+">
            </div>
            <div class="form-group">
                <label class="form-label" for="dateOfBirth">Ngày sinh:</label>
                <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth" placeholder="YYYY/MM/DD"
                       pattern="^\d{4}/(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])" value="${customer.dateOfBirth}" onchange="checkAge()"><br>
                <span id="ageError" style="color: red;"></span>
            </div>
            <div class="form-group">
                <label class="form-label" for="gender">Giới tính:</label>
                <input type="radio" id="gender" name="gender" value="male"> Nam
                <input type="radio" id="gender1" name="gender" value="female"> Nữ
                <input type="radio" id="gender2" name="gender" value="other"> Khác
            </div>
            <div class="form-group">
                <label class="form-label" for="numberCMND">CCCD:</label>
                <input type="text" class="form-control" id="numberCMND" name="numberCMND"
                       placeholder="Nhập số CMT/CCCD 9-12 số"
                       pattern="^([0-9]{9}|[0-9]{12})+$" minlength="9" maxlength="12" value="${customer.numberCMND}">
            </div>
            <div class="form-group">
                <label class="form-label" for="numberPhone">SĐT:</label>
                <input type="text" class="form-control" id="numberPhone" name="numberPhone"
                       placeholder="Nhập số điện thoại" minlength="9" value="${customer.numberPhone}">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1" class="form-label">Email:</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                       name="email" placeholder="name@gmail.com" value="${customer.email}">
                <div id="emailHelp" class="form-text">Chúng tôi sẽ không bao giờ chia sẻ email của bạn với bất kỳ ai
                    khác.
                </div>
            </div>
            <div class="form-group">
                <label class="form-label" for="address">Địa chỉ:</label>
                <input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ"
                       value="${customer.address}">
            </div>
            <div class="form-group">
                <label class="form-label" for="idAccount">Mã tài khoản:</label>
                <input type="number" class="form-control" id="idAccount" name="idAccount" value="${customer.idAccount}">
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Xác nhận thêm</label>
            </div>
            <br>
            <br>
            <input type="submit" class="btn btn-primary" value="Lưu thay đổi"
                   style="width: 45%; position: absolute;bottom: 0">
            <a href="/customer-servlet?action=listCustomer" class="btn"
               style="right: 0;width: 45%; position: absolute;bottom: 0; background-color: #f44566; color: white;">Quay
                lại trang trước</a>
        </form>
    </div>
</section>
</body>
<script>
    function checkAge() {
        let dateOfBirth = document.getElementById("dateOfBirth").value;
        let currentDate = new Date();
        let selectedDate = new Date(dateOfBirth);

        let age = currentDate.getFullYear() - selectedDate.getFullYear();

        if (currentDate.getMonth() < selectedDate.getMonth() ||
            (currentDate.getMonth() === selectedDate.getMonth() && currentDate.getDate() < selectedDate.getDate())) {
            age--;
        }

        if (age < 18) {
            document.getElementById("ageError").textContent = "Bạn phải lớn hơn 18 tuổi.";
        } else {
            document.getElementById("ageError").textContent = "";
        }
    }
</script>
</html>
