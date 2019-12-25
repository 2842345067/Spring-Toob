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
    <title>记账系统</title>
      <link rel="stylesheet" type="text/css" href="../assets/waifu.css"/>
        <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="../static/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../static/css/sidebar-nav.min.css" rel="stylesheet">
    <!-- toast CSS -->
    <link href="../static/css/jquery.toast.css" rel="stylesheet">
    <!-- morris CSS -->
    <link href="../static/css/morris.css" rel="stylesheet">
    <!-- chartist CSS -->
    <link href="../static/css/chartist.min.css" rel="stylesheet">
    <link href="../static/css/chartist-plugin-tooltip.css" rel="stylesheet">
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



    <!-- ============================================================== -->
    <!-- Wrapper -->
    <!-- ============================================================== -->
    
 <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
   
  <nav class="navbar navbar-default navbar-static-top m-b-0">
                      <!-- 小板娘 -->
  <div class="waifu" id="waifu" style="bottom: 0; left: auto; right: 18px; margin-left: auto; margin-right: auto;">
    <div class="waifu-tips" style="opacity: 1;"></div>
    <canvas id="live2d" width="250" height="250" class="live2d" style=""></canvas>
    <div class="waifu-tool" style="">
      <!--<span class="fui-home"></span>-->
      <span class="fui-chat"></span>
      <span class="fui-eye"></span>
      <span class="fui-user"></span>
      <span class="fui-photo"></span>
      <!--<span class="fui-info-circle"></span>-->
     <!-- <span class="fui-cross"></span>-->
    </div>
  </div>
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
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu"></span>导航</h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                   
                        <a href="../dash/dashboard?uid=${tbuser1[0].uid}" class="waves-effect" ><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>首页</a>
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
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">           
                        <h4 class="page-title">图示</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <a onclick="login_but()" target="_blank" class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">退出登录</a>
                        <ol class="breadcrumb">
                      
                            <li><a href="../dash/dashboard?uid=${tbuser1[0].uid}">首页</a></li>
                            <li><a href="../font/fontawesome?uid=${tbuser1[0].uid}">图示</a></li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- ============================================================== -->
                <!-- Different data widgets -->
                <!-- ============================================================== -->
                <!-- .row -->
                
                <!--/.row -->
                <!--row -->
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                        <div class="white-box">
                            <h3 class="box-title">记录视图</h3>
                            <ul class="list-inline text-right">
                                <li>
                                    <h5><i class="fa fa-circle m-r-5 text-info"></i>支入</h5> </li>
                                <li>
                                    <h5><i class="fa fa-circle m-r-5 text-inverse"></i>支出</h5> </li>
                            </ul>
                            <div id="ct-visits" style="height: 405px;"></div>
                        </div>
                    </div>
                </div>







                <!-- ============================================================== -->
                <!-- table -->
                <!-- ============================================================== -->
                
   <script src="../assets/live2d.js"></script>
  <script src="../assets/waifu-tips.js"></script>
  <script type="text/javascript">
  
  
  
  //小板娘
    window.onload = function(){
      preInit();
      initModel();
    }
    function getQueryString(name){
      var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
      var r = location.search.substr(1).match(reg);
      if(r != null) return decodeURIComponent(r[2]);
      return null;
    }
    function preInit(){
      var dom = document.querySelector('#waifu');
      var canvas = document.querySelector('#live2d');
      var tips = document.querySelector('.waifu-tips');
      var tool = document.querySelector('.waifu-tool');
      var bottom = getQueryString('bottom') || 0;
      var right = getQueryString('right') || 18;
      if(bottom){
        dom.style.bottom = bottom+'px';
      }
      if(right){
        dom.style.right = right+'px';
      }
      var innerWidth = window.innerWidth;
      var innerHeight = window.innerHeight;
      if(innerHeight>1.2*innerWidth){
        dom.className = 'waifu mobile';
        dom.style.left = 0;
        dom.style.right = 0;
        dom.style.margin = 'auto 0';
        canvas.width = window.innerWidth-60;
        canvas.height = (window.innerWidth-60)*250/280;
        canvas.style.left = '30px';
        tool.style['transform-origin'] = '100% 0';
        tool.style['transform'] = 'scale(5)';
      } else {
        dom.style.left = 'auto';
        dom.style.right = right+'px';
      }
    }
    
    
    //跳登录点击事件
	function login_but(){
				var r=confirm("确定退出到登录界面么？");
				if (r==true){
					location.href='${pageContext.request.contextPath}/user/login1';
				  }
				else {
					location.href='${pageContext.request.contextPath}/dash/dashboard?uid=${sessionScope.user.uid}';
				}
	
	}
    
    
    
  </script>
                
                

    <script type="text/javascript" src="dtxt1.js"></script>
             


    <script src="../static/js/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../static/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../static/js/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="../static/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="../static/js/waves.js"></script>
    <!--Counter js -->
    <script src="../static/js/jquery.waypoints.js"></script>
    <script src="../static/js/jquery.counterup.min.js"></script>
    <!-- chartist chart -->
    <script src="../static/js/chartist.min.js"></script>
    <script src="../static/js/chartist-plugin-tooltip.min.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="../static/js/jquery.sparkline.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="../static/js/custom.min.js"></script>
    <script src="../static/js/dashboard1.js"></script>
    <script src="../static/js/jquery.toast.js"></script>
    
    
    
    <script type="text/javascript">
    new Chartist.Line('#ct-visits', {
        labels: ['1', '2', '3', '4', '5', '6','7', '8', '9', '10', '11', '12'],
        series: [
   [200, 100, 500, 400, 1500, 300, 500, 400,600, 200, 700, 400, 500, 300, 500, 400]
   , [100, 200, 700, 400, 1500, 300, 500, 400,600, 200, 700, 400, 500, 300, 500, 400]
 ]
    }, {
        top: 0,
        low: 0,
        showPoint: true,
        fullWidth: true,
        plugins: [
   Chartist.plugins.tooltip()
 ],
        axisY: {
            labelInterpolationFnc: function (value) {
                return (value / 1) + '$';
            }
        },
        showArea: true
    });
    </script>
</body>

</html>
