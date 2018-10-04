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
                <h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">Roles <span>AVAILABLE</span> now</h2>
            </div>

            <div class="col-md-12" id="response" style="width: 1100px; margin-left:96px;">
                <c:forEach items="${roles}" var="role">
                    <div class="row">
                        <div class="col-md-3">
                            <div id="r_title${role.roleId}">${role.title}</div>
                            <div class="form-group">
                                <input type="text" class="form-control" style="display: none" value="${role.title}" id="rol_id${role.roleId}">
                            </div>
                        </div>
                            <%--<td></td>--%>
                        <div class="col-md-6">
                            <button type="button" class="btn btn-warning" id="up_rl${role.roleId}" onclick="updateRole(${role.roleId})"><span class="glyphicon glyphicon-floppy-open"></span> Edit</button>
                            <button type="button" class="btn btn-danger" style="display: none" id="up_cal${role.roleId}" onclick="showDivsRole(${role.roleId})" ><span class="glyphicon glyphicon-floppy-remove"></span>Cancel</button>
                            <button type="button" class="btn btn-danger" style="display: none" id="sa_up${role.roleId}" onclick="editRole(${role.roleId})" ><span class="glyphicon glyphicon-floppy-saved"></span> Save </button>
                        </div>
                        <%--<div class="col-md-3">--%>
                            <%--&lt;%&ndash;<button type="button" class="btn btn-danger" id="de_rl" onclick="deleteRole(${role.roleId})">  <span class="glyphicon glyphicon-remove-sign"></span> Delete</button>&ndash;%&gt;--%>
                        <%--</div>--%>

                    </div>
                    </br></br>
                </c:forEach>

            </div>
        </div>
    </div>
</section>
<section id="service1">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">Add <span>New</span> Role</h2>
            </div>
            <div class="col-md-12" style="    margin-left: 350px;">
                <input type="text" id="tit_id" class="form-control" style="    width: 304px;"/>
                <button type="button" style="margin-top: -56px;margin-left: 307px;" class="btn btn-warning" id="id_crt" onclick="create()">Create New Role</button>
            </div>
        </div>
    </div>
</section>
<%--<div class="container" style="margin-top: 129px;margin-left: 687px;width: 357px;">--%>
    <%--<input type="text" id="tit_id"/>--%>
    <%--<button type="button" class="btn btn-warning" id="id_crt" onclick="create()">Create New Role</button>--%>
<%--</div>--%>
<script type="text/javascript">
    function deleteRole(roleId) {
        alertify.confirm("Are you sure on proceeding on deleting the role.",
            function(){
                toggleLoadingState(true);
                setTimeout(function(){
                    $.ajax({
                        type: "DELETE",
                        url: "/role/delete?id=" + roleId,
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
        var title = $("#tit_id").val();
        setTimeout(function(){
            $.ajax({
                type: "POST",
                url: "/role/create",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({
                    "title": title
                }),
                success: function(data) {
                    if(data){
                        toggleLoadingState(false);
                        alertify.success('Added successfully');
                        setTimeout(function(){location.reload()},1000);
                    }else{
                        alertify.error('Please add a role not in the list');
                    }
                },
                error: function() {
                    toggleLoadingState(false);
                    alertify.error('Internal Server Error');
                }
            });
        },3000);
    }


    function editRole(roleId) {
        var f_title = document.getElementById("r_title"+roleId).innerText;
//         = $("#).val();
        var title = $("#rol_id"+roleId).val();
        debugger
        if(f_title == title){
            alertify
                .alert("Please update the filed before saving", function(){
                    alertify.message('OK');
                });
        }else{
            toggleLoadingState(true);
            setTimeout(function(){
                $.ajax({
                    type: "PUT",
                    url: "/role/edit?id="+roleId+"&title="+title,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        if(data){
                            toggleLoadingState(false);
                            alertify.success('Updated successfully');
                            setTimeout(function(){location.reload()},1000);
                        }else{
                            alertify.error('Please add a role not in the list');
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

    function updateRole(roleId) {
        alertify.confirm("Are you sure on proceeding editing the role.",
            function(){
                $("#rol_id"+roleId).show();
                $("#r_title"+roleId).hide();
                $("#up_rl"+roleId).hide();
                $("#up_cal"+roleId).show();
                $("#sa_up"+roleId).show();
            },
            function(){
                alertify.error('Cancel');
            });
    }

    function showDivsRole(roleId) {
        $("#rol_id"+roleId).hide();
        $("#r_title"+roleId).show();
        $("#up_rl"+roleId).show();
        $("#up_cal"+roleId).hide();
        $("#sa_up"+roleId).hide();
    }
</script>
</body>