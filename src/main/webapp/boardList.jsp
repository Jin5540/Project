<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>プロジェクト</title>
</head>
<body>
<!doctype html>
<html lang="ko" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, ÃªÂ·Â¸Ã«Â¦Â¬ÃªÂ³Â  Bootstrap ÃªÂ¸Â°Ã¬Â Â¬Ã¬Â Â Ã«Â Â¤">
    <meta name="generator" content="Hugo 0.87.0">
    <script type="text/javascript" src="/J1/js/delete.js"></script>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/cover/">

    

    <!-- Bootstrap core CSS -->
<link href="/J1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">



    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

 
 
table, td{
border: 1px solid black
}

table{
 
height: 40px;
margin: auto;
text-align: center;
}

      
    </style>


 </head>
  <body>
    
 <%@ include file="/common/header.jsp"%>
 <%@ page import="java.io.File" %>

 <%@ page import="java.util.*" %>

<main>

  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">プロジェクト</h1>
        <p class="lead text-muted">船は港にいれば安全です。 しかし、それが船の存在理由ではありません。</p>
      </div>
    </div>
  </section>
  
      
<table width=70% border=1>
<tr height="40"><td>番号</td><td>タイトル</td><td>説明</td><td>言語</td><td>プロジェクト期間</td></tr>
<c:forEach var="board" items="${boardList }">
<tr height="40">
<td>${board.num}</td>
<td>
<a href="BoardServlet?command=board_view&num=${board.num}">
${board.title }
</a>
</td>
<td>${board.comment }</td>
<td>${board.language}</td>
<td>${board.date}</td>

</tr>
</c:forEach>
<% if(session.getAttribute("id")!=null){%>
<tr><td colspan=5><a href="BoardServlet?command=board_write_form">登録</a></td></tr>
<%} %>
</table>

</main>
</body>
</html>


</main>

<%@ include file="../common/footer.jsp"%>   

      

</body>
</html>

