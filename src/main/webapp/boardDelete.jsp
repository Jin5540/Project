<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <head>
        <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>프로젝트</title>
        <link rel="icon" type="image/x-icon" href="favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/Study_ko/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link href="/Study_ko/css/styles.css" rel="stylesheet" />
        <link href="/Study_ko/css/agency.css" rel="stylesheet" />
        <link rel="stylesheet" href="/Study_ko/css/main.css">
        <script src="/jekyll-theme-yat/assets/js/main.js"></script><link type="application/atom+xml" rel="alternate" href="/jekyll-theme-yat/feed.xml" title="Your awesome title">
        
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/10.1.1/highlight.min.js"></script>
<!-- and it's easy to individually load additional languages -->
          <script charset="UTF-8" src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.1.1/languages/go.min.js"></script>


  <!-- Custom fonts for this template -->
  <link href="assets/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>


<style> #test_btn1{ border-top-left-radius: 5px; border-bottom-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; height: 40px;  } 
#test_btn2{ border-top-right-radius: 5px; border-bottom-right-radius: 5px;} 
#btn_group button{ border: 1px solid #E2E2E2; background-color: rgba(0,0,0,0); color: #E2E2E2; padding: 5px; } 
#btn_group button:hover{ color:white; background-color: #E2E2E2; } </style>


</head>
<body>

        <!-- Navigation-->

            
 <%@ include file="/common/header.jsp"%>

<span id="trans">
<div id="google_translate_element" style="display: none;">
</div>
<span class="ct-language" style="color: black;">언어
<ul class="list-unstyled ct-language-dropdown">
    
      <li>
        <a href="http://phoenixking.co.kr/Study_ko/BoardServlet?command=board_list" class="lang-select" data-lang="en">
          
          <img src="https://cdn.countryflags.com/thumbs/united-states-of-america/flag-400.png" title="English">
          
        </a>
      </li>
    

      <li>
        <a href="http://phoenixking.co.kr/Study_ko/BoardServlet?command=board_list" class="lang-select" data-lang="ja">
          
          <img src="https://cdn.countryflags.com/thumbs/japan/flag-400.png" title="Japanese">
          
        </a>
      </li>
    
      <li>
        <a href="http://phoenixking.co.kr/Study_ko/BoardServlet?command=board_list" class="lang-select" data-lang="ko">
          
          <img src="https://cdn.countryflags.com/thumbs/south-korea/flag-400.png" title="Korean">
          
        </a>
      </li>
    
  </ul>
</span>



<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</span>

                </div>
            </div>
        </nav>
  <!-- Portfolio Grid -->
<section class="bg-light page-section" id="portfolio">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
      <br>
        <h2 class="section-heading text-uppercase"><p>프로젝트</p>
</h2>
        <h3 class="section-subheading text-muted"><p>항구에 있는 배는 안전하다. 하지만 그것이 배의 존재이유가 아니다</p>
</h3>
      </div>
    </div>
    <div class="row">

<c:forEach var="board" items="${boardList }">
      <div class="col-md-4 col-sm-6 portfolio-item">
        <a href="BoardServlet?command=board_delete&num=${board.num}">
          <div class="portfolio-hover">
            <div class="portfolio-hover-content">
              <i class="fas fa-plus fa-3x"></i>
            </div>
          </div>
          <img style="max-width:100%;height:250px" src="/Study_ja/img/${board.picture1}" alt="">
        </a>
        <div class="portfolio-caption">
          <h4>${board.title }</h4>
          <p class="text-muted">${board.comment}</p>
        </div>
      </div>
   </c:forEach>
   <a href="BoardServlet?command=board_list">목록</a>
</section>
<!-- Portfolio Modals -->
<c:forEach var="board" items="${boardList }">
<div
  class="portfolio-modal modal fade"
  id="p${board.num}"
  tabindex="-1"
  role="dialog"
  aria-hidden="true"
>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="close-modal" data-dismiss="modal">
        <div class="lr">
          <div class="rl"></div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <div class="modal-body">
              <!-- Project Details Go Here -->
              <h2 class="text-uppercase">${board.title }</h2>
           
              <p class="item-intro text-muted">${board.comment}</p>
              <img
                style="max-width:100%; height:auto;";
                src="/Study_ja/img/${board.picture1}"
                alt="project"
              />
              <p><strong>説明</strong><br>${board.configuration}<br> <strong>意見</strong><br> ${board.opinion}</p>

<ul class="list-inline">
  <li>${board.date}</li>
  <li>${board.language}</li>
</ul>

</p>
              <button class="btn btn-primary" type="button" onclick="location.href='${board.link}' ">プロジェクト</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</c:forEach>  
       
     <!-- Bootstrap core JavaScript -->
     <script src="/Study_ja/assets/js/jquery.min.js"></script>
     <script src="/Study_ja/assets/js/bootstrap.bundle.min.js"></script>

     <!-- Plugin JavaScript -->
     <script src="/Study_ja/assets/js/jquery.easing.min.js"></script>

     <!-- Contact form JavaScript -->
     <script src="/Study_ja/assets/js/jqBootstrapValidation.js"></script>
     <script src="/Study_ja/assets/js/contact_me.js"></script>

     <!-- Custom scripts for this template -->
     <script src="/Study_ja/assets/js/agency.min.js"></script>




        <!-- Footer-->
        <footer class="footer bg-#f8f9fa small text-center text-black-50"><div class="container px-4 px-lg-5">Copyright &copy; 2021 Jin</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>