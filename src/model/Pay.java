package model;

import java.io.Serializable;

public class Pay implements Serializable {
	private int dealNo;
	private String payDate;
	private int price;
	private String sellAccount;
	private String status;
	
	public Pay() {}

	public Pay(int dealNo, String payDate, int price, String sellAccount, String status) {
		super();
		this.dealNo = dealNo;
		this.payDate = payDate;
		this.price = price;
		this.sellAccount = sellAccount;
		this.status = status;
	}

	public int getDealNo() {
		return dealNo;
	}

	public void setDealNo(int dealNo) {
		this.dealNo = dealNo;
	}

	public String getPayDate() {
		return payDate;
	}

	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getSellAccount() {
		return sellAccount;
	}

	public void setSellAccount(String sellAccount) {
		this.sellAccount = sellAccount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Pay [dealNo=" + dealNo + ", payDate=" + payDate + ", price=" + price + ", sellAccount=" + sellAccount
				+ ", status=" + status + "]";
	}
	
}
