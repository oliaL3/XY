<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>音乐分享平台</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #87CEEB, #FFB6C1);
        }
        .navbar {
            background-color:linear-gradient(to right, #87CEEB, #FFB6C1);
        }
        .navbar-brand img {
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }
        .nav-front-set :hover{
            background-color: #FFB6C1;
            font-size: 17px;
        }
        .welcome-section {
            padding: 100px 0;
            text-align: center;
            color: #fff;
        }
        .swiper-container {
            width: 500px;
            height: 600px;
        }
        .swiper-slide {
            background-color: linear-gradient(to right, #87CEEB, #FFB6C1);
            text-align: center;
            font-size: 24px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
            box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.1); /* 添加阴影效果 */

        }
        .swiper-slide:hover{
            opacity: 0.8; /* 鼠标悬停时，图片透明度降低 */;
        }
        .show{
            display: flex;
            justify-content: center;
            align-items: center;
        }

    </style>
</head>
<body>
<!-- 导航栏 -->
<nav class="navbar navbar-expand-lg navbar-light shadow-sm p-3 mb-5 bg-body-tertiary rounded">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="./images/logo.png" alt="Logo">
            享乐
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto nav-front-set">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/index_trun_register">登录/注册</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">音乐分享</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">音乐故事</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">音乐广场</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        关于我们
                    </a>
                    <ul style="background-color: #FFB6C1;font-size: 16px;:hover{font-size: 17px;}"  class="dropdown-menu " aria-labelledby="navbarDropdown">
                        <li ><a class="dropdown-item" href="#">公司简介</a></li>
                        <li><a class="dropdown-item" href="#">团队介绍</a></li>
                        <li><a class="dropdown-item" href="#">联系我们</a></li>
                    </ul>
                </li>

            </ul>

        </div>
    </div>
</nav>

<!-- 欢迎板块 -->
<div class="welcome-section">
    <h1>欢迎来到享乐</h1>
    <p>在这里，你可以分享你喜欢的音乐，与他人交流音乐心得。</p>
    <a href="#" class="btn btn-primary btn-lg">立即体验</a>
</div>

<!-- 功能介绍分区（轮播图形式） -->
<div style="overflow: hidden; " class="container feature-section show">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div  class="swiper-slide ">
                <h2>音乐分享</h2>
                <p>在这里，你可以分享你喜欢的音乐，与他人交流音乐心得。</p>
            </div>
            <div class="swiper-slide">
                <h2>音乐故事</h2>
                <p>每一首音乐背后都有一个故事，分享你的音乐故事，让更多人了解音乐的魅力。</p>
            </div>
            <div class="swiper-slide">
                <h2>音乐广场</h2>
                <p>音乐广场是一个开放的平台，你可以在这里发现更多有趣的音乐和音乐人。</p>
            </div>
        </div>


    </div>

</div>
<div style="height: 50px;">

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 3,
        spaceBetween: 30,
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        autoplay: true,
        speed: 1000,
        effect: 'fade',
        fadeEffect: {
            crossFade: true,
        }
    });
</script>
</body>
</html>
