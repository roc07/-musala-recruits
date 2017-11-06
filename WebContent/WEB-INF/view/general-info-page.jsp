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
  
  <script type="text/javascript" src="<c:url value="/resources/js/index.js" />"> </script>
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
  <div class="col-sm-8  main-table">
    <h2>Recruits' Table</h2>
    <div class="who-populates">
		<a class="buttoLink" href="${deleteRecruit}">Last 5</a>
		<a class="buttoLink" href="${deleteRecruit}">Last 10</a>
		<a class="buttoLink" href="${deleteRecruit}">All Recruits</a>
      	<a class="buttoLink" href="${pageContext.request.contextPath}/addRecruitPage">Add Recruits</a>
    </div>              
     <br>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th>First Name ^ V</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Test Score</th>
          <th>Quick Action</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="recruits" items="${allRecruits}">
        
        	<c:url var="scoreGenerate" value="/generateTemplate">
        		<c:param name="scoreValue" value="${recruits.score}"></c:param>
        	</c:url>
        	
        	<c:url var="deleteRecruit" value="/deleteRecruit">
        		<c:param name="recruitId" value="${recruits.id}"></c:param>
        	</c:url>  
        	      	
        	<tr>
        		<td>${recruits.firstName}</td>
        		<td>${recruits.lastName}</td>
        		<td>${recruits.email}</td>
        		<td>${recruits.phone}</td>
        		<td class="scoreTest">
        		<a href="${scoreGenerate}">${recruits.score}</a>
        		</td>
        		<td>
        		    <a class="buttoLink" href="${deleteRecruit}">Delete</a>
      				<a class="buttoLink" href="${updateRecruit}">Update</a>
        		</td>        		
        	</tr>        
        </c:forEach>   
        


      </tbody>
    </table>
    
    </div>
    <div class="col-sm-4"> 
    <div class="form-group">
      <br>
	  <label for="comment">Result Template:</label>
	  <textarea class="form-control" rows="6" id="comment">${scoreTextTemplate}</textarea>
	  <br>
	  <div>
<!-- 	  <button>First Name</button><button>Last Name</button><button>email</button> -->
	    <div>
	    Find by: <br>
			<form class="radioFinder">
				<input type="radio" name="finder" value="first" checked><label>First Name</label>
				<input type="radio" name="finder" value="phone"><label>Phone</label>			
				<input type="radio" name="finder" value="email"><label>Email</label>
				<br>
				<input type="radio" name="finder" value="last"><label>Last Name</label>
				<input type="radio" name="finder" value="score"><label>Score</label>
				<input type="radio" name="finder" value="userid"><label>User ID</label>			
			</form>
			
		</div> 
		<br>
<%-- 	  	<form:form action="findRecruit" modelAttribute="recruit" method="GET"> --%>
<%--             <form:hidden path="id"/> --%>
<!--             <ul> -->
<%--         		<li>First Name: <form:input path="firstName" /></li> --%>
<%-- 				<li>Last Name: <form:input path="lastName" /></li>            --%>
<!--             </ul> -->

<!-- 			<input type="submit" value="Find" class="save"/> -->
<%--         </form:form> --%>
            <ul>
        		<li>First Name: <input type="text"></li>
				<li>Last Name: <input type="text"></li>           
            </ul>

			<input type="submit" value="Find" class="save"/>    
        
	  </div>
	</div> 
	</div>
  </div>

    
<!--         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<!--         <script src="js/bootstrap.min.js"></script> -->
        
      </body>    
</html>