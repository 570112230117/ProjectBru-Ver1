//radio
//$("#warranty1").val();
var warranty = "";
$(document).ready(function() {
	$("#warranty").change(function() {
		warranty = "นอกประกัน";
	});
	$("#warranty1").change(function() {
		warranty = "ในประกัน";
	});
});

//insert
function insertConfirm() {
//	console.log(warranty)
	
	var repairBean = {
			repairDateStr : $('#repairDate').val(),//id,
			repairname : $('#exampleFormControlInput1').val(),//id
			repairAddress : $('#exampleFormControlTextarea1').val(),
			repairPhone : $('#exampleFormControlInput2').val(),
			repairEmail : $('#email').val(),
			repairWarranty : warranty,
			repairSerialnumber : $('#serialnumber').val(),
			repairType : $('#a').val(),
			repairProduct : $('#b').val(),
			repairWaste : $('#Waste').val(),
			repairDetail : $('#detail').val(),
			repairAppointment : $('#appointment').val(),
			
	}

	$.ajax({
		type : "POST",
		url : "/insertRepair",
		contentType : "application/json; charset=utf-8",
		data : JSON.stringify(repairBean),
		dataType : "json",
		success : function(msg) {
		console.log(msg)
		window.location.href = msg.page;
		},
		error: function() {
			window.location.href = "table";
			
		}
	});
	
}
