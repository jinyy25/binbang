package com.binbang.booking.model.vo;

import java.sql.Date;

public class Booking {
	private String reservationNo;
	private String memberNo;
	private String houseNo;
	private String guestName;
	private String checkInDate;
	private String checkOutDate;
	private int guestPnum;
	private String paymentOption;
	private String houseRequest;
	private Date approvalDate;
	private int price;
	private Date reservDate;
	private String memberEmail;
	private String houseName;
	private String houseMainPic;
	private int pointPlus;
	private int pointMinus;
	private int totalPoint;
	

	public Booking() {
		// TODO Auto-generated constructor stub
	}


	


	public Booking(String reservationNo, String memberNo, String houseNo, String guestName, String checkInDate,
			String checkOutDate, int guestPnum, String paymentOption, String houseRequest, Date approvalDate, int price,
			Date reservDate, String memberEmail, String houseName, String houseMainPic, int pointPlus, int pointMinus,
			int totalPoint) {
		super();
		this.reservationNo = reservationNo;
		this.memberNo = memberNo;
		this.houseNo = houseNo;
		this.guestName = guestName;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.guestPnum = guestPnum;
		this.paymentOption = paymentOption;
		this.houseRequest = houseRequest;
		this.approvalDate = approvalDate;
		this.price = price;
		this.reservDate = reservDate;
		this.memberEmail = memberEmail;
		this.houseName = houseName;
		this.houseMainPic = houseMainPic;
		this.pointPlus = pointPlus;
		this.pointMinus = pointMinus;
		this.totalPoint = totalPoint;
	}





	public String getReservationNo() {
		return reservationNo;
	}





	public void setReservationNo(String reservationNo) {
		this.reservationNo = reservationNo;
	}





	public String getMemberNo() {
		return memberNo;
	}





	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}





	public String getHouseNo() {
		return houseNo;
	}





	public void setHouseNo(String houseNo) {
		this.houseNo = houseNo;
	}





	public String getGuestName() {
		return guestName;
	}





	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}





	public String getCheckInDate() {
		return checkInDate;
	}





	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}





	public String getCheckOutDate() {
		return checkOutDate;
	}





	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}





	public int getGuestPnum() {
		return guestPnum;
	}





	public void setGuestPnum(int guestPnum) {
		this.guestPnum = guestPnum;
	}





	public String getPaymentOption() {
		return paymentOption;
	}





	public void setPaymentOption(String paymentOption) {
		this.paymentOption = paymentOption;
	}





	public String getHouseRequest() {
		return houseRequest;
	}





	public void setHouseRequest(String houseRequest) {
		this.houseRequest = houseRequest;
	}





	public Date getApprovalDate() {
		return approvalDate;
	}





	public void setApprovalDate(Date approvalDate) {
		this.approvalDate = approvalDate;
	}





	public int getPrice() {
		return price;
	}





	public void setPrice(int price) {
		this.price = price;
	}





	public Date getReservDate() {
		return reservDate;
	}





	public void setReservDate(Date reservDate) {
		this.reservDate = reservDate;
	}





	public String getMemberEmail() {
		return memberEmail;
	}





	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}





	public String getHouseName() {
		return houseName;
	}





	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}





	public String getHouseMainPic() {
		return houseMainPic;
	}





	public void setHouseMainPic(String houseMainPic) {
		this.houseMainPic = houseMainPic;
	}





	public int getPointPlus() {
		return pointPlus;
	}





	public void setPointPlus(int pointPlus) {
		this.pointPlus = pointPlus;
	}





	public int getPointMinus() {
		return pointMinus;
	}





	public void setPointMinus(int pointMinus) {
		this.pointMinus = pointMinus;
	}





	public int getTotalPoint() {
		return totalPoint;
	}





	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
	}

	@Override
	public String toString() {
		return "Booking [reservationNo=" + reservationNo + ", memberNo=" + memberNo + ", houseNo=" + houseNo
				+ ", guestName=" + guestName + ", checkInDate=" + checkInDate + ", checkOutDate=" + checkOutDate
				+ ", guestPnum=" + guestPnum + ", paymentOption=" + paymentOption + ", houseRequest=" + houseRequest
				+ ", approvalDate=" + approvalDate + ", price=" + price + ", reservDate=" + reservDate
				+ ", memberEmail=" + memberEmail + ", houseName=" + houseName + ", houseMainPic=" + houseMainPic
				+ ", pointPlus=" + pointPlus + ", pointMinus=" + pointMinus + ", totalPoint=" + totalPoint + "]";
	}
	
}
