<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

    
<nav class="col-md-2 d-none d-md-block bg-light sidebar">
  <div class="sidebar-sticky">
    <ul class="nav flex-column">
      <li class="nav-item">
        <a class="nav-link active" href='<c:url value="/tasks" />'>Show all tasks</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href='<c:url value="/tasks/add" />'> Add a new task</a>
      </li>           
    </ul>
  </div>
</nav>
