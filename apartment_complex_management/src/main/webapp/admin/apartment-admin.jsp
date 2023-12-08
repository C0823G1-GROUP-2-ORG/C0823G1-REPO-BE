<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hello Apartment</title>
    <link rel="stylesheet" href="../css/main (1).css">
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
<jsp:include page="header-admin.jsp" />
<main class="container-1">
    <div class="row">
        <div class="col-sm-4">
            <div class="card">
                <div class="container-1">
                    <div class="card__container">
                        <article class="card__article">
                            <img src="https://images.cenhomes.vn/2020/03/1585033148-can-ho-mau-an-land-complex.jpg"
                                 class="card__img" alt="">
                            <div class="card__data">
                                <span class="card__description" > Tầng 1  </span>
                                <span class="card__description"  > APARTMENT BUSINESS </span>
                                <a href="/apartment-admin?action=floor1" class="card__button"> Tìm hiểu thêm
                                </a>
                            </div>
                        </article>
                        <div class="card-body ">
                            <h5 class="card-title">Tầng 1</h5>
                            <p class="card-text">Nội thất khá đầy đủ, mức giá trung bình</p>
                            <p class="_tyxjp1">Đánh giá: 3.5<i class="fa-solid fa-star"></i></p>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star-half-stroke" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-regular fa-star" style="color: #f44566; font-size: 1.5em"></i>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="container-1">
                    <div class="card__container">
                        <article class="card__article">
                            <img src="https://images.cenhomes.vn/2020/03/1585033149-can-ho-mau-cosmo-tay-ho.jpg"
                                 class="card__img" alt="">
                            <div class="card__data">
                                <span class="card__description" > Tầng 2 </span>
                                <span class="card__description"  > APARTMENT BUSINESS </span>
                                <a href="/apartment-admin?action=floor2" class="card__button"> Tìm hiểu thêm
                                </a>
                            </div>
                        </article>
                        <div class="card-body ">
                            <h5 class="card-title">Tầng 2</h5>
                            <p class="card-text">Nội thất khá đầy đủ, mức giá trung bình</p>
                            <p class="_tyxjp1">Đánh giá: 3.5<i class="fa-solid fa-star"></i></p>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star-half-stroke" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-regular fa-star" style="color: #f44566; font-size: 1.5em"></i>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="container-1">
                    <div class="card__container">
                        <article class="card__article">
                            <img src="https://images.cenhomes.vn/2020/03/1585033149-can-ho-mau-charmington-iris.jpg"
                                 class="card__img" alt="">
                            <div class="card__data">
                                <span class="card__description"  > Tầng 3</span>
                                <span class="card__description"  > APARTMENT BUSINESS </span>
                                <a href="/apartment-admin?action=floor3" class="card__button"> Tìm hiểu thêm
                                </a>
                            </div>
                        </article>
                        <div class="card-body ">
                            <h5 class="card-title">Tầng 3</h5>
                            <p class="card-text">Đầy đủ tiện nghi, không gian thoáng mát</p>
                            <p class="_tyxjp1">Đánh giá: 4.0<i class="fa-solid fa-star"></i></p>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-regular fa-star" style="color: #f44566; font-size: 1.5em"></i>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <div class="card">
                <div class="container-1">
                    <div class="card__container">
                        <article class="card__article">
                            <img src="https://images.cenhomes.vn/2020/03/1585033152-can-ho-mau-ecolife-capital.jpg"
                                 class="card__img" alt="">
                            <div class="card__data">
                                <span class="card__description" > Tầng 4  </span>
                                <span class="card__description"  > APARTMENT BUSINESS </span>
                                <a href="/apartment-admin?action=floor4" class="card__button"> Tìm hiểu thêm
                                </a>
                            </div>
                        </article>
                        <div class="card-body ">
                            <h5 class="card-title">Tầng 4</h5>
                            <p class="card-text">Đầy đủ tiện nghi, không gian thoáng mát</p>
                            <p class="_tyxjp1">Đánh giá: 4.5<i class="fa-solid fa-star"></i></p>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star-half-stroke" style="color: #f44566; font-size: 1.5em"></i>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="container-1">
                    <div class="card__container">
                        <article class="card__article">
                            <img src="https://images.cenhomes.vn/2020/03/1585033152-can-ho-mau-eurowindow-river-park.jpg"
                                 class="card__img" alt="">
                            <div class="card__data">
                                <span class="card__description" > Tầng 5 </span>
                                <span class="card__description"  > APARTMENT BUSINESS </span>
                                <a href="/apartment-admin?action=floor5" class="card__button"> Tìm hiểu thêm
                                </a>
                            </div>
                        </article>
                        <div class="card-body ">
                            <h5 class="card-title">Tầng 5</h5>
                            <p class="card-text">Nội thất hiện đại nhất, có thể nhìn toàn cảnh thành phố </p>
                            <p class="_tyxjp1">Đánh giá: 4.5<i class="fa-solid fa-star"></i></p>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star-half-stroke" style="color: #f44566; font-size: 1.5em"></i>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="container-1">
                    <div class="card__container">
                        <article class="card__article">
                            <img src="https://images.cenhomes.vn/2020/03/1585033153-can-ho-mau-florence.jpg"
                                 class="card__img" alt="">
                            <div class="card__data">
                                <span class="card__description"  > Tầng 6</span>
                                <span class="card__description"  > APARTMENT BUSINESS </span>
                                <a href="/apartment-admin?action=floor6" class="card__button"> Tìm hiểu thêm
                                </a>
                            </div>
                        </article>
                        <div class="card-body ">
                            <h5 class="card-title">Tầng 6</h5>
                            <p class="card-text">Nội thất hiện đại nhất, có thể nhìn toàn cảnh thành phố </p>
                            <p class="_tyxjp1">Đánh giá: 5.0<i class="fa-solid fa-star"></i></p>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                            <i class="fa-solid fa-star" style="color: #f44566; font-size: 1.5em"></i>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</main>
<jsp:include page="footer-admin.jsp" />
</body>
</html>