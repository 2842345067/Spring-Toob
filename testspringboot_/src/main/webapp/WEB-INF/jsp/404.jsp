<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>404页面</title>
    <!-- Bootstrap Core CSS -->
    <link href="../static/css/bootstrap.min.css" rel="stylesheet">
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

<body>
    <!-- Preloader -->
    <section id="wrapper" class="error-page">
        <div class="error-box">
            <div class="text-center">
                <img alt="" src="../static/images/bilibili.png">
                <h3 class="text-uppercase">找不到网页!</h3>
                <p class="text-muted m-t-30 m-b-30">您希望尝试找到回家的路</p>
                <a href="../dash/dashboard?uid=${tbuser1[0].uid}" class="btn btn-danger btn-rounded waves-effect waves-light m-b-40">回到家</a> </div>
          
        </div>
    </section>
    <!-- jQuery -->
    <script src="../static/js/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../static/js/bootstrap.min.js"></script>
</body>

</html>
</html>