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
    <title>修改记录管理</title>
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
                        <h4 class="page-title">修改</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <a onclick="login_but()" target="_blank" class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">退出登录</a>
                        <ol class="breadcrumb">
                            <li><a href="../dash/dashboard?uid=${tbuser1[0].uid}">首页</a></li>
                            <li class="active"><a href="../shee/sheet?uid=${tbuser1[0].uid}">记录管理</a></li>
                            <li class="active"><a href="../shee/sheetupdate?uid=${tbuser1[0].uid}">修改</a></li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <!-- .row -->
                <div class="row">
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                            <form class="form-horizontal form-material">
                            <div class="form-group">
                            	<div class="col-md-12">
                            	 <input id="uid" value="${tbuser1[0].uid}" type="hidden"/>
                                  	<label id="time"></label>
                                  <!-- 	<label id="id" style="float:right;">第${tbuseroverall+1}条记录</label> -->
                                  	
                                </div>
                                </div>
                                <div class="form-group">
                                 	<div class="col-md-12">
                   					<input type="hidden" id="statuspanduan" value="${iduser.status}"/>
                                	<input type="radio"  name="radioid" id="" ${iduser.status=='支入'?'checked':''} value="支入" onclick="but(this)">支入
									<input type="radio" name="radioid" id="" ${iduser.status=='支出'?'checked':''} value="支出"  onclick="but(this)">支出
									</div>
                                </div>
                                 <div class="form-group">
                                 <label class="col-md-12">选择类别</label>
                                 <div class="col-md-12">
                                 
								<select id="province">
								    <option>--请选择--</option>
								<c:forEach  items="${classifyTbl}"  var="tbl">
									<option ${tbl.classify==zhiru?"selected":""} value="${tbl.cid}" >${tbl.classify}</option>
									</c:forEach>
									
								</select> 
								<span id="span">
								<select id="city">
								</select>
								</span>
							
								
								<select id="province1">
								    <option>--请选择--</option>
								<c:forEach  items="${classifyruTbl}"  var="tbl">
									<option ${tbl.classifyru==zhiru?"selected":""} value="${tbl.rid}" >${tbl.classifyru}</option>
									</c:forEach>
									
								</select> 
								<span id="span1">
								<select id="city1">
								</select>
								</span>
								</div>
							</div>
                            <div class="form-group">
                                    <label class="col-md-12">记录详情</label>
                                    <div class="col-md-12">
                                    <input type="hidden" id="id" value="${iduser.id}"/>
                                      <input type="hidden" id="userId" value="${iduser.userId}"/>
                                        <textarea rows="5" class="form-control form-control-line" id="detail">${iduser.detail}</textarea>
                                    </div>
                                </div>
                             

                                <div class="form-group">
                                    <label class="col-md-12">金额</label>
                                    <div class="col-md-12">
                                        <input type="text"  id="money" 	value="${iduser.money}" class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                    <a onclick='sheetupdate_but()'  class="btn btn-success">
                                     		 确定
                                        </a>
                                        <a href="../shee/sheet?uid=${tbuser1[0].uid}" class="btn btn-success">
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
	
	//编辑
	function sheetupdate_but(){
		 getCheckedValue("radioid");
		 var selectValue="";   //  selectvalue为radio中选中的值
        function getCheckedValue(name){
                   var radio=document.getElementsByName(name);
                   for(var i=0;i<radio.length;i++){
                       if(radio[i].checked==true) {
                               selectValue=radio[i].value;
                                    break;
                          }
                  }
                   console.log(selectValue);
                    return selectValue;
         }
        if($('#detail').val()==null||$('#detail').val()==''){
			alert('记录详情不能为空!');
			return false;
		}else if($('#money').val()==null||$('#money').val()==''){
			alert('金额不能为空!');
			return false;
		}else if($('input[name="radioid"]:checked').val()==null||$('input[name="radioid"]:checked').val()==''){
			alert('消费方式不能为空!');
			return false;
		}
        if($('input[name="radioid"]:checked').val()=="支入"){
		$.ajax({
	 	 	type:"post", //请求方式 get，post
 	 	 	url:"${pageContext.request.contextPath}/shee/update",
 	 	 	data:{"id":$('#id').val(),
 	 	 		"classbie":$("#province1 option:selected").text()+" > "+$("#city1 option:selected").text(),
 	 	 		"detail":$('#detail').val(),
 	 	 		"status":$('input[name="radioid"]:checked').val(),
 	 	 		"money":$('#money').val(),
 	 	 		"userId":$('#userId').val(),
 	 	 	},
 	 	 	dataType:"json",
 	 	 	async:true,  //是否异步,默认true
 		 	success:function(data){ //data 返回值	
 		 		
 		 		console.log(data);
 		 		if(data!=0){
 		 			 alert("修改成功");
 		 	 	 	 location.href='${pageContext.request.contextPath}/shee/sheet?uid=${sessionScope.user.uid}';
 		 	 	 	 
 		 	 	  }
 		 		else{
 		 	 	 	 alert("修改失败!");
 		 	 	  }
 			}
 	 	 	
	 	})
        }else{
        	$.ajax({
    	 	 	type:"post", //请求方式 get，post
     	 	 	url:"${pageContext.request.contextPath}/shee/update",
     	 	 	data:{"id":$('#id').val(),
     	 	 		"classbie":$("#province option:selected").text()+" > "+$("#city option:selected").text(),
     	 	 		"detail":$('#detail').val(),
     	 	 		"status":$('input[name="radioid"]:checked').val(),
     	 	 		"money":$('#money').val(),
     	 	 		"userId":$('#userId').val(),
     	 	 	},
     	 	 	dataType:"json",
     	 	 	async:true,  //是否异步,默认true
     		 	success:function(data){ //data 返回值	
     		 		
     		 		console.log(data);
     		 		if(data!=0){
     		 			 alert("修改成功");
     		 	 	 	 location.href='${pageContext.request.contextPath}/shee/sheet?uid=${sessionScope.user.uid}';
     		 	 	 	 
     		 	 	  }
     		 		else{
     		 	 	 	 alert("修改失败!");
     		 	 	  }
     			}
     	 	 	
    	 	})
        	
        }
	}

	
	

	  //跳登录点击事件
	function login_but(){
				var r=confirm("确定退出到登录界面么？");
				if (r==true){
					location.href='${pageContext.request.contextPath}/user/login1';
				  }
				else {
					location.href='${pageContext.request.contextPath}/shee/sheetupdate?uid=${sessionScope.user.uid}';
				}

	  }
</script>

    <script>
        var date = new Date()
        var y = date.getFullYear();
        var M = date.getMonth()+1;
        var d = date.getDate(); 
        var H = date.getHours();//得到小时
        var m = date.getMinutes();//得到分钟
        var s = date.getSeconds();//得到秒
        document.getElementById("time").innerHTML = "修改时间："+y+"-"+M+"-"+d+" "+H+":"+m+":"+s;
    </script>
    
     <script src="../static/js/jquery.min.js"></script>
     <script>
 	function  but(e){
  		console.log($(e).val())
  		console.log($("#province"))
  	
  		if($(e).val()=="支入"){
  			document.getElementById("province1").style.display=''
  	      	document.getElementById("span1").style.display=''
  	      	
  	      	document.getElementById("province").style.display='none'
  	        document.getElementById("span").style.display='none'
  		}
  		
  		
  		if($(e).val()=="支出"){
  			document.getElementById("province1").style.display='none'
  	      	document.getElementById("span1").style.display='none'
  	      	
  	      	document.getElementById("province").style.display=''
  	        document.getElementById("span").style.display=''
  		}
  		
  		    
  	}
     
     
         $(function(){
        	 if($("#statuspanduan").val()=='支入'){
        		 document.getElementById("province").style.display='none'
         	        document.getElementById("span").style.display='none'
        	 }
        	 if($("#statuspanduan").val()=='支出'){
        		 document.getElementById("province1").style.display='none'
         	        document.getElementById("span1").style.display='none'
        	 }
        	        
        	        
                 $("#province1").change(function(){
                     //10.清除第二个下拉列表的内容
                 
                     $("#city1").empty();
  
                     //1.获取用户选择的省份
                     var val = this.value;
                     $.ajax({
             	 	 	type:"post", //请求方式 get，post
              	 	 	url:"${pageContext.request.contextPath}/shee/classifyruTbl",
              	 	 	data:{
              	 	 		"rid":val,
              	 	 	},
              	 	 	dataType:"json",
              	 	 	async:true,  //是否异步,默认true
              		 	success:function(data){ //data 返回值	
              		 		console.log(data[0]);
              		 		console.log(data[0].classifyruErTbl);
              		 		var str="";
 							str+='<select id="city1">';
 							$.each(data[0].classifyruErTbl,function(i,type){
 								str+='<option value="'+type.id+'">'+type.classifyruEr+'</option>'
 								
 							})
 							str+='</select>'
 							$('#span1').html(str)
              			}
              	 	 	
             	 	});
                 });
                 $("#province").change(function(){
                     //10.清除第二个下拉列表的内容
                  
                     $("#city").empty();
  
                     //1.获取用户选择的省份
                     var val = this.value;
                     $.ajax({
             	 	 	type:"post", //请求方式 get，post
              	 	 	url:"${pageContext.request.contextPath}/shee/classifyTbl",
              	 	 	data:{
              	 	 		"cid":val,
              	 	 	},
              	 	 	dataType:"json",
              	 	 	async:true,  //是否异步,默认true
              		 	success:function(data){ //data 返回值	
              		 		console.log(data[0]);
              		 		console.log(data[0].classifyErTbl);
              		 		var str="";
 							str+='<select id="city">';
 							$.each(data[0].classifyErTbl,function(i,type){
 								str+='<option value="'+type.id+'">'+type.classifyEr+'</option>'
 								
 							})
 							str+='</select>'
 							$('#span').html(str)
              			}
              	 	 	
             	 	});
                 });
            });
        </script>
        
    <!-- /#wrapper -->
    <!-- jQuery -->
   
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