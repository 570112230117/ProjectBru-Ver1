package com.bru.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Repository;

import com.bru.model.RepairBean;
import com.bru.util.ConnectDB;

@Repository
public class RepairDao {

	Locale localeTH = new Locale("th", "TH");
	Locale localeEN = new Locale("en", "EN");
	SimpleDateFormat formate = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss", localeTH);

	// insert
	public void insert(RepairBean bean) throws Exception{
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
//		String dateStr = formate.format();
//		System.out.println(dateStr+" --- "+dateStr);
		try {
			sql.append(" INSERT INTO repair (repair_date, repair_name, repair_address, repair_phone, repair_email, repair_warranty, repair_serialnumber, repair_type, repair_product, repair_waste, repair_detail, repair_appointment) VALUES (?,?,?,?,?,?,?,?,?,?,?,?) ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			prepared.setTimestamp(1, new java.sql.Timestamp(DateTHToEN(bean.getRepairDateStr()).getTime()));
			prepared.setString(2, bean.getRepairname());
			prepared.setString(3, bean.getRepairAddress());
			prepared.setString(4, bean.getRepairPhone());
			prepared.setString(5, bean.getRepairEmail());
			prepared.setString(6, bean.getRepairWarranty());
			prepared.setString(7, bean.getRepairSerialnumber());
			prepared.setString(8, bean.getRepairType());
			prepared.setString(9, bean.getRepairProduct());
			prepared.setString(10, bean.getRepairWaste());
			prepared.setString(11, bean.getRepairDetail());
			prepared.setDate(12, bean.getRepairAppointment());
			prepared.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
//วันที่เวลา
	public static java.util.Date DateTHToEN(String date) throws ParseException {
		Locale localeTH = new Locale("th", "TH");
		Locale localeEN = new Locale("en", "EN");
		SimpleDateFormat formate = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss", localeTH);
		java.util.Date a = formate.parse(date);
		SimpleDateFormat dateformat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss",localeEN);
		java.util.Date b = dateformat.parse(dateformat.format(a));
	
		return b;
	}
	//table
	public List<RepairBean>findAll(){
		List<RepairBean> list = new ArrayList<>();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		
		try {
			sql.append(" SELECT repair_date,repair_name,repair_warranty,repair_waste,repair_appointment,repair_phone FROM repair ");
			prepared = con.openConnect().prepareStatement(sql.toString());
			ResultSet rs = prepared.executeQuery();
			
			while (rs.next()) {
				RepairBean bean = new RepairBean();
				bean.setRepairDateStr(rs.getString("repair_date"));
				bean.setRepairname(rs.getString("repair_name"));
				bean.setRepairWarranty(rs.getString("repair_warranty"));
				bean.setRepairWaste(rs.getString("repair_waste"));
				bean.setRepairAppointment(rs.getDate("repair_appointment"));
				bean.setRepairPhone(rs.getString("repair_phone"));
				
				list.add(bean);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list; 
	}
	
	
	
	
	
//endclass
}
