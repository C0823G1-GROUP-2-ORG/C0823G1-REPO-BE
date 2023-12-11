<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 07/12/2023
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script>
        function displayToast(message, color) {
            document.getElementById("toastContent").innerHTML = message;
            document.getElementById("liveToast").style.background = color;
            let myAlert = document.getElementById('liveToast');//select id of toast
            let bsAlert = new bootstrap.Toast(myAlert);//inizialize it
            bsAlert.show();//show it
        }
    </script>
</head>
<body>
<section>
    <div class="container flex" style="width: 70%; padding: 4.5em">
        <form style="width: 100%; position: relative" method="post">
            <h1 style="color: #f44566; text-align: center">Điền thông tin của bạn:</h1>
            <div class="mb-3">
                Họ và tên:
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name">
                <div id="emailHelp1" class="form-text" style="color: red">${message1}</div>
            </div>
            <div class="mb-3">
                Số điện thoại:
                <input type="text" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" name="phone">
                <div id="emailHelp2" class="form-text" style="color: red">${message2}</div>
            </div>
            <div class="mb-3">
                Email:
                <input type="text" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp" name="email">
                <div id="emailHelp3" class="form-text" style="color: red">${message3}</div>
            </div>
            <div class="mb-3">
                Ngày xem căn hộ:
                <input type="text" class="form-control" id="exampleInputEmail4" aria-describedby="emailHelp" name="date">
                <div id="emailHelp4" class="form-text" style="color: red">${message4}</div>
            </div>
            <input type="submit" class="btn btn-primary" value="Đặt lịch xem" style="width: 45%; position: absolute;bottom: 0">
            <a href="/apartment" class="btn" style="right: 0;width: 45%; position: absolute;bottom: 0; background-color: #f44566; color: white;">Quay lại trang chủ</a>
        </form>
    </div>
    <div class="position-fixed top-0 end-5 p-3" style="z-index: 11;margin-left: 500px">
        <div id="liveToast" style="width: 230px; color: white; background:lightgreen ;border-radius:20%/20%;" class="toast"
             role="dialog" aria-live="assertive" aria-atomic="true">
            <div class="toast-body">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="30px" height="30px">
                    <g id="surface1_4_">
                        <path style="fill:#4CAF50;"
                              d="M44,24c0,11.045-8.955,20-20,20S4,35.045,4,24S12.955,4,24,4S44,12.955,44,24z"></path>
                        <path style="fill:#CCFF90;"
                              d="M34.602,14.602L21,28.199l-5.602-5.598l-2.797,2.797L21,33.801l16.398-16.402L34.602,14.602z"></path>
                    </g>
                </svg>
                <span id="toastContent">Nội dung hiển thị</span>
            </div>
        </div>
    </div>
</section>
<script>
    <c:if test="${result!=null}">
    displayToast("Đã đặt lịch thành công! <br>" +
        "<pre style= 'color: darkorange'>  Hãy chờ phản hồi từ chúng tôi!</pre>", "green")
    </c:if>
</script>
</body>
</html>
