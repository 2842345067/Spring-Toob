 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<html lang="en">
<style>
            input[type=date]::-webkit-inner-spin-button { visibility: hidden; }
            
</style>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>修改密码界面</title>
    <!-- Bootstrap Core CSS -->
    <link href="../static/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../static/css/sidebar-nav.min.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="../static/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../static/css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="../static/css/default.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="../static/js/html5shiv.js"></script>
    <script src="../static/js/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header">
 <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Wrapper -->
    <!-- ============================================================== -->
    
   <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
                    <!-- Logo -->
                    <a class="logo" href="../dash/dashboard?uid=${tbuser1[0].uid}">
                        <!-- Logo icon image, you can use font-icon also --><b>
                            <!--This is dark logo icon--><img src="../static/picture/admin-logo.png" alt="home"
                                class="dark-logo" />
                            <!--This is light logo icon--><img src="../static/picture/admin-logo-dark.png" alt="home"
                                class="light-logo" />
                        </b>
                        <!-- Logo text image you can use text also --><span class="hidden-xs">
                            <!--This is dark logo text--><img src="../static/picture/admin-text.png" alt="home"
                                class="dark-logo" />
                            <!--This is light logo text--><img src="../static/picture/admin-text-dark.png" alt="home"
                                class="light-logo" />
                        </span> </a>
                </div>
                <!-- /Logo -->
                <ul class="nav navbar-top-links navbar-right pull-right">
                   <li >
                    <form  action="../shee/sheetlist" method="post" id="loginForm1"   class="app-search hidden-sm hidden-xs m-r-10"> 
                    		<input type="hidden" name="uid" value="${tbuser1[0].uid}"  />
                            <input name="like" class="form-control" type="date"  value=""/>
                             <a onclick="document:loginForm1.submit()">
                             <i class="fa fa-calendar"></i></a>
                            </form>
							</li>
					<li>
                    <li>
                       <form  action="../shee/sheetlist" method="post" id="loginForm"   class="app-search hidden-sm hidden-xs m-r-10">
                            <input type="hidden" name="uid" value="${tbuser1[0].uid}"  />
                            <input type="text" class="form-control" placeholder="Search..." name="like"  value="">
                            <a onclick="document:loginForm.submit()">
                            <i class="fa fa-search"></i></a> </form>
                    </li>
                    <li>
                        <a class="profile-pic" href="../indi/individual?uid=${tbuser1[0].uid}"> <img src="../static/picture/varun.jpg" alt="user-img"
                                width="36" class="img-circle"><b class="hidden-xs">${tbuser1[0].username}</b></a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->

        <!-- End Top Navigation -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">导航</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                   
                        <a href="../dash/dashboard?uid=${tbuser1[0].uid}" class="waves-effect"><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>首页</a>
                    </li>
                    <li>
                        <a href="../indi/individual?uid=${tbuser1[0].uid}" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i>个人信息</a>
                    </li>
                    <li>
                        <a href="../shee/sheet?uid=${tbuser1[0].uid}" class="waves-effect"><i class="fa fa-table fa-fw" aria-hidden="true"></i>记录管理</a>
                    </li>
                    <li>
                        <a href="../font/fontawesome?uid=${tbuser1[0].uid}" class="waves-effect"><i class="fa fa-font fa-fw" aria-hidden="true"></i>图示</a>
                    </li>
                    <li>
                        <a href="../blan/blank?uid=${tbuser1[0].uid}" class="waves-effect"><i class="fa fa-columns fa-fw" aria-hidden="true"></i>记录详情</a>
                    </li>
                    <li>
                        <a href="../pict/picture?uid=${tbuser1[0].uid}" class="waves-effect"><i class="fa fa-photo fa-fw" aria-hidden="true"></i>图片</a>
                    </li>
                    <li>
                        <a href="../404/404?uid=${tbuser1[0].uid} " class="waves-effect"><i class="fa fa-info-circle fa-fw" aria-hidden="true"></i>错误404</a>
                    </li>

                </ul>
                <div class="center p-20">
                     <a href="../dash/dashboard?uid=${tbuser1[0].uid}" target="_blank" class="btn btn-danger btn-block waves-effect waves-light">升级到专业版</a>
                 </div>
            </div>
            
        </div>
        <!-- ============================================================== -->
        <!-- End Left Sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page Content -->
        <!-- ============================================================== -->
        <div id="page-wrapper">
            <div class="container-fluid margin-top: 50px">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">个人信息</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
            <a onclick="login_but()" target="_blank" class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">退出登录</a>
                        <ol class="breadcrumb">
                            <li><a href="../dash/dashboard?uid=${tbuser1[0].uid}">首页</a></li>
                            <li class="active"><a href="../indi/individual?uid=${tbuser1[0].uid}">个人信息</a></li>
                            <li class="active"><a href="../indi/individualupdate?uid=${tbuser1[0].uid}">修改密码</a></li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <!-- .row -->
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <div class="white-box">
                            <div class="user-bg"> <img width="100%" alt="user" src="../static/picture/img1.jpg">
                                <div class="overlay-box">
                                    <div class="user-content">
                                        <a href="javascript:void(0)"><img src="../static/picture/varun.jpg" 
                                                class="thumb-lg img-circle" alt="img"></a>
                                        <h4 class="text-white">${tbuser1[0].username}</h4>
                                        <h5 class="text-white">${tbuser1[0].postbox}</h5>
                                    </div>
                                </div>
                            </div>
                             <div class="user-btm-box">
                                <div class="col-md-4 col-sm-4 text-center">
                                    <p class="text-purple"><i class="ti-facebook"></i></p>
                                 <a href="../blan/blank?uid=${tbuser1[0].uid}">   <h1 class="text-info">${tbuseroverall}</h1></a>
                                </div>
                                <div class="col-md-4 col-sm-4 text-center">
                                    <p class="text-blue"><i class="ti-twitter"></i></p>
                                   <a href="../blan/blankexpenditure?uid=${tbuser1[0].uid}"> <h1 class="text-success">${tbuserExpenditure}</h1></a>
                                </div>
                                <div class="col-md-4 col-sm-4 text-center">
                                    <p class="text-danger"><i class="ti-dribbble"></i></p>
                                    <a href="../blan/blankpay?uid=${tbuser1[0].uid}"><h1 class="text-danger">${tbuserPay}</h1></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                            <form class="form-horizontal form-material">
                            	<div class="form-group">
                                    <label class="col-md-12">用户名</label>
                                    <div class="col-md-12">
                                        <input type="text" 	value="${tbuser1[0].username}"
                                            class="form-control form-control-line"> </div>
                                </div>
                            
                                <div class="form-group">
                                    <label class="col-md-12">旧密码</label>
                                    <div class="col-md-12">
                                        <input type="text" id="password1"	value="${tbuser1[0].password}"
                                            class="form-control form-control-line"> </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-12">新密码</label>
                                    <div class="col-md-12">
                                        <input type="text" 	id="password"
                                            class="form-control form-control-line"> </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-12">确认密码</label>
                                    <div class="col-md-12">
                                        <input type="text" 	id="password2"
                                            class="form-control form-control-line"> </div>
                                </div>
                               
                                <div class="form-group">
                                    <div class="col-sm-12">
                                    <a onclick='individualupdate_but()' class="btn btn-success">
                                        	确定
                                        </a>
                                        <a href="../indi/individual?uid=${tbuser1[0].uid}" class="btn btn-success">
                                       	 取消
                                        </a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
            <footer class="footer text-center"> 2017 &copy;郝光辉</footer>
        </div>
        <!-- /#page-wrapper -->
    </div>
    
    
        <script type="text/javascript">
	
	//提交表单
	function individualupdate_but(){
		if($('#password1').val()==$('#password').val()){
			alert('新密码与旧密码相同!');
			console.log(username);
			
			return false;
		}else if($('#password').val()==null||$('#password').val()==''){
			alert('新密码不能为空!');
			console.log(password);
			return false;
		}
		else if($('#password2').val()==null||$('#password2').val()==''){
			alert('确认密码不能为空!请输入密码');
			console.log(password);
			return false;
		}
		else if($('#password').val()!=$('#password2').val()){
			alert('两次密码不相同,请重新输入!');
			console.log(password);
			return false;
		}
		$.ajax({
	 	 	type:"post", //请求方式 get，post
 	 	 	url:"${pageContext.request.contextPath}/indi/update",
 	 	 	data:{
 	 	 		"uid":"${sessionScope.user.uid}",
 	 	 		"password":$('#password').val()
 	 	 	},
 	 	 	dataType:"json",
 	 	 	async:true,  //是否异步,默认true
 		 	success:function(data){ //data 返回值	
 		 		
 		 		console.log(data);
 		 		if(data!=0){
 		 			 alert("更新密码成功");
 		 	 	 	 location.href='${pageContext.request.contextPath}/indi/individual?uid=${sessionScope.user.uid}';
 		 	 	 	 
 		 	 	  }
 		 		else{
 		 	 	 	 alert("更新失败!");
 		 	 	  }
 			}
 	 	 	
	 	})
	}
	
	
	
	  //跳登录点击事件
	function login_but(){
				var r=confirm("确定退出到登录界面么？");
				if (r==true){
					location.href='${pageContext.request.contextPath}/user/login1';
				  }
				else {
					location.href='${pageContext.request.contextPath}/indi/individualupdate?uid=${sessionScope.user.uid}';
				}

	  }
	</script>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="../static/js/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../static/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../static/js/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="../static/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="../static/js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="../static/js/custom.min.js"></script>
</body>

</html>