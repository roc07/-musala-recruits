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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<%--   <script type="text/javascript" src="<c:url value="/resources/js/index.js" />"> </script> --%>
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
	
	<div id="container">
		<h3>Save Customer</h3>
		
        <form:form action="addRecruit" modelAttribute="recruit" method="POST">
            <form:hidden path="id"/>
            <table>
	            <tr>           
	            	<td><label>First</label></td>
	        		<td><label></label><form:input path="firstName" /></td>
	        	</tr> 
	        	<tr>
	        		<td><label>Last</label></td>
	        		<td><form:input path="lastName" /></td>
	        	</tr>
	        	<tr> 
	        		<td><label>Email</label></td>
	        		<td><form:input path="email" /></td>
	        	</tr> 
	        	<tr>
	        		<td><label>Phone</label></td>
	        		<td><form:input path="phone" /></td>
	        	</tr> 
	        	<tr>
	        		<td><label>Score</label></td>
	        		<td><form:input path="score" /></td>
	        	</tr>             
            </table>
      
			<input type="submit" value="Save" class="save"/>
        </form:form>
	
		<div>${success}</div>
		<p>
			<a href="${pageContext.request.contextPath}/generalInfoPage">Back to list</a>	
		</p>
		
	</div>
</body>

</html>