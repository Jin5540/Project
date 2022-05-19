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
    
<%@ include file="../common/header.jsp"%>
<body class="bg-light">
<% request.setCharacterEncoding("UTF-8"); %>

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
    <br><br>
<div class="container">
  <main>
    <div class="py-5 text-center">
      <n class="medium"><h1>등록</h1>
      <p class="lead"></p>
    </div>


    

          <form method="post" action="BoardServlet?command=board_write" enctype="multipart/form-data">
          <form id="needs-validation" novalidate="">
     
          <input type="hidden" name="command" value="board_write">
          <div class="row g-3">
       

         <div class="col-sm-12">
              <n class="medium"><label for="Name" class="form-label">제목</label>
              <input type="text" class="form-control" name="Title" placeholder="어쩌고저쩌고" value="" required="">
              <div class="invalid-feedback">
                Valid first title is required.
              </div>
            </div>
         
         
               <div class="col-sm-12">
              <n class="medium"><label for="Name" class="form-label">링크</label>
              <input type="text" class="form-control" name="Link" placeholder="어쩌고저쩌고" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
              </div>
  
              <div class="col-sm-12">
              <n class="medium"><label for="Name" class="form-label">요약</label>
              <input type="text" class="form-control" name="Comment" placeholder="어쩌고저쩌고" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>
            
            
            
            <div class="col-sm-12">
              <n class="medium"><label for="Name" class="form-label">설명</label>
              <textarea class="form-control" style="width:100%;height:100px"; name="Configuration" placeholder="어쩌고저쩌고" value="" required></textarea>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>
            
              <div class="col-sm-12">
              <n class="medium"><label for="Name" class="form-label">의견</label>
              <textarea class="form-control" style="width:100%;height:100px"; name="Opinion" placeholder="어쩌고저쩌고" value="" required></textarea>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>
            
    
            
            
               <div class="col-sm-12">
              <n class="medium"><label for="Name" class="form-label">언어</label>
              <input type="text" class="form-control" name="Language" placeholder="어쩌고저쩌고" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>
            
               <div class="col-sm-12">
              <n class="medium"><label for="Name" class="form-label">기간</label>
              <input type="text" class="form-control" height="200" name="Date" placeholder="어쩌고저쩌고" value="" required>
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>   
               
  
  
           <div class="col-sm-12">
              <n class="medium"><label for="picture" class="form-label"></label>
              <input type="file" class="form-control" name="Picture1" id="Picture1">
              <div class="invalid-feedback">
                Please provide a valid University name.
              </div>
            </div>
          
          

          
          
          
          
           <hr class="my-4">

          <div class="col-12">

          <n class="medium"><button type="submit" class="w-100 btn btn-primary btn-lg" >Submit form</button>
        </form>
      </form>
        
      </div>
    
    
  </main>
  
 <%@ include file="../common/footer.jsp"%>


     
  </body>
</html>