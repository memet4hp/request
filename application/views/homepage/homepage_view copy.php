<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="<?php echo base_url(); ?>assets/img/icon.png" type="image/gif">
    <title>Welcome to gomaintenance</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap"
        rel="stylesheet" />
    <link
        href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap"
        rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap"
        rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

</head>

<style>
.btn-cyan {
    color: #fff;
    background-color: #106391;
    font-weight: 600;
    border-color: #106391;
    border-radius: 15px;
}

body {
    height: 100%;
    background: #106391;
}

.btn-hijau {
    color: #fff;
    background-color: #0d3348;
    border-width: 2px;
    border-color: #fff;
    border-radius: 5px;
    font-weight: bold;
    padding: 8px;
    display: block;
}

.btn-hijau:hover {
    color: #0d3348;
    background-color: #fff;
    border-width: 4px;
    border-color: #0d3348;
}

.btn-login {
    border-radius: 15px;
    color: #fff;
    padding: 8px 10px;
    background-color: #106391;
    font-weight: 600;
    border-color: #106391;
    margin: 5px;
}

.btn-login:hover {
    color: #fff;
    background-color: #106391;
    border-color: #106391;
}

.block {
    display: block;
    width: 100%;
    border: none;
    background-color: #04AA6D;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
    text-align: center;
    animation: forwards;
}

.fade-in {
    animation: fadeIn 7s;
}

.display-1 {
    font-size: calc(1.625rem + 1.5vw);
    /* font-weight: 300; */
    line-height: 1.2;
}

@media (min-width: 1200px) {
    .display-1 {
        font-size: 3rem;
    }
}

.list {
    font-size: 18px;
    text-align: justify;
}

.judul {
    font-size: 22px;
    font-weight: bold;

}

.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
}

.home {
    font-weight: 20px;
    color: #106391;
    font-weight: bold;
}
</style>



<body id="page-top">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav">
        <div class="container px-5">
            <img style="margin-right: 15px ;" src="<?php echo base_url(); ?>assets/img/logo.png" width="160"
                height="auto">
            <img style="margin-right: 15px ;" src="<?php echo base_url(); ?>assets/img/ss.png" width="132"
                height="auto">
            <img src="<?php echo base_url(); ?>assets/img/logo-dia.png" width="35" height="auto"><button
                class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <i class="bi-list"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                    <li class="nav-item"><a class=" me-lg-1 home" href="homepage">Home</a></li>
                </ul>
                <a class="btn btn-sm btn-login" href="<?php echo base_url('admin') ?>" role="button">
                    <b>Administrator</b>
                </a>
                </button>
            </div>
        </div>
    </nav>
    <!-- Mashead header-->
    <header class="masthead">


        <div class="container px-5">
            <div class="row gx-2 align-items-center">
                <div class="col-lg-8">

                    <div class="mb-0 mb-lg-0 text-center text-lg-start">
                        <h2 class="display-1 lh-1 mb-3 ">Selamat Datang di <br>gomaintenance</h2>
                        <p class="judul"> Aturan Penggunaan.</p>

                        <ul class="list">
                            <li>Setiap staff bisa mengisi order maintenance ini lebih dari satu kali.
                            </li>
                            <li>Sangat disarankan untuk menggunakan bahasa yang baik dan sopan. </li>
                            <li>Untuk pengisian gomaintenance bisa menggunakan bahasa Indonesia atau bahasa Inggris.
                            </li>
                            <li>Untuk panduan penggunaan gomaintenance bisa dilihat pada sisi kiri form yang akan diisi.
                            </li>
                            <li>Silahkan klik tombol "order" untuk melanjutkan.</li>
                            </li>
                        </ul>
                        <div class="row">
                            <div class="col-lg-4 text-justify">
                                <a href="order" class="btn btn-hijau  "> Order </a>
                                </p>
                            </div>
                            <p></p>
                        </div>
                    </div>
                </div>
                <br>
                <div class="col-lg-4 gambar">
                    <img class="center" height="250" src="<?php echo base_url(); ?>assets/img/repair.png">
                </div>

                <div class="col-md-6 d-none d-md-block">
                        <div id="carouselExampleCaptions" class="carousel slide auth-slider" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                <!-- <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
								<li data-target="#carouselExampleCaptions" data-slide-to="3"></li> -->
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="auth-prod-slidebg bg-1"></div>
                                    <div class="carousel-caption d-none d-md-block">
                                        <img src="<?php echo base_url() ?>assets/img/k1.jpg" width="620px"   alt="product images" class="img-fluid mb-5">
                                        <!-- <h3><b style="color: white;">PERBAIKAN DAN PERAWATAN KANTOR </b></h3> -->
                                        <!-- <h5 class="mb-5"> Meeting room reservation</h5> -->
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="auth-prod-slidebg bg-2"></div>
                                    <div class="carousel-caption d-none d-md-block">
                                        <img src="<?php echo base_url() ?>assets/img/k2.jpg" width="420px" alt="product images" class="img-fluid mb-5">
                                        <!-- <h3><b style="color: white;">PERBAIKAN DAN PERAWATAN RUMAH </b></h3> -->

                                    </div>
                                </div>


                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span></a>
                            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span></a>
                        </div>
                    </div>


            </div>
        </div>
    </header>
    <!-- Quote/testimonial aside-->

    </div>
    </div>
    </div>


</html>