<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<%@ include file = "header.jsp" %>

<div class="container-fluid">
	<div class="row">
	
    	<%@ include file = "menu.jsp" %>
       
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
			<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2">Add a new task</h1>
			</div>
            
			<sf:form method="POST" modelAttribute="task" id="addTaskForm">
				<sf:label path="shortName" class="sr-only">Short name</sf:label> 
				<sf:input path="shortName" placeholder="Short name" id="shortName"/>
				<sf:errors path="shortName" />

				<sf:button>Add</sf:button>
			</sf:form>  
 
			<canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
		</main>        
	</div>
</div>	
	

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="<c:url value='/resources/js/third-party/jquery.validate.js'/>"></script>	
<script src="<c:url value='/resources/js/validation/add-task.js'/>"></script>	

</body>

</html>