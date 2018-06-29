<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

    
<%@ include file = "header.jsp" %>

<div class="container-fluid">
	<div class="row">
	
    	<%@ include file = "menu.jsp" %>
       
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
			<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2">Tasks</h1>
			</div>
            
			<c:choose>
				<c:when test="${empty tasks}">
					<h6>
						Your task list is empty. Please, click  <a href='<c:url value="/tasks/add" />'> Add </a> to add a new task.
					</h6>		
				</c:when>
				
				<c:otherwise>
					<table class="table table-bordered table-hover text-center">
						<thead class="bg-success text-light">
							<tr>
								<th scope="col">Short name</th>
								<th scope="col">Description</th>
								<th scope="col">Change</th>
							</tr>
						</thead>
						<tbody class="table-striped">
							<c:forEach items="${tasks}" var="task">
								<tr>
									<td>${task.shortName}</td>
									<td>${task.description}</td>
									<td>
										<form action="<c:url value="tasks/delete" />" method="post">
											<input type="hidden" name="idTask" value="${task.id}">				   
									    	<button type="submit" class="btn btn-outline-success form-control">
												Delete
											</button>			    
										</form>																		
									</td>				
								</tr>
							</c:forEach>
						</tbody>
					</table>					
				</c:otherwise>
			</c:choose>	
 
			<canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
		</main>        
	</div>
</div>	
	

</body>

</html>