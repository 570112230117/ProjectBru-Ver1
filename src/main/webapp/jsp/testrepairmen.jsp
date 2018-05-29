<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Welcome to Project</title>
</head>


<body class="w3-light-grey w3-content" style="max-width: 1600px">

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
		style="z-index:3;width:300px;" id="mySidebar">
	<div class="w3-container">
		<a href="#" onclick="w3_close()"
			class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey"
			title="close menu"> <i class="fa fa-remove"></i></a>

		<p class="w3-text-grey">Simple web and system</p>
	</div>
	<div class="w3-bar-block">
		<a href="gototabel" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="	fa fa-automobile fa-fw w3-margin-right"></i>ลงทะเบียนรับประกันสินค้า</a>
		<a href="gotofist" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="fa fa-address-book-o fa-fw w3-margin-right w3-text-teal">
		</i>แจ้งซ่อม</a> <a href="selidcard" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="fa fa-address-book-o fa-fw w3-margin-right w3-text-teal">
		</i>ดูรายการซ่อม</a> <a href="msg" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"><i
			class="fa fa-address-book-o fa-fw w3-margin-right w3-text-teal">
		</i>ติดต่อเรา</a> <a href="logout" onclick="w3_close()"
			class="w3-bar-item w3-button w3-padding w3-text-teal"> <i
			class="	fa fa-automobile fa-fw w3-margin-right"></i>เข้าสู่ระบบ
		</a>
	</div>
	</nav>

	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px">

		<!-- Header -->
		<header id="portfolio"> <a href="#"><img
			class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
		<span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey"
			onclick="w3_open()"><i class="fa fa-bars"></i></span>
		<div class="w3-container"></div>
		</header>
		<div class="container" style="margin-top: 1cm;">
			<form>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<h4 class="glyphicon glyphicon-pencil">ข้อมูลผู้แจ้ง</h4>
							<br> <br>
							<div class="form-group row">
								<label for="inputPassword" class="col-sm-4 col-form-label">วันที่แจ้ง</label>
								<div class="col-sm-8">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword" class="col-sm-4 col-form-label">ชื่อผู้แจ้ง</label>
								<div class="col-sm-8">
									<input type="text" class="form-control">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword" class="col-sm-4 col-form-label">ที่อยู่ผู้แจ้ง</label>
								<div class="col-sm-8">
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3"></textarea>
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword" class="col-sm-4 col-form-label">โทรศัพท์</label>
								<div class="col-sm-8">
									<input type="text" class="form-control">
								</div>
							</div>
						</div>
						<div class="form-group">
							<h4 class="glyphicon glyphicon-list-alt">อาการเสีย</h4>
							<br> <br>
							<div class="form-group row">
								<label for="exampleFormControlSelect1"
									class="col-sm-4 col-form-label">ประเภท</label>
								<div class="col-sm-8">
									<select class="form-control" id="exampleFormControlSelect1">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label for="exampleFormControlSelect1"
									class="col-sm-4 col-form-label">รุ่นของสินค้า</label>
								<div class="col-sm-8">
									<select class="form-control" id="exampleFormControlSelect1">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label for="exampleFormControlSelect1"
									class="col-sm-4 col-form-label">ยี่ห้อ</label>
								<div class="col-sm-8">
									<select class="form-control" id="exampleFormControlSelect1">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword" class="col-sm-4 col-form-label">อาการเสีย</label>
								<div class="col-sm-8">
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="5"></textarea>
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword" class="col-sm-4 col-form-label">รายละเอียดเพิ่มเติม</label>
								<div class="col-sm-8">
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3"></textarea>
								</div>
							</div>
							<div class="form-group row">
								<label for="exampleFormControlFile1"
									class="col-sm-4 col-form-label">ไฟล์แนบ</label>
								<div class="col-sm-8">
									<input type="file" class="form-control-file"
										id="exampleFormControlFile1">
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<h4 class="glyphicon glyphicon-user">หัวหน้าช่าง</h4>
						<br> <br>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">วันที่ซ่อม</label>
							<div class="col-sm-8">
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-4 col-form-label">ชื่อหัวหน้าช่าง</label>
							<div class="col-sm-8">
								<input type="text" readonly class="form-control"
									id="staticEmail" value="ช่าง A">
							</div>
						</div>
						<div class="form-group row">
							<label for="exampleFormControlSelect1"
								class="col-sm-4 col-form-label">ช่างที่รับผิดชอบ</label>
							<div class="col-sm-8">
								<select class="form-control" id="exampleFormControlSelect1">
									<option>ช่าง 1</option>
									<option>ช่าง 2</option>
								</select>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<h4 class="glyphicon glyphicon-ok">ผลการแก้ไข</h4>
						<br> <br>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">วันที่เสร็จ</label>
							<div class="col-sm-8">
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">สาเหตุ
								/ วิธีแก้</label>
							<div class="col-sm-8">
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="5"></textarea>
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">ค่าใช้จ่าย</label>
							<div class="col-sm-8">
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="form-group row">
							<label for="exampleFormControlFile1"
								class="col-sm-4 col-form-label">ไฟล์แนบ</label>
							<div class="col-sm-8">
								<input type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
						</div>
						<div class="form-group row">
							<label for="exampleFormControlSelect1"
								class="col-sm-4 col-form-label">สถานะ</label>
							<div class="col-sm-8">
								<select class="form-control" id="exampleFormControlSelect1">
									<option>รอตรวจสอบ</option>
									<option>ส่งซ่อม</option>
									<option>ดำเนินการ</option>
									<option>สำเร็จ</option>
									<option>ยกเลิก</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<button type="button" class="btn btn-primary">พิมพ์</button>
				<div class="pull-right">
					<button type="button" class="btn btn-primary">บันทึกการเปลี่ยนแปลง</button>
					<button type="button" class="btn btn-light">ยกเลิก</button>
				</div>
			</form>
		</div>
		<br><br><br><br>
		<!-- End page content -->
	</div>
	<script>
		// Script to open and close sidebar
		function w3_open() {
			document.getElementById("mySidebar").style.display = "block";
			document.getElementById("myOverlay").style.display = "block";
		}

		function w3_close() {
			document.getElementById("mySidebar").style.display = "none";
			document.getElementById("myOverlay").style.display = "none";
		}
		function fncSubmit() {
			if (document.gotohome.email.value == "") {
				alert('Please input Email');
				document.gotohome.username.focus();
				return false;
			}
			if (document.gotohome.password.value == "") {
				alert('Please input password');
				document.gotohome.password.focus();
				return false;
			}
		}
	</script>

</body>
</html>