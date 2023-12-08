<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Hello Apartment</title>
  <link rel="stylesheet" href="css/main%20(1).css">
  <link rel="stylesheet" href="css/animation%20(1).css">
  <link rel="stylesheet" href="css/footer.css">
  <link rel="stylesheet" href="css/styleTC.css">
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
<jsp:include page="apartment/header.jsp" />
<div style="margin-bottom: 100px">
  <div id="carouselExampleFade" class="carousel slide carousel-fade custom-carousel" data-bs-ride="carousel">
    <div class="carousel-inner" data-bs-interval="1000">
      <div class="carousel-item active">
        <img src="https://th.bing.com/th/id/R.723e80a7067153d5e2a9ad898e36f038?rik=Ybcb1ysOA41XPQ&riu=http%3a%2f%2f3.bp.blogspot.com%2f-uyGWbvm93WA%2fVfmLLWYKsuI%2fAAAAAAAABjQ%2ffy-EYSJnYqw%2fs1600%2fcan-ho-chung-cu.jpg&ehk=%2bqAbF2EAVLla%2fc0v1nZfqpy2dbqDfuqEix%2f4YeVH%2b8o%3d&risl=&pid=ImgRaw&r=0" class="d-block w-100 height-image" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://toplist.vn/images/800px/top-10-khu-chung-cu-cao-cap-dang-song-nhat-o-ha-noi-110360.jpg" class="d-block w-100 height-image" alt="...">
      </div>
      <div class="carousel-item">
        <img src="https://buyingpropertysingapore.com/wp-content/uploads/Vue-8-Residence-Condo-Cabana-Garden.png" class="d-block w-100 height-image" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  <section class="explore">
    <div style="padding-left: 100px;padding-right: 100px">
      <h2 style="margin-bottom: 30px; text-align: center">SỨ MỆNH APARTMENT BUSINESS</h2>
      <div class="row">
        <div class="col-md-6">
          <ul>
            <li>
              ➡️ Hỗ trợ - kết nối các khách hàng đang có nhu cầu tìm kiếm: Căn hộ, phòng chung cư, văn
              phòng,
              nhà nguyên căn và mặt bằng kinh doanh: NHANH - GIÁ TỐT- CHẤT LƯỢNG.
            </li>
            <li>
              ➡️ Là người bạn tri kỷ với các CĐT có tài sản cần khai thác. Haviland sẽ giúp các CĐT an tâm
              trong việc vận hành tài sản với phương châm: TIẾT KIỆM THỜI GIAN - AN TÂM LỢI NHUẬN - SỨC
              KHỎE
              VỮNG BỀN!
            </li>
            <li>
              ➡️ Trách nhiệm Công đồng xã hội:
              <ul>
                <li>Góp phần xây dựng các mô hình cư trú văn minh, hiện đại và đảm bảo an ninh.</li>
                <li>Tạo ra giá trị dòng tiền với các mô hình kinh doanh BĐS, tiến tới thành lập hệ sinh
                  thái
                  mua bán BĐS dòng tiền.
                </li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="col-md-6">
          <img src="https://marketingtoancau.com/files/common/cach-thuc-de-mot-thuong-hieu-co-tam-nhin-su-menh-887c2.jpg" alt="IMG" class="img-fluid">
        </div>
      </div>
    </div>
  </section>
  <div class="text-center p-3 custom-bg e" style="background-color: #f44566">
    <h3 class="text-uppercase text-light explore-1">
      <p>Chất lượng dịch vụ khách hàng gần với hoàn hảo là tư tưởng</p> cốt lõi quan trọng nhất của Apartment
      Business.
    </h3>
    <div class="text-light explore-2">
      <p>Mọi cam kết về dịch vụ khách hàng từ Haviland luôn được thực hiện ở mức cao nhất. Haviland luôn đổi mới
        sáng tạo
        và phát triển về</p> chất lượng dịch vụ, về sản phẩm nhằm mang đến trải nghiệm dịch vụ khách hàng gần
      như hoàn hảo.
    </div>
  </div>
  <div>
    <img src="https://th.bing.com/th/id/OIP.UXn4OYinWONRx5C3pu_lIAHaE8?rs=1&pid=ImgDetMain" alt="IMG" class="w-100">
  </div>
</div>
<jsp:include page="apartment/footer.jsp" />
</body>
</html>