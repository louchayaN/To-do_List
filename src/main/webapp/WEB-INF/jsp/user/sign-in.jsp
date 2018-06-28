<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>to-do List</title>

    <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/css/signin.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/css/error-validation.css'/>" rel="stylesheet">
    
</head>

<body class="text-center">

	<c:out value="${message}" />

<!-- 	<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1> -->

<h1>Please sign in</h1>

	<sf:form class="form-signin" method="POST" modelAttribute="userSignInForm" id="signInForm" >
	
		<sf:label path="login" class="sr-only">Login</sf:label> 
		<sf:input path="login" placeholder="login" class="form-control" id="login" />
		<sf:errors path="login" />
		
		
		<sf:label path="password" class="sr-only">Password</sf:label> 
		<sf:password path="password"  placeholder="Password" class="form-control" id="password" />
		<sf:errors path="password" />
		
		<div id="sigInError" class="error form-group"></div>
		
		<sf:button class="btn btn-lg btn-primary btn-block">Sign in</sf:button>		
	</sf:form>
	
	<div>
		<p class="font-italic">Are you a new user?</p>
		<a class="btn btn-lg btn-primary btn-block" href="<c:url value='/users/registration'/>">To registration</a>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<script src="<c:url value='/resources/js/third-party/jquery.validate.js'/>"></script>	
	<script src="<c:url value='/resources/js/validation/sign-in.js'/>"></script>		
	
	<script src="<c:url value='/resources/js/third-party/URI.js'/>"></script>
	<script src="<c:url value='/resources/js/third-party/jquery.URI.js'/>"></script>
	<script src="<c:url value='/resources/js/action-reaction/login.js'/>"></script>	
	
</body>

</html>