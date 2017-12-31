<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css" />
<link rel="stylesheet" type="text/css" href="css/Style_Account.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />

<title>Website Hội Thảo</title>

</head>
<body>
	<div id="wrapper">
		<!-- Header = Logo + btnUser + Menu -->
		<div id="header">
			<!-- Header top -->
			<div class="header-top">
				<div class="container">
					<div class="pull-left class-local col-xs-12 col-sm-8 col-md-9">
						<div>
							<a href="index.jsp"><img src="img/logo.jpg" height="100px"
								width="800px" /></a>
						</div>
						<div class="clear"></div>
					</div>
					<div id="btn_User">
						<div class="col-xs-12 col-sm-4 col-md-3 " id="header_btn">
							<button type="button" class="btn btn-primary"
								onclick="window.location='Account_Thien.jsp'">
								<span class="glyphicon glyphicon-user"></span> Cá nhân
							</button>
							<button type="button" class="btn btn-default btn-sm"
								onclick="window.location='index.jsp'">
								<span class="glyphicon glyphicon-share"></span> Đăng xuất
							</button>
							<hr />
							<button type="button" class="btn btn-success btn-sm "
								onclick="window.location='Admin_Manager_Post.jsp'">
								<span class="glyphicon glyphicon-edit"></span> Bài viết
							</button>
							<button type="button" class="btn btn-success btn-sm "
								onclick="window.location='Admin_Manager_Check.jsp'">
								<span class="glyphicon glyphicon-thumbs-up"></span> Kiểm duyệt
							</button>
							<hr />
							<button type="button" class="btn btn-success btn-sm "
								onclick="window.location='Admin_Account_Manager.jsp'">
								<span class="glyphicon glyphicon-info-sign"></span> Quản lý tài
								khoản
							</button>
						</div>
					</div>
				</div>
			</div>
			<!-- end header-top -->
			<div class="header-bot">
				<div class="container">
					<div class="pull-left hk-menu">
						<ul id="main-nav" class="menu">
							<li id="menu-item" class="menu-item menu-item-type-custom"><a
								href="index.jsp">Trang chủ</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_CongNghe.jsp">Công Nghệ</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_GiaoDuc.jsp">Giáo Dục</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_GiaiTri.jsp">Giải Trí</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_CuocSong.jsp">Cuộc Sống</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_TheGioi.jsp">Thế Giới</a></li>
							<li id="menu-item" class="menu-item menu-item-type-taxonomy"><a
								href="Subject_LienHe.jsp">Liên hệ</a></li>
						</ul>
					</div>
					<!-- end hk-menu -->
				</div>
			</div>
			<!-- end header-bot -->
		</div>
		<!-- end header -->
		<!-- ====================================================================================================-->
		<!-- Content -->
		<div class="row" id="InfoAccount">
			<div class="row" id="Post_Action" style="padding-left: 40px;">
				<h1>
					<strong>THÔNG TIN CÁ NHÂN</strong> <small> |Thông tin tài khoản</small>
				</h1>
			</div>
			<div class="col-xs-10 col-sm-5 col-md-5">
				<img src="img/thien.jpg">
			</div>
			<div class="col-xs-12 col-sm-7 col-md-7">
				<form role="form" action="Account_Thien.jsp">
					<div class="form-group">
						<label>Username:</label> <input type="text" class="form-control"
							id="txtUsername" name="Username" value="ThienPhan"
							disabled="disabled"> <label>Password:</label> <input
							type="Password" name="Password" class="form-control" id="txtPass"
							value="123456" disabled=""> <label>Họ và
							tên:</label> <input type="text" class="form-control" id="txtFullname"
							name="Fullname" value="Phan Thiện"> <label>Ngày
							sinh:</label> <input type="date" class="form-control" id="txtBirthday"
							name="Birthday" value="1997-11-09"> 
							 <label>Số
							điện thoại:</label> <input type="telephone" class="form-control"
							id="txtPhone" name="Phone" value="0989346582">  <label>Vai
							trò:</label> <br /> <input type="checkbox" name="admin"
							value="Adminitrator" checked="checked" disabled="">
						Adminitrator <br /> <input type="checkbox" name="writer"
							value="Writer" disabled=""> Writer <br /> <input
							type="checkbox" name="reviewer" value="Reviewer" disabled="">
						Reviewer <br /> <input type="submit" name="submit"
							value="Lưu thay đổi" onclick="alert('Đã lưu thay đổi')"
							class="form-control btn-success">
					</div>
				</form>
			</div>
		</div>
		<!-- end content -->
		<!-- ====================================================================================================-->
		<div id="footer">
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-12 col-xs-12">
							<div class="ft-intro">
								<h3>Thông tin chung</h3>
								<article class="post-content">
									<p>Trang chuyên đưa các tin túc hội thảo, bài viết chuẩn bị
										hội thảo,...</p>
								</article>
								<a style="color: #FFE30A" href="#"></a>
							</div>
							<!-- end hk-intro -->
						</div>

						<div class="col-md-3 col-sm-12 col-xs-12">
							<div class="ft-info">
								<h3>Thông tin liên hệ</h3>
								<p>
									<span>Địa chỉ: 1 Võ Văn Ngân, Phường Linh Chiểu, Quận
										Thủ Đức, Thành phố Hồ Chí Minh.</span> <span>E-mail:
										15110321@student.hcmute.edu.vn</span> <span>Điện thoại:
										01697421797</span>
								</p>

								<ul class="social">
									<li><a href="https://www.facebook.com/nhock.hugo"
										class="hk-ic hk-f">Facebook</a></li>
									<li><a href="go" class="hk-ic hk-g">Google</a></li>
								</ul>
							</div>
							<!-- end ft-info -->
						</div>
					</div>
				</div>
			</div>
			<!-- end footer-top -->
			<div class="footer-bot">
				<div class="container">
					<p class="pull-left">Designer by Tran Phieu</p>
					<p class="pull-right">Chính sách bảo mật</p>
				</div>
			</div>
			<!-- end footer-bot -->
		</div>
		<!-- end footer -->
	</div>
	<!-- ====================================================================================================-->
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/common.js"></script>

</body>
</html>