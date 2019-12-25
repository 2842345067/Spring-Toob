<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册界面</title>
<link rel="stylesheet" type="text/css" href="../css/css.css" />
</head>
<body>
		<!-- 背景视频代码 -->
		<!-- muted静音标签 -->
<video autoplay loop muted style="width:100%;">
	<source src="../img/初音V4.mp4" >
	<source src="../img/初音V4.webm">
	<source src="../img/初音V4.ogg">
</video>
<style>
	body{
	margin:0;
	}
	video{
	position: fixed;
	right: 0;
	bottom: 0;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -9999;
	}
</style>


 <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>


		<!-- 登录代码 -->
<form name="form1" action="" method="post">

     		 <h1>用户账单注册界面</h1>
            <input class=input_1  size=15  name="username" id="username"  placeholder=用户名><br />
          	 <input class=input_1 type="text" size=15 name="password2" id="password2" placeholder=密码><br />
           <input class=input_1 type="text" size=15 name="password1" id="password1" placeholder=确认密码><br />
  	 		<span class="radio_box">
               <input type="radio" id="radio_1" name="gettype" value="users" checked>
               <label for="radio_1"></label>
              普通用户
        	</span>
    		<span class="radio_box">
               <input type="radio" id="radio_2" name="gettype" value="admin">
               <label for="radio_2"></label>
               管理员
       		</span><br/>
            <INPUT class=input_3 id="login_but1" type="button" onclick='register_but()' value="注册">
             <input class=input_3 type="button" src="" onclick='location.href=("../user/login1")' value="取消" />
             <input class=input_3 type="button"  onclick=document.form1.reset() value="重置" /> 
     	</form>
<script type="text/javascript">
	
	//登录
	function register_but(){
		console.log("执行了")
		if($('#username').val()==null||$('#username').val()==''){
			alert('用户名不能为空!请输入用户名');
			console.log(username);
			return false;
		}else if($('#password2').val()==null||$('#password2').val()==''){
			alert('确认密码不能为空!请输入确认密码');
			console.log(password);
			return false;
		}else if($('#password1').val()==null||$('#password1').val()==''){
			alert('密码不能为空!请输入密码');
			console.log(password);
			return false;
		}
		else if($('#password2').val()!=$('#password1').val()){
			alert('密码与确认密码不同!');
			console.log(password);
			return false;
		}
		$.ajax({
	 	 	type:"post", //请求方式 get，post
 	 	 	url:"${pageContext.request.contextPath}/user/insert",
 	 	 	data:{"username":$('#username').val(),"password":$('#password2').val()},
 	 	 	async:true,  //是否异步,默认true
 		 	success:function(data){ //data 返回值
				console.log(data)
 		 		if(data!=0){
 		 			 alert("注册成功");
 		 	 	 	 location.href='${pageContext.request.contextPath}/user/register';
 		 	 	  }
 		 		else{
		 	 	 	 alert("注册失败,以有该用户!");
		 	 	  }
 			}
 	 	 	
	 	})
	}

</script>
     	
     	
     	<script type="text/javascript" src="../js/jquery.js"></script>  
        <script type="text/javascript" src="../js/script.js"></script>  
</body>
</html>