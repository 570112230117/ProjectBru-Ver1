<%@page import="com.bru.model.RepairBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="../layout/menu.jsp"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/css/amnuay.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%
	List<RepairBean> list = null;
%>

<%
	list = (List<RepairBean>) request.getSession().getAttribute("listRepair");
%>
</head>
<body>
	<div class="container" style="margin-top: 1cm;">
		<form>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<h4 class="glyphicon glyphicon-pencil">ข้อมูลผู้แจ้ง</h4>
						<br> <br>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">วันที่แจ้งซ่อม</label>
							<div class="col-sm-8">
								<input type="text" readonly="readonly" class="form-control" id="date"
								value="<%=list.get(0).getRepairDateStr()%>">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">ชื่อผู้แจ้ง</label>
							<div class="col-sm-8">
								<input type="text"  readonly="readonly" class="form-control" id="name" value="<%=list.get(0).getRepairname()%>">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">ที่อยู่ผู้แจ้ง</label>
							<div class="col-sm-8">
								<textarea class="form-control" readonly="readonly"  id="address"
									rows="3"  ></textarea>
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">โทรศัพท์</label>
							<div class="col-sm-8">
								<input type="text" readonly class="form-control" id="phone" value="<%=list.get(0).getRepairPhone()%>">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">อีเมล</label>
							<div class="col-sm-8">
								<input type="text" readonly class="form-control" id="email" value="<%=list.get(0).getRepairEmail()%>">
							</div>
						</div>
					</div>
					<div class="form-group">
						<h4 class="glyphicon glyphicon-list-alt">อาการเสีย</h4>
						<br> <br>
								<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">หมายเลขเครื่อง</label>
							<div class="col-sm-8">
								<input type="text" readonly class="form-control" value="หมายเลขเครื่อง">
							</div>
						</div>
							<div class="form-group row">
							<label for="inputPassword" class="col-sm-4 col-form-label">ประเภทสินค้า</label>
							<div class="col-sm-8">
								<input type="text" readonly class="form-control" value="ประเภทสินค้า">
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
							<input type="text" readonly class="form-control" id="staticEmail"
								value="ช่าง A">
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
				<button type="submit" class="btn btn-primary">บันทึกการเปลี่ยนแปลง</button>
				<button type="button" class="btn btn-light">ยกเลิก</button>
			</div>
		</form>
	</div>
	<br><br><br><br>
</body>
<script>

var show = {
		repairDateStr : $('#date').val(),//id,
		repairname : $('#name').val(),//id
		repairAddress : $('#address').val(),
		repairPhone : $('#phone').val(),
		repairEmail : $('#email').val(),
}

$.ajax({
	type : "GET",
	url : "/repairmen",
	contentType : "application/json; charset=utf-8",
	data : JSON.stringify(show),
	dataType : "json",
	success : function(msg) {
	console.log('Success')
	$('#repairBean').val();
	}
});
</script>
<!-- $('#a').append('<option value="' + msg[i].id + '">' + msg[i].typeName + '</option>'); -->
<jsp:include page="../layout/footer.jsp"></jsp:include>
</html>