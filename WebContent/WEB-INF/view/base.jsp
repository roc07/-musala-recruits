<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Index Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/base.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

<div class="container">
    <div class="col-sm-3"></div>
    <div class="col-sm-6 musala-banner" style="background-color:rgb(94, 179, 228);">
      <h1 class="musala-banner">MUSALA RECRUITS 
      <img src="${pageContext.request.contextPath}/resources/images/logo_tr_short.png" width="130.2" height="107.8"> </h1>
    </div>
    <div class="col-sm-3"></div>
</div>

<div class="container">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
    <br>
    <br>
    <br>
    <br>
    <br>
 
<%--          <form:form action="logIn" modelAttribute="user" method="POST"> --%>
<!--             <tr> -->
<%--         		<td><form:input path="firstName" /></td> --%>
<%--         		<td><form:input path="lastName" /></td> --%>
<!--          	</tr>         -->
<!--  			<input type="submit" value="Log In" class="save"/>  -->
<%--          </form:form> 	 --%>
	<form>
		Name:<br> <input type="text"> <button>Log In</button> <br>
		Pass:<br> <input type="text"> <button>Reset </button>
	</form>
	 <br>
	<a class="buttoLink" href="${pageContext.request.contextPath}/fullCandidateView">Recruits</a>
	<a class="buttoLink" href="${pageContext.request.contextPath}/generalInfoPage">Index</a>		
	
    </div>
    <div class="col-sm-3"></div>
</div>

<div>
	<a href="${pageContext.request.contextPath}/generalInfoPage">To General Page</a>
</div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
</body>    
</html>