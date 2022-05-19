<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
</head>
<body>
<% if(session.getAttribute("id")==null){%>

            
            <nav class="navbar navbar-expand-lg fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="http://phoenixking.co.kr/index_ko.jsp">Jin</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                메뉴
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        
                        <li class="nav-item"><a class="nav-link" href="http://yesjin.kr/introduction_ko.jsp">소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="http://yesjin.kr/introduction_ko.jsp#timeline">타임라인</a></li>
                        <li class="nav-item"><a class="nav-link" href="http://yesjin.kr/Study_ko/BoardServlet?command=board_list">프로젝트</a></li>
             
                        <li class="nav-item"><a class="nav-link" href="/Study_ko/login.jsp">로그인</a></li>      
                    </ul>
  <%}else{ %>

           
           <nav class="navbar navbar-expand-lg fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="http://phoenixking.co.kr/index_ko.jsp">Jin</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                メニュー
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="yesjin.kr/introduction_ko.jsp">소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="yesjin.kr/introduction_ko.jsp#timeline">타임라인</a></li>
                        <li class="nav-item"><a class="nav-link" href="yesjin.kr/Study_ko/BoardServlet?command=board_list">프로젝트</a></li>
                    
                        <li class="nav-item"><a class="nav-link" href="/Study_ko/logout.jsp">로그아웃</a></li>
                        
                    </ul>
  <%} %>
  
    <script src="/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</body>
</html>