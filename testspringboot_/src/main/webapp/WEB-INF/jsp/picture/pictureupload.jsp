<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>图片</title>
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
      <script src="http://www.jq22.com/jquery/vue.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="../static/js/html5shiv.js"></script>
    <script src="../static/js/respond.min.js"></script>
<![endif]-->
<style>
            input[type=date]::-webkit-inner-spin-button { visibility: hidden; }
            
</style>
 <style>
    .upload_warp_img_div_del {
      position: absolute;
      top: 6px;
      width: 16px;
      right: 4px;
    }

    .upload_warp_img_div_top {
      position: absolute;
      top: 0;
      width: 100%;
      height: 30px;
      background-color: rgba(0, 0, 0, 0.4);
      line-height: 30px;
      text-align: left;
      color: #fff;
      font-size: 12px;
      text-indent: 4px;
    }

    .upload_warp_img_div_text {
      white-space: nowrap;
      width: 80%;
      overflow: hidden;
      text-overflow: ellipsis;
    }

    .upload_warp_img_div img {
      max-width: 100%;
      max-height: 100%;
      vertical-align: middle;
    }

    .upload_warp_img_div {
      position: relative;
      height: 100px;
      width: 120px;
      border: 1px solid #ccc;
      margin: 0px 30px 10px 0px;
      float: left;
      line-height: 100px;
      display: table-cell;
      text-align: center;
      background-color: #eee;
      cursor: pointer;
    }

    .upload_warp_img {
      border-top: 1px solid #D2D2D2;
      padding: 14px 0 0 14px;
      overflow: hidden
    }

    .upload_warp_text {
      text-align: left;
      margin-bottom: 10px;
      padding-top: 10px;
      text-indent: 14px;
      border-top: 1px solid #ccc;
      font-size: 14px;
    }

    .upload_warp_right {
      float: left;
      width: 57%;
      margin-left: 2%;
      height: 100%;
      border: 1px dashed #999;
      border-radius: 4px;
      line-height: 130px;
      color: #999;
    }

    .upload_warp_left img {
      margin-top: 32px;
    }

    .upload_warp_left {
      float: left;
      width: 40%;
      height: 100%;
      border: 1px dashed #999;
      border-radius: 4px;
      cursor: pointer;
    }

    .upload_warp {
      margin: 14px;
      height: 130px;
    }

    .upload {
      border: 1px solid #ccc;
      background-color: #fff;
      width: 650px;
      box-shadow: 0px 1px 0px #ccc;
      border-radius: 4px;
    }

    .hello {
      width: 650px;
      margin-left: 10%;
      text-align: center;
    }
  </style>
</head>

<body class="fix-header">

 <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>

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
                        <h4 class="page-title">图片上传</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                         <a onclick="login_but()" target="_blank" class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">退出登录</a>
                        <ol class="breadcrumb">
                            <li><a href="../dash/dashboard?uid=${tbuser1[0].uid}">首页</a></li>
                           <li class="active"><a href="../pict/picture?uid=${tbuser1[0].uid}">图片</a></li>
                           <li class="active"><a href="../pict/pictureupload?uid=${tbuser1[0].uid}">图片上传</a></li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="white-box">
                            <h3 class="box-title" style="margin-left: 0%;">图片上传</h3>

						<!-- <form action="../fdfs/files-anon/fdfsupload" method="post"
							enctype="multipart/form-data" target="frshowpic" id="myForm">
							<div id="app">
								<div class="hello">
									<div class="upload">
										<div class="upload_warp">
											<div class="upload_warp_left" @click="fileClick">
												<img src="../img/upload.png">
											</div>
											<div class="upload_warp_right" @drop="drop($event)"
												@dragenter="dragenter($event)" @dragover="dragover($event)">
												或者将文件拖到此处</div>
										</div>
										<div class="upload_warp_text">
											选中{{imgList.length}}张文件，共{{bytesToSize(this.size)}}</div>
										<input @change="fileChange($event)" type="file"
											id="upload_file" multiple style="display: none" onchange="showImg(this)" />
										<div class="upload_warp_img" v-show="imgList.length!=0">
											<div class="upload_warp_img_div"
												v-for="(item,index) of imgList">
												<div class="upload_warp_img_div_top">
													<div class="upload_warp_img_div_text">
														{{item.file.name}}</div>
													<img src="../img/del.png" class="upload_warp_img_div_del"
														@click="fileDel(index)">
												</div>
												<img :src="item.file.src">
											</div>
												 <input type="submit" value="上传图片">
										</div>

									</div>
									  <input type="submit" class="btn btn-success" style="margin-top: 10px; margin-left: 5px;" value="保存">
									   <a href="../pict/picture?uid=${tbuser1[0].uid}" class="btn btn-success" style="margin-top: 10px; margin-left: 5px;">取消</a>
								</div>
							</div>
						
						</form>
						 -->
						
						
						
						 <!-- 要将父布局的position设置为relative，父布局将无法包裹input -->
<form action="../fdfs/files-anon/fdfsupload" method="post" enctype="multipart/form-data" target="frshowpic" >
    <div style="position: relative;">
        <!--设置input的position为absolute，使其不按文档流排版，并设置其包裹整个布局 -->
        <!-- 设置opactity为0，使input变透明 -->
        <!-- 只接受jpg，gif和png格式 -->
        <input id="upload-input" name="file" style="position: absolute; top: 0; bottom: 0; left: 0;right: 0; opacity: 0;" type="file" accept="image/gif, image/jpg, image/png" onchange="showImg(this)" />
        <!-- 自定义按钮效果 -->
        
        <div style="text-align: top">
            <span style="font-size: 12px;">上传文件：</span>
            <img id="upload" src="../img/xiazaitupian.jpg" style="width: 40px; height: 40px; vertical-align: middle;" />
        </div>
    </div>
    
  <input type="submit" class="btn btn-success" style="margin-top: 10px; margin-left: 5px;" value="保存">
    	</form>
						
						

					</div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
            <footer class="footer text-center"> 2019 &copy; 郝光辉 </footer>
        </div>
        <!-- ============================================================== -->
        <!-- End Page Content -->
        <!-- ============================================================== -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    
    <script type="text/javascript">
    //跳登录点击事件
	function login_but(){
				var r=confirm("确定退出到登录界面么？");
				if (r==true){
					location.href='${pageContext.request.contextPath}/user/login1';
				  }
				else {
					location.href='${pageContext.request.contextPath}/pict/picture?uid=${sessionScope.user.uid}';
				}
	
	}
    
    </script>
        <script src="../static/js/jquery.min.js"></script>



<script type="text/javascript">

//上传图片
function upload_but(){
	$.ajax({
 	 	type:"post", //请求方式 get，post
 	 	url:"${pageContext.request.contextPath}/pict/pictureupload",
 	 	data:{"id":s,
 	 	},
 	 	dataType:"json",
 	 	async:true,  //是否异步,默认true
	 	success:function(data){ //data 返回值
	 		
	 	 	 	 location.href='${pageContext.request.contextPath}/pict/picture?uid=${sessionScope.user.uid}'
	 	 	 	 
	 	 	  }
 	})
}

</script>
<script type="text/javascript">
    function showImg(input) {
        var file = input.files[0];
        var reader = new FileReader()
        // 图片读取成功回调函数
        reader.onload = function(e) {
            document.getElementById('upload').src=e.target.result;
        }
        reader.readAsDataURL(file);
    }
</script>


  <!--  <script>
  //  import up from  './src/components/Hello'
  var app = new Vue({
    el: '#app',
    data () {
      return {
        imgList: [],
        size: 0
      }
    },
      methods: {
          fileClick() {
              document.getElementById('upload_file').click()
          },
          fileChange(el) {
              if (!el.target.files[0].size) return;
              this.fileList(el.target);
              el.target.value = ''
          },
          fileList(fileList) {
              let files = fileList.files;
              for (let i = 0; i < files.length; i++) {
                  //判断是否为文件夹
                  if (files[i].type != '') {
                      this.fileAdd(files[i]);
                  } else {
                      //文件夹处理
                      this.folders(fileList.items[i]);
                  }
              }
          },
          //文件夹处理
          folders(files) {
              let _this = this;
              //判断是否为原生file
              if (files.kind) {
                  files = files.webkitGetAsEntry();
              }
              files.createReader().readEntries(function (file) {
                  for (let i = 0; i < file.length; i++) {
                      if (file[i].isFile) {
                          _this.foldersAdd(file[i]);
                      } else {
                          _this.folders(file[i]);
                      }
                  }
              })
          },
          foldersAdd(entry) {
              let _this = this;
              entry.file(function (file) {
                  _this.fileAdd(file)
              })
          },
          fileAdd(file) {
              //总大小
              this.size = this.size + file.size;
              //判断是否为图片文件
              if (file.type.indexOf('image') == -1) {
                  file.src = '../img/wenjian.png';
                  this.imgList.push({
                      file
                  });
              } else {
                  let reader = new FileReader();
                  reader.vue = this;
                  reader.readAsDataURL(file);
                  reader.onload = function () {
                      file.src = this.result;
                      this.vue.imgList.push({
                          file
                      });
                  }
              }
          },
          fileDel(index) {
              this.size = this.size - this.imgList[index].file.size;//总大小
              this.imgList.splice(index, 1);
          },
          bytesToSize(bytes) {
              if (bytes === 0) return '0 B';
              let k = 1000, // or 1024
                  sizes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'],
                  i = Math.floor(Math.log(bytes) / Math.log(k));
              return (bytes / Math.pow(k, i)).toPrecision(3) + ' ' + sizes[i];
          },
          dragenter(el) {
              el.stopPropagation();
              el.preventDefault();
          },
          dragover(el) {
              el.stopPropagation();
              el.preventDefault();
          },
          drop(el) {
              el.stopPropagation();
              el.preventDefault();
              this.fileList(el.dataTransfer);
          }
      }
  })
  
  

</script>-->









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