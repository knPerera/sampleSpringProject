<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

    <%--<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- JavaScript -->
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css"/>
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/default.min.css"/>
    <!-- Semantic UI theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/semantic.min.css"/>
    <!-- Bootstrap theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/bootstrap.min.css"/>

</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Employee Management System</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/">Home</a></li>
                <li><a href="/employee/list">Employees</a></li>
                <li><a href="/task/list">Tasks</a></li>
                <li><a href="/role/list">Roles</a></li>
            </ul>
        </div>
    </div>

</nav>
<span id="loading-screen" style="display: none;"> <img src="../../images/loading.gif" /> </span>
<div class="container" id="response" style="width: 1071px;margin-left: 10px;">

    <h3>User details</h3>
    </br>
    <div class="row">
        <div class="col-sm-2">
            Task Description
        </div>

        <div class="col-sm-2">
            Assgineee
        </div>

    </div>

    <c:forEach items="${tasks}" var="task">
        <div class="row">
            </br>

            <div class="col-sm-2">
                <div id="r_name${task.t_id}">${task.taskname}</div>
                <input type="text" id="r_name_txt${task.t_id}" style="display: none" value="${task.taskname}" >
            </div>

            <div class="col-sm-2">
                <div id="r_title${task.t_id}">
                    <c:if test="${task.getUser().getName() !=  null }">
                        <a href="/employee/getOne?id=${task.getUser().getU_id()}">${task.getUser().getName()}</a>
                    </c:if>
                </div>
                <select class="form-control" name="menu" id="menu${task.t_id}" style="display: none">
                    <option value="${task.getUser().getName()}" selected>${task.getUser().getName()}</option>
                    <c:forEach items="${users}" var="user">
                        <c:if test="${task.getUser().getName()!= user.name}">
                            <option value="${user.name}">${user.name}</option>
                        </c:if>
                    </c:forEach>

                </select>
            </div>

            <div class="col-sm-2">
                <button type="button" class="btn btn-warning" id="up_rl${task.t_id}" onclick="updateUser(${task.t_id})">Edit</button>
                <button type="button" class="btn btn-danger" style="display: none" id="up_cal${task.t_id}" onclick="showDivsRole(${task.t_id})" >Cancel</button>
                <button type="button" class="btn btn-danger" style="display: none" id="sa_up${task.t_id}" onclick="editUser(${task.t_id})" >Save</button>
            </div>
            <div class="col-sm-1">
                <button type="button" class="btn btn-danger" id="de_rl" onclick="deleteUser(${task.t_id})">Delete</button>
            </div>

        </div>
        </br></br>
    </c:forEach>
</div>
</body>

