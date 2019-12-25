<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <title>记录管理</title>
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
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">记录管理</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                         <a onclick="login_but()" target="_blank" class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">退出登录</a>
                        <ol class="breadcrumb">
                            <li><a href="../dash/dashboard?uid=${tbuser1[0].uid}">首页</a></li>
                            <li class="active"><a href="../shee/sheet?uid=${tbuser1[0].uid}">记录管理</a></li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title">记录管理
                            <a onclick="delete_but()" class="btn btn-danger" style="float:right;margin-left: 5px;">删除</a>
                            <a onclick="update_but()"  class="btn btn-success" style="float:right;margin-left: 5px;">修改</a>
                            <a href="../shee/sheetinsert?uid=${tbuser1[0].uid}"  class="btn btn-right" style="float:right;margin-left: 5px;background:#707cd2;border: 1px solid #707cd2;color: #fff;">新增</a>
                            </h3>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                        <td>
                                         <input type="checkbox"  id="checkAll"  value="" onclick="checkAll()" /></td> 
                                            <th>#</th>
                                   			<th>类别</th>
                                            <th>记录详情</th>
                                            <th>状态</th>
                                            <th>时间</th>
                                            <th>金钱</th>
                                        </tr>
                                    </thead>
                                 <tbody id="body">
											<c:forEach  items="${tbuser}"  var="tak">
											
												<c:forEach  items="${tak.takenotes}"  var="taks" varStatus="xh" >
												
												
                                       <tr>
                                       		<td><input type="checkbox" name="id" id="id" value="${taks.id}"/></td>
									 		<td class="${taks.status=='支入'?'text-success':'text-danger'}">${xh.index+1}</td>
									 		<td class="${taks.status=='支入'?'text-success':'text-danger'}">${taks.classbie}</td>
                                            <td class="txt-oflo ${taks.status=='支入'?'text-success':'text-danger'}">${taks.detail}</td>
                                            <td class="${taks.status=='支入'?'text-success':'text-danger'}">${taks.status}</td>
                                            <td class="txt-oflo ${taks.status=='支入'?'text-success':'text-danger'}"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"  value="${taks.time}" /></td>
                                            <td><span class="${taks.status=='支入'?'text-success':'text-danger'}" >$${taks.status=='支入'?'':'-'}${taks.money}</span></td>
                                          
                                        </tr>
                                            </c:forEach>
                                        	</c:forEach>
									 		
									 		
					
                                    </tbody>
                                </table>                              
                            </div>
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
            function checkAll(){
                //1.获取编号前面的复选框
                var checkAllEle = document.getElementById("checkAll");
                //2.对编号前面复选框的状态进行判断
                if(checkAllEle.checked==true){
                    //3.获取下面所有的复选框
                    var checkOnes = document.getElementsByName("id");
                    //4.对获取的所有复选框进行遍历
                    for(var i=0;i<checkOnes.length;i++){
                        //5.拿到每一个复选框，并将其状态置为选中
                        checkOnes[i].checked=true;
                    }
                }else{
                    //6.获取下面所有的复选框
                    var checkOnes = document.getElementsByName("id");
                    //7.对获取的所有复选框进行遍历
                    for(var i=0;i<checkOnes.length;i++){
                        //8.拿到每一个复选框，并将其状态置为未选中
                        checkOnes[i].checked=false;
                    }
                }
            }
        </script>


    
   <script type="text/javascript">
   
   //修改
	//提交表单
	function update_but(){
		//获取复选框
		//循环遍历获取id
			   var s=''; 
		var put = $('input[name="id"]:checked');
			   
		if(put.length==0){
			alert('未选中修改内容');
			
			return false;
		}else if(put.length>1){
			alert('不可多选');
			console.log(s);
			return false;
		}else{
			 s=put.val(); 
		}
		
		$.ajax({
	 	 	type:"post", //请求方式 get，post
	 	 	url:"${pageContext.request.contextPath}/shee/updateid",
	 	 	data:{"id":s,
	 	 	},
	 	 	dataType:"json",
	 	 	async:true,  //是否异步,默认true
		 	success:function(data){ //data 返回值
		 		
		 	 	 	 location.href='${pageContext.request.contextPath}/shee/sheetupdate?uid=${sessionScope.user.uid}&id='
		 	 	 			 +data.id+'&detail='
		 	 	 			 +data.status+'&status='
		 	 	 			 +data.detail+'&time='
		 	 	 			 +data.time+'&money='
		 	 	 			 +data.money+'&userId='+data.userId;
		 	 	 	 
		 	 	  }
	 	})
	}
	
   //删除
	//提交表单
	function delete_but(){
			//获取复选框
			//循环遍历获取id
				   var s=''; 
					var a=0;
				   $('input[name="id"]:checked').each(function(){ 
				     s+=$(this).val()+','; 
				     a++;
				   }); 
				    console.log(s);
				    console.log(a);
				if(s==''){
						alert('未选中删除内容');
						
						return false;
					}
				var r=confirm("确定删除"+a+"条数据");
				if (r==true){
					$.ajax({
				 	 	type:"post", //请求方式 get，post
				 	 	url:"${pageContext.request.contextPath}/shee/delete",
				 	 	data:{"id":s,
				 	 	},
				 	 	dataType:"json",
				 	 	async:true,  //是否异步,默认true
					 	success:function(data){ //data 返回值	
					 		if(data!=0){
					 			console.log(data);
					 			 alert("成功删除"+data+"条");
					 	 	 	 location.href='${pageContext.request.contextPath}/shee/sheet?uid=${sessionScope.user.uid}';
					 	 	 	 
					 	 	  }
					 		else{
					 			console.log(data);
					 	 	 	 alert("删除失败!");
					 	 	  }
						}
				 	 	
				 	})
				  }
				else {
					location.href='${pageContext.request.contextPath}/shee/sheet?uid=${sessionScope.user.uid}';
				}
	
	}
   
    
    //跳登录点击事件
	function login_but(){
				var r=confirm("确定退出到登录界面么？");
				if (r==true){
					location.href='${pageContext.request.contextPath}/user/login1';
				  }
				else {
					location.href='${pageContext.request.contextPath}/shee/sheet?uid=${sessionScope.user.uid}';
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