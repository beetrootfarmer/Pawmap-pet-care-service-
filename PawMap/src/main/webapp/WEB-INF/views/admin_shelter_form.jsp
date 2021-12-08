<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="layout/header.jsp" %>

<!DOCTYPE html>
<html lang="kor">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>adminpageashelteradd</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
  <!--Thomas lee started working on this page since nov 16th-->
    <div class="main-top">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="our-link" style="float:right;">
              <ul>
                <li><a href="#">로그아웃</a></li>
              </ul>
            </div>
            <div class="our-link" style="float:right">
              <ul class="offer-box">
                <!--thomas's comment: 상기 offer-box 태그로 인해 하기 li 태그들은 Border-right에 하얀 선이 나왔고 해당 사유로 하기 태그들은 스타일을 없앴음.-->
                <li style="border-right:none; font-size:14px;">관리자페이지 입니다.</li>
                <li style="border-right:none; font-size:14px;">Admin Page</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  <!-- admin페이지의 header 시작...-->
  <header class="main-header">
    <!-- Start Navigation --> <!--하기 navbar navbar-expand-lg를 md로 교체-->
    <nav class="navbar navbar-expand-md navbar-light bg-light navbar-default bootsnav">
        <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
                <a class="navbar-brand" href="index.html"><img src="images/pawmaplogo.png" class="logo" alt="" width="216" height="118"></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                  <li class="nav-item active"><a class="nav-link" href="adminpage2vetmange-tom.html"> 제휴병원 관리</a></li>
                  <li class="nav-item"><a class="nav-link" href="adminpage4usermanage-tom.html"> 회원정보 관리</a></li>
                  <li class="nav-item"><a class="nav-link" href="adminpage6sheltermanage-tom.html"> 보호소정보 관리</a></li>
                  <li class="nav-item"><a class="nav-link" href="adminpage9communitymanage-tom.html"> 커뮤니티 게시판 관리</a></li>
                  <li class="nav-item"><a class="nav-link" href="adminpage11counseloneonone-tom.html"> 1:1 상담 관리</a></li>
                  <li class="nav-item"><a class="nav-link" href="adminpage13donationmanage-tom.html"> 후원금 관리</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </nav>
    <!-- End Navigation --> <!--관리자 페이지 공통 부분 완료...-->
  </header>
  <!--adminmainvetmanagement-->
    <div> 
        <h1 style="text-align: center; font-size:30px; margin-top:5%;">보호소 등록</h1>
    </div>

    
    <!-- form 시작! -->
    <form class="form-horizontal board-form" method="POST" action="insertShelterForm" enctype="multipart/form-data">
      <div style="margin-top: 40px; border-style: 3px solid orange ">
        <table style="margin-left: auto; margin-right: auto; text-align: center;">
          
          

          <tr>
            <td>사업자등록번호: </td>
            <td></td>
            <td><input id="comNum" name="comNum" type="text" placeholder="내용을 임력해 주세요"></td>
        </tr>
        <tr>
          <td>보호소 명: </td>
          <td></td>
          <td><input id="shelterName" name="shelterName" type="text" placeholder="내용을 임력해 주세요"></td>
        </tr>
        <tr>
          <td>주소: </td>
          <td></td>
          <td><input id="shelterAddress" name="shelterAddress" type="text" placeholder="내용을 임력해 주세요"></td>
        </tr>
        <tr>
          <td>연락처: </td>
          <td></td>
          <td><input id="shelterTel" name="shelterTel" type="text" placeholder="내용을 임력해 주세요"></td>
        </tr>
        <tr>
          <td>상세정보: </td>
          <td></td>
          <td><input id="content" name="content" type="text" placeholder="내용을 임력해 주세요"></td>
        </tr>
        <tr>
          <td>사진첨부: </td>
          <td></td>
          <td><input class="form-control btn-file-upload" name="uploadFiles" multiple="multiple" type="file"></td>
        </tr>
      </table>
  </div>
  <div style="margin-top: 40px">
    <table style="margin-left:auto; margin-right:auto; text-align: center;">
          <tr>
              <td>
                <input id="btn-submit" name="btn-submit" type="submit" value="작성완료" class="btn btn-complete">
          </tr>
    </table>
    </div>

  

  
  



    <!-- ALL JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/jquery.superslides.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/inewsticker.js"></script>
    <script src="js/bootsnav.js."></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/baguetteBox.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>

    
</body>

<%@ include file="layout/footer.jsp" %>
</html>