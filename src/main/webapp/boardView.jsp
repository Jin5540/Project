<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page import ="com.jslhrd.dto.*"%>
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

table, th{
border: 1px solid black;
padding : 20px 30px

} 

 
table, td{
border: 1px solid black;
padding : 20px 30px
}

table{
 
height: 40px;
margin: auto;
text-align: center;
}

.button {
  background-color:bs-gray-700;
  border-color:gray;
  padding: 0.25rem 0.5rem;
  font-size: 0.875rem;
  border-radius: 0.2rem;
  color:black;
}
      
    </style>


 </head>
  <body>
<div id="wrap" align="center">    
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
  
      
<table width=70%>
<div id="board">
<tr height="40"> 
<th> 基幹</th><td colspan="3" >${board.date}</td>
</tr>

<tr height="40">
<th>言語</th><td colspan="3">${board.language}</td>
</tr>

<tr height="40">
<th>題目</th>
<td colspan="3">
<a href="${board.link}">
${board.title}</a> (クリック)</td>
</tr>

<tr height="40">
<th>要約</th>


<%BoardVO vo = (BoardVO) request.getAttribute("board");

String a="a";
//System.out.println("vo의 값 : "+vo);
//System.out.println("1의 값 : "+vo.getPicture1());
//System.out.println("2의 값 : "+vo.getPicture2());
//System.out.println("3의 값 : "+vo.getPicture3());
//System.out.println("4의 값 : "+vo.getPicture4());
//System.out.println("5의 값 : "+vo.getPicture5());
try{
if(vo.getPicture1().equals(a))
{
}else{
%>
<img src="<%="/Study/img/"+vo.getPicture1()%>" width=70% height=50% ></img><br><br>
<%}
if(vo.getPicture2().equals(a))
{}
else{%>
<img src="<%="/Study/img/"+vo.getPicture2()%>" width=70% height=50%  ><br><br>
<%}
if(vo.getPicture3().equals(a))
{}
else{%>
<img src="<%="/Study/img/"+vo.getPicture3()%>" width=70% height=50%  ><br><br>
<%}
if(vo.getPicture4().equals(a))
{}
else{%>
<img src="<%="/Study/img/"+vo.getPicture4()%>" width=70% height=50%  ><br><br>
<%}
if(vo.getPicture5().equals(a))
{}
else{%>
<img src="<%="/Study/img/"+vo.getPicture5()%>" width=70% height=50%  ><br><br>
<%}}catch(Exception e){out.println(e);}%>


<br><br>

<td colspan="3">${board.comment}</td>
</tr>




<tr height="80">
<th>説明</th>
<td colspan="10">${board.configuration}</td>
</tr>

<tr height="80">
<th>意見</th>
<td colspan="10">${board.opinion}</td>
</tr>

</div>
</table>
<br><br>
<button class="button" onclick="location.href='BoardServlet?command=board_list'">目録</button>
<% if(session.getAttribute("id")!=null){%>
<button class="button" onclick="location.href='BoardServlet?command=board_update_form&num=${board.num}'">修整</button>
<button class="button" onclick="location.href='BoardServlet?command=board_delete&num=${board.num}'">削除</button>
<%}%>

</div>
</main>
</body>
</html>


</main>
<%@ include file="../common/footer.jsp"%>   

      

</body>
</html>
