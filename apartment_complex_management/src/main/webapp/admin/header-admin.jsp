<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand-lg bg-white px-4 mt-2" style="padding: 0">
    <div class="container-fluid ">
        <div>
            <a class="navbar-brand" href="#">
                <img src="https://png.pngtree.com/png-vector/20190327/ourlarge/pngtree-apartment-building-business-logo-design-png-image_880947.jpg"
                     height="130px" width="200px" alt=""/></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div style="margin: 0 auto">
            <div class="collapse navbar-collapse ">
                <nav>
                    <ul>
                        <li><a href="/apartment-admin" style="text-decoration: none; color: rgb(119,119,119);">Trang Chủ</a>
                        </li>
                        <li><a href="/apartment-admin?action=apartment"
                               style="text-decoration: none; color: rgb(119,119,119);">Căn hộ</a></li>
                        <li><a href="/apartment-admin?action=facility"
                               style="text-decoration: none; color: rgb(119,119,119);">Dịch vụ</a></li>
                        <li><a href="/apartment-admin" style="text-decoration: none; color: rgb(119,119,119);">Thông báo</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div style="left: 0">
            <div class="collapse navbar-collapse ">
                <form id="search-box">
                    <input type="text" id="search-text" placeholder="Bạn muốn tìm gì ?" required>
                    <button id="search-btn"><i class="fa-solid fa-magnifying-glass"
                                               style="color: white"></i>
                    </button>
                </form>
                <ul style="margin: 0;font-weight: 500; font-size: 15px;color: rgb(119,119,119)">
                    <span-1 style="margin-right: 15px">
                        <a href="/apartment" style="color: rgb(119,119,119); text-decoration: none"><i
                                class="fa-solid fa-right-to-bracket" style="font-size: 20px"></i> Đăng Xuất</a>
                    </span-1>
                </ul>
            </div>

        </div>
    </div>
</nav>
<div style="background: rgb(246,245,243) ">
    <div class="container px-0 py-3 mt-2">
        <div class="row" style="display: flex;justify-content: space-between;">
            <div class="col-md-4 col-sm-6" style="width: 12%">
                <div class="d-flex justify-content-center ">

                    <img src="https://a0.muscache.com/pictures/ed8b9e47-609b-44c2-9768-33e6a22eccb2.jpg" height="23"
                         width="23" alt=""/>
                </div>
                <div class="d-flex justify-content-center mt-2">
                    <a href="/apartment-admin?action=studio" style="text-decoration: none; color: black"><h6 class=" px-2">
                        Phòng Studio</h6></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6" style="width: 12%">
                <div class="d-flex justify-content-center">

                    <img src="https://a0.muscache.com/pictures/78ba8486-6ba6-4a43-a56d-f556189193da.jpg" height="23"
                         width="23" alt=""/>
                </div>
                <div class="d-flex justify-content-center mt-2">
                    <a href="/apartment-admin?action=family" style="text-decoration: none; color: black"><h6 class=" px-2">
                        Phòng Family</h6></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6" style="width: 12%">
                <div class="d-flex justify-content-center">

                    <img src="https://a0.muscache.com/pictures/7630c83f-96a8-4232-9a10-0398661e2e6f.jpg" height="23"
                         width="23" alt=""/>
                </div>
                <div class="d-flex justify-content-center mt-2">
                    <a href="/apartment-admin?action=officetel" style="text-decoration: none; color: black"><h6 class=" px-2">
                        Phòng Officetel</h6></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6" style="width: 12%">
                <div class="d-flex justify-content-center ">

                    <img src="https://a0.muscache.com/pictures/ed8b9e47-609b-44c2-9768-33e6a22eccb2.jpg" height="23"
                         width="23" alt=""/>
                </div>
                <div class="d-flex justify-content-center mt-2">
                    <a href="/account-admin?action=listAccount" style="text-decoration: none; color: black"><h6 class=" px-2">
                        Tài khoản</h6></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6" style="width: 12%">
                <div class="d-flex justify-content-center">

                    <img src="https://a0.muscache.com/pictures/78ba8486-6ba6-4a43-a56d-f556189193da.jpg" height="23"
                         width="23" alt=""/>
                </div>
                <div class="d-flex justify-content-center mt-2">
                    <a href="/apartment-admin?action=family" style="text-decoration: none; color: black"><h6 class=" px-2">
                        Nhân viên</h6></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6" style="width: 12%">
                <div class="d-flex justify-content-center">

                    <img src="https://a0.muscache.com/pictures/7630c83f-96a8-4232-9a10-0398661e2e6f.jpg" height="23"
                         width="23" alt=""/>
                </div>
                <div class="d-flex justify-content-center mt-2">
                    <a href="/apartment-admin?action=officetel" style="text-decoration: none; color: black"><h6 class=" px-2">
                        Khách hàng</h6></a>
                </div>
            </div>

            <div class="col-md-4 col-sm-6" style="width: 12%">
                <div class="d-flex justify-content-center">

                    <img src="https://a0.muscache.com/pictures/7630c83f-96a8-4232-9a10-0398661e2e6f.jpg" height="23"
                         width="23" alt=""/>
                </div>
                <div class="d-flex justify-content-center mt-2">
                    <a href="/apartment-admin?action=officetel" style="text-decoration: none; color: black"><h6 class=" px-2">
                        Hợp đồng</h6></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6" style="width: 12%">
                <div class="d-flex justify-content-center">

                    <img src="https://a0.muscache.com/pictures/7630c83f-96a8-4232-9a10-0398661e2e6f.jpg" height="23"
                         width="23" alt=""/>
                </div>
                <div class="d-flex justify-content-center mt-2">
                    <a href="/apartment-admin?action=officetel" style="text-decoration: none; color: black"><h6 class=" px-2">
                        Căn hộ</h6></a>
                </div>
            </div>
        </div>
    </div>
</div>