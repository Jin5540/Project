<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="BoardServlet" class="needs-validation" novalidate>
<input type="hidden" name="command" value="board_write">
<div class="col-sm-12">
              <label for="Name" class="form-label">Title</label>
              <input type="text" class="form-control" name="Title" placeholder="blah blah" value="" required>
              <input type="text" name="Title">
              
             <button type="submit" class="w-100 btn btn-dark btn-lg" >Submit form</button>
            </form>
</body>
</html>