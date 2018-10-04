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
        <link rel="stylesheet" href="../../css/animate.min.css">
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/font-awesome.min.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="../../css/templatemo-style.css">
        <script src="../../js/jquery.js"></script>
        <script src="../../js/bootstrap.min.js"></script>
        <script src="../../js/jquery.singlePageNav.min.js"></script>
        <script src="../../js/typed.js"></script>
        <script src="../../js/wow.min.js"></script>
        <script src="../../js/custom.js"></script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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

<div class="preloader">
    <div class="sk-spinner sk-spinner-wave">
        <div class="sk-rect1"></div>
        <div class="sk-rect2"></div>
        <div class="sk-rect3"></div>
        <div class="sk-rect4"></div>
        <div class="sk-rect5"></div>
    </div>
</div>

<header>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-4 col-xs-12">
                <p><i class="fa fa-phone"></i><span> Phone</span>+94758086721</p>
            </div>
            <div class="col-md-3 col-sm-4 col-xs-12">
                <p><i class="fa fa-envelope-o"></i><span> Email</span><a href="mailto:giridesigns5@gmail.com">akayeshmantha@gmail.com</a></p>
            </div>
            <div class="col-md-5 col-sm-4 col-xs-12">
                <ul class="social-icon">
                    <li><span>Meet us on</span></li>
                    <li><a href="#" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-instagram"></a></li>
                    <li><a href="https://www.youtube.com/channel/UC4yzoGuKkCL_8FzI-B-x83A" class="fa fa-youtube"></a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<nav class="navbar navbar-default" style="background: white;">
    <div class="container">
        <div class="navbar-header">
            <a href="#" class="navbar-brand">Truly Employee</a>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="/task/welcome" class="current">Home</a></li>
            <li><a href="/employee/list">Employees</a></li>
            <li><a href="/task/list">Tasks</a></li>
            <li><a href="/role/list">Roles</a></li>
        </ul>
    </div>
</nav>

<span id="loading-screen" style="display: none;"> <img src="../../images/loading.gif" /> </span>


<section id="service">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">Tasks <span>AVAILABLE</span> now</h2>
            </div>
            <div class="col-md-12" id="response" style="width: 1071px;margin-left: 10px;">

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
                            <input class="form-control" type="text" id="r_name_txt${task.t_id}" style="display: none" value="${task.taskname}" >
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
                            <%--<button type="button" class="btn btn-danger" id="de_rl" onclick="deleteUser(${task.t_id})">Delete</button>--%>
                        </div>

                    </div>
                    </br></br>
                </c:forEach>
            </div>
        </div>
    </div>
</section>


<section id="service">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">Create A <span>NEW</span> task</h2>
            </div>
            <div class="col-md-12" id="create" style="">
                <form>
                    <div class="form-group">
                        <label for="email">Task Name:</label>
                        <input type="text" name="email" class="form-control" id="u_cr_id">
                    </div>
                    <div class="form-group">
                        <label for="menu1">Users Available:</label>
                        <select class="form-control" name="menu1" id="u_cr_men">
                            <%--<option value="${user.getRole().getTitle()}" selected>${user.getRole().getTitle()}</option>--%>
                            <c:forEach items="${users}" var="user">
                                <%--<c:if test="${task.getUser().getName()!= user.name}">--%>
                                <option value="${user.name}">${user.name}</option>
                                <%--</c:if>--%>
                            </c:forEach>
                        </select>
                    </div>
                    <button type="button" class="btn btn-default" onclick="create()">Submit</button>
                </form>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
    function deleteUser(roleId) {
        alertify.confirm("Are you sure on proceeding on deleting the user.",
            function(){
                toggleLoadingState(true);
                setTimeout(function(){
                    $.ajax({
                        type: "DELETE",
                        url: "/task/delete?id=" + roleId,
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (data) {
                            toggleLoadingState(false);
                            alertify.success('Deleted successfully');
                            setTimeout(function(){location.reload()},1000);
                        }, error: function () {
                            toggleLoadingState(false);
                            alertify.success('Deleted successfully');
                            setTimeout(function(){location.reload()},1000);
                        }
                    });
                },3000);
            },
            function(){
                alertify.error('Cancel');
            });
    }

    function create() {
        toggleLoadingState(true);
        var name = $("#u_cr_id").val();
        var title = $("#u_cr_men").val();
        setTimeout(function(){
            $.ajax({
                type: "POST",
                url: "/task/create",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({
                    "t_name": title,
                    "u_name": name
                }),
                success: function(data) {
                    if(data){
                        toggleLoadingState(false);
                        alertify.success('Added successfully');
                        setTimeout(function(){location.reload()},1000);
                    }else{
                        toggleLoadingState(false);
                        alertify.error('Please add a user in the list');
                    }
                },
                error: function() {
                    toggleLoadingState(false);
                    alertify.error('Internal Server Error');
                }
            });
        },3000);
    }


    function editUser(roleId) {
        var f_title = document.getElementById("r_name"+roleId).innerText;
        debugger
        var title = $("#r_name_txt"+roleId).val();
        var role = $('#menu'+roleId).val();
        var exrole = $('#r_title'+roleId).val();
        if(f_title == title && exrole == role ){
            alertify
                .alert("Please update the filed before saving", function(){
                    alertify.message('OK');
                });
        }else{
            toggleLoadingState(true);
            setTimeout(function(){
                $.ajax({
                    type: "PUT",
                    url: "/task/edit?id="+roleId+"&title="+title+"&user_Name="+role,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if(data){
                            toggleLoadingState(false);
                            alertify.success('Updated successfully');
                            setTimeout(function(){location.reload()},1000);
                        }else{
                            alertify.error('Please add a role not in the list');
                            toggleLoadingState(false);
                        }

                    }, error: function () {
                        toggleLoadingState(false);
                        alertify.error('Update error');
                    }
                });
            },3000);
        }
    }
    function toggleLoadingState(showLoading) {
        showLoading ? $("#loading-screen").show() : $("#loading-screen").hide();
        showLoading ? $("#response").hide() : $("#response").show();
        showLoading ? $("#tit_id").hide() : $("#tit_id").show();
        showLoading ? $("#id_crt").hide() : $("#id_crt").show();

    }

    function updateUser(roleId) {
        alertify.confirm("Are you sure on proceeding editing the role.",
            function(){
                $("#r_name_txt"+roleId).show();
                $("#menu"+roleId).show();
                $("#r_title"+roleId).hide();
                $("#r_name"+roleId).hide();
                $("#up_rl"+roleId).hide();
                $("#up_cal"+roleId).show();
                $("#sa_up"+roleId).show();
            },
            function(){
                alertify.error('Cancel');
            });
    }

    function showDivsRole(roleId) {
        $("#r_name_txt"+roleId).hide();
        $("#r_name"+roleId).show();
        $("#up_rl"+roleId).show();
        $("#up_cal"+roleId).hide();
        $("#sa_up"+roleId).hide();
        $("#menu"+roleId).hide();
        $("#r_title"+roleId).show();
    }
</script>
</body>

