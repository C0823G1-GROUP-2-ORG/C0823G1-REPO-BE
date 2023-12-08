<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 06/12/2023
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    <title>Title</title>--%>
    <%--    <meta charset="UTF-8">--%>
    <%--    <title>Tin Tức</title>--%>
    <%--    <link rel="stylesheet" href="main%20(1).css">--%>
    <%--    <link rel="stylesheet" href="animation%20(1).css">--%>
    <%--    --%>


    <meta charset="UTF-8">
    <title>Hello Apartment</title>
    <link rel="stylesheet" href="../css/main%20(1).css">
    <link rel="stylesheet" href="../css/animation%20(1).css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="stylesheet" href="font-awesome.min.css">

    <link rel="stylesheet" href="linearicons.css">
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
<jsp:include page="header-admin.jsp"/>
<main class="container">
    <section id="explore" class="explore">
        <div class="container">
            <div class="section-header">
                <h2>Chi phí dịch vụ chung cư</h2>
                <p>Chăm sóc khách hàng là tất cả những gì cần thiết mà doanh nghiệp cần phải làm nhằm thỏa mãn mong đợi và giải quyết nhu cầu của khách hàng, hoặc mang đến họ những trải nghiệm tốt nhất.</p>
                <p>Dưới đây là một số câu nói về chăm sóc khách hàng được đúc kết từ những người nổi tiếng có kinh nghiệm trong lĩnh vực chăm sóc khách hàng.</p>
            </div><!--/.section-header-->
            <div class="explore-content">
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <div class="single-explore-item">
                            <div class="single-explore-img">
                                <img src="https://fedic.vn/wp-content/uploads/2018/09/Ham-do-xe-chung-cu.jpg"
                                     style="height: 270px" alt="">
                            </div>
                            <div class="single-explore-txt bg-theme-3">
                                <h4>Tầng hầm đổ xe chung cư</h4>
                                <p class="explore-rating-price">
                                    <span class="explore-rating">5.0</span>
                                    <a href="#">Xếp Loại</a>
                                    <span class="explore-price-box">
											Giá:
											<span class="explore-price">500.000đ</span>
										</span>
                                    <a href="#">Xe Hơi</a>
                                </p>
                                <div class="explore-person">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <p>Đối với các căn hộ, phí gửi xe sẽ thay đổi tùy theo loại phương tiện giao
                                                thông bạn đang sử dụng và chỗ đậu xe (trong tầng hầm hoặc bên ngoài tòa
                                                nhà). Một số tòa nhà sẽ có nơi cho bạn đỗ xe hơi ngoài trời. Chênh lệch
                                                khoảng 500.000 đồng. </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="explore-open-close-part">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <button class="close-btn" onclick="window.location.href='#'">Xem chi tiết
                                            </button>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="explore-map-icon">
                                                <a href="#"><i data-feather="map-pin"></i></a>
                                                <a href="#"><i data-feather="upload"></i></a>
                                                <a href="#"><i data-feather="heart"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="single-explore-item">
                            <div class="single-explore-img">
                                <img src="https://fedic.vn/wp-content/uploads/2018/09/Chi-phi-chung-cu-1-1.jpg"
                                     style="height: 270px" alt="">
                            </div>
                            <div class="single-explore-txt bg-theme-3">
                                <h4>Phí quản lý chung cư</h4>
                                <p class="explore-rating-price">
                                    <span class="explore-rating">5.0</span>
                                    <a href="#">Xếp Loại</a>
                                    <span class="explore-price-box">
											Giá:
											<span class="explore-price">300.000đ</span>
										</span>
                                    <a href="#">Xung quanh tòa nhà</a>
                                </p>
                                <div class="explore-person">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <p>Hiện tại, phí quản lý chung cư ở mức trung bình là 8.000 VNĐ/m2, cao cấp
                                                có
                                                thể rơi vào tầm hơn 12.000 VNĐ/m2. Về vấn đề này, khi mua căn hộ bạn nên
                                                trao đổi cụ thể để biết được nghĩa vụ và quyền lợi của mình, khi trở
                                                thành
                                                thành viên sinh sống lâu dài tại chung cư.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="explore-open-close-part">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <button class="close-btn" onclick="window.location.href='#'">Xem chi tiết
                                            </button>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="explore-map-icon">
                                                <a href="#"><i data-feather="map-pin"></i></a>
                                                <a href="#"><i data-feather="upload"></i></a>
                                                <a href="#"><i data-feather="heart"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                        <div class="single-explore-item">
                            <div class="single-explore-img">
                                <img src="https://dongduongvietnam.vn/wp-content/uploads/2021/01/dich-vu-ve-sinh-nha-o.jpg"
                                     style="height: 270px" alt="">
                            </div>
                            <div class="single-explore-txt bg-theme-3">
                                <h4>Phí dọn vệ sinh căn hộ</h4>
                                <p class="explore-rating-price">
                                    <span class="explore-rating">5.0</span>
                                    <a href="#">Xếp Loại</a>
                                    <span class="explore-price-box">
											Giá:
											<span class="explore-price">180.000đ</span>
										</span>
                                    <a href="#">Căn hộ</a>
                                </p>
                                <div class="explore-person">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <p>Đây là dịch vụ thuê nhân viên dọn dẹp căn hộ theo giờ. Phí dọn dẹp vệ
                                                sinh
                                                theo giờ thường rơi vào tầm khoảng 55.000 đến 60.000 đồng / giờ và một
                                                số
                                                phụ phí như phí gửi xe dành cho nhân viên, xà bông rửa bát,… nhân viên
                                                dọn dẹp căn hộ theo giờ. </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="explore-open-close-part">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <button class="close-btn" onclick="window.location.href='#'">Xem chi tiết
                                            </button>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="explore-map-icon">
                                                <a href="#"><i data-feather="map-pin"></i></a>
                                                <a href="#"><i data-feather="upload"></i></a>
                                                <a href="#"><i data-feather="heart"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="single-explore-item">
                            <div class="single-explore-img">
                                <img src="data:image/jpeg;base64,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"
                                     alt="explore image"
                                     style="width: 100%; height: 270px">
                            </div>
                            <div class="single-explore-txt bg-theme-2">
                                <h4>Khu nghỉ dưỡng ở tầng thượng</h4>
                                <p class="explore-rating-price">
                                    <span class="explore-rating">4.5</span>
                                    <a href="#">Xếp loại</a>
                                    <span class="explore-price-box">
											Hình thức
										</span>
                                    <a href="#">Khu nghĩ dưỡng</a>
                                </p>
                                <div class="explore-person">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <p>
                                                Apartment Business đẳng cấp và hiện đại giữa Đà Nẵng - tụ điểm vui chơi,
                                                giải trí và nghỉ dưỡng sang trọng hàng đầu không thể bỏ lỡ. Hãy đến và
                                                tận
                                                hưởng bạn nhé. Rất hân hạnh được đón tiếp. Rất hân hạnh được đón tiếp.
                                                Đã qua đào tạo tư vấn cũng như những kỹ năng cần thiết.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="explore-open-close-part">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <button class="close-btn open-btn" onclick="window.location.href='#'">Xem
                                                chi
                                                tiết
                                            </button>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="explore-map-icon">
                                                <a href="#"><i data-feather="map-pin"></i></a>
                                                <a href="#"><i data-feather="upload"></i></a>
                                                <a href="#"><i data-feather="heart"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="single-explore-item">
                            <div class="single-explore-img">
                                <img src="https://kinglandhanoi.vn/wp-content/uploads/2023/07/bao-tri-he-thong-thang-may.jpg"
                                     style="width: 100%; height: 270px" alt="">
                            </div>
                            <div class="single-explore-txt bg-theme-2">
                                <h4>Phí bảo trì, bảo dưỡng</h4>
                                <p class="explore-rating-price">
                                    <span class="explore-rating">4.5</span>
                                    <a href="#">Xếp loại</a>
                                    <span class="explore-price-box">
											Hình thức
										</span>
                                    <a href="#">Hàng tháng</a>
                                </p>
                                <div class="explore-person">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <p>
                                                Khác với phí quản lý chung cư, người sử dụng chung cư phải nộp phí hàng
                                                tháng thì đối với phí bảo trì chung cư, người sử dụng chung cư chỉ cần
                                                nộp
                                                cho ban quản lý toà nhà chung cư một lần tại thời điểm ký kết Hợp đồng
                                                mua
                                                bán/ thuê căn hộ chung cư.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="explore-open-close-part">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <button class="close-btn open-btn" onclick="window.location.href='#'">Xem
                                                chi
                                                tiết
                                            </button>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="explore-map-icon">
                                                <a href="#"><i data-feather="map-pin"></i></a>
                                                <a href="#"><i data-feather="upload"></i></a>
                                                <a href="#"><i data-feather="heart"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="single-explore-item">
                            <div class="single-explore-img">
                                <img src="http://giupviecgiaphu.com/upload/images/d%E1%BB%8Bch-v%E1%BB%A5%20tr%C3%B4ng-tr%E1%BA%BB-gi%C3%BAp-vi%E1%BB%87c-gia-ph%C3%BA.jpg"
                                     style="width: 100%; height: 270px" alt="">
                            </div>
                            <div class="single-explore-txt bg-theme-2">
                                <h4>Dịch vụ trông trẻ tại căn hộ</h4>
                                <p class="explore-rating-price">
                                    <span class="explore-rating">4.5</span>
                                    <a href="#">Xếp loại</a>
                                    <span class="explore-price-box">
											Hình thức
										</span>
                                    <a href="#">Hàng ngày</a>
                                </p>
                                <div class="explore-person">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <p>
                                                Để đáp ứng những yêu cầu của gia đình khi tìm một người giúp việc như ý
                                                trung tâm giúp việc GIA PHÚ là một những địa chỉ chuyên nghiệp cung cấp
                                                người giúp việc trông trẻ trên địa bàn thành phố Hồ Chí Minh, với đội
                                                ngũ
                                                người giúp việc chuyên nghiệp.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="explore-open-close-part">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <button class="close-btn open-btn" onclick="window.location.href='#'">Xem
                                                chi
                                                tiết
                                            </button>
                                        </div>
                                        <div class="col-sm-7">
                                            <div class="explore-map-icon">
                                                <a href="#"><i data-feather="map-pin"></i></a>
                                                <a href="#"><i data-feather="upload"></i></a>
                                                <a href="#"><i data-feather="heart"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

</body>
</html>
