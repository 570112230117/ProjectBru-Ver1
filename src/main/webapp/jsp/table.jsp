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
<%
	List<RepairBean> list = null;
%>
<%
	list = (List<RepairBean>) request.getSession().getAttribute("listRepair");
%>
</head>
<body>
	<div  style="margin-top: 1cm; margin-left: 1cm; margin-right: 1cm; ">
		<table class="table table-bordered">
			<thead>
				<tr style="background: #787878;; color: white;">
					<th class="text-center">วันที่แจ้งซ่อม</th>
					<th class="text-center">ชื่อลูกค้า</th>
					<th class="text-center">การประกัน</th>
					<th class="text-center">อาการเสีย</th>
					<th class="text-center">นัดวันซ่อม</th>				
					<th class="text-center">สาเหตุ / วิธีแก้ไข</th>
					<th class="text-center">ผู้รับแจ้ง</th>
					<th class="text-center">ช่างผู้รับผิดชอบ</th>
					<th class="text-center">สถานะ</th>
					<th class="text-center">รายละเอียด</th>

				</tr>
			</thead>
			<tbody>
			<%
				for(int i = 0; i < list.size(); i++){
			%>
			
				<tr class="text-center">
					<td><%=list.get(i).getRepairDateStr() %></td>
					<td><%=list.get(i).getRepairname() %></td>
					<td><%=list.get(i).getRepairWarranty() %></td>
					<td><%=list.get(i).getRepairWaste() %></td>
					<td><%=list.get(i).getRepairAppointment() %></td>
					<td>สาเหตุ</td>
					<td>ผู้รับแจ้ง</td>
					<td>ช่างผู้รับผิดชอบ</td>
					<td>สถานะ</td>
					<td><a onclick=""><span class="glyphicon glyphicon-file">รายละเอียด</span></a></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>