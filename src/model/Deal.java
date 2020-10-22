package model;

import java.io.Serializable;

public class Deal implements Serializable {
	private int dealNo;
	private String buyId;
	private int buyNo;
	private String sellId;
	private int sellNo;
	private int price;
	private String regDate;
	private String status;
	
	public Deal() {}

	public Deal(int dealNo, String buyId, int buyNo, String sellId, int sellNo, int price, String regDate,
			String status) {
		super();
		this.dealNo = dealNo;
		this.buyId = buyId;
		this.buyNo = buyNo;
		this.sellId = sellId;
		this.sellNo = sellNo;
		this.price = price;
		this.regDate = regDate;
		this.status = status;
	}

	public int getDealNo() {
		return dealNo;
	}

	public void setDealNo(int dealNo) {
		this.dealNo = dealNo;
	}

	public String getBuyId() {
		return buyId;
	}

	public void setBuyId(String buyId) {
		this.buyId = buyId;
	}

	public int getBuyNo() {
		return buyNo;
	}

	public void setBuyNo(int buyNo) {
		this.buyNo = buyNo;
	}

	public String getSellId() {
		return sellId;
	}

	public void setSellId(String sellId) {
		this.sellId = sellId;
	}

	public int getSellNo() {
		return sellNo;
	}

	public void setSellNo(int sellNo) {
		this.sellNo = sellNo;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Deal [dealNo=" + dealNo + ", buyId=" + buyId + ", buyNo=" + buyNo + ", sellId=" + sellId + ", sellNo="
				+ sellNo + ", price=" + price + ", regDate=" + regDate + ", status=" + status + "]";
	}
	
}
