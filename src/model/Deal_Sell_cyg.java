package model;

import java.io.Serializable;

public class Deal_Sell_cyg implements Serializable {
	private int dealNo;
	private String buyId;
	private int buyNo;
	private String sellId;
	private int sellNo;
	private int price;
	private String regDate;
	private String status;
	private int s_sellNo;
	private String id;
	private String itemName;
	private int categoryNo;
	private String keyword1;
	private String keyword2;
	private String keyword3;
	private String type;
	private String region;
	private String itemCondition;
	private int s_price;
	private String picture;
	private String s_status;
	
	public Deal_Sell_cyg() {}
	public Deal_Sell_cyg(int dealNo, String buyId, int buyNo, String sellId, int sellNo, int price, String regDate,
			String status, int s_sellNo, String id, String itemName, int categoryNo, String keyword1, String keyword2,
			String keyword3, String type, String region, String itemCondition, int s_price, String picture,
			String s_status) {
		super();
		this.dealNo = dealNo;
		this.buyId = buyId;
		this.buyNo = buyNo;
		this.sellId = sellId;
		this.sellNo = sellNo;
		this.price = price;
		this.regDate = regDate;
		this.status = status;
		this.s_sellNo = s_sellNo;
		this.id = id;
		this.itemName = itemName;
		this.categoryNo = categoryNo;
		this.keyword1 = keyword1;
		this.keyword2 = keyword2;
		this.keyword3 = keyword3;
		this.type = type;
		this.region = region;
		this.itemCondition = itemCondition;
		this.s_price = s_price;
		this.picture = picture;
		this.s_status = s_status;
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
	public int getS_sellNo() {
		return s_sellNo;
	}
	public void setS_sellNo(int s_sellNo) {
		this.s_sellNo = s_sellNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getKeyword1() {
		return keyword1;
	}
	public void setKeyword1(String keyword1) {
		this.keyword1 = keyword1;
	}
	public String getKeyword2() {
		return keyword2;
	}
	public void setKeyword2(String keyword2) {
		this.keyword2 = keyword2;
	}
	public String getKeyword3() {
		return keyword3;
	}
	public void setKeyword3(String keyword3) {
		this.keyword3 = keyword3;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getItemCondition() {
		return itemCondition;
	}
	public void setItemCondition(String itemCondition) {
		this.itemCondition = itemCondition;
	}
	public int getS_price() {
		return s_price;
	}
	public void setS_price(int s_price) {
		this.s_price = s_price;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getS_status() {
		return s_status;
	}
	public void setS_status(String s_status) {
		this.s_status = s_status;
	}
	@Override
	public String toString() {
		return "Deal_cyg [dealNo=" + dealNo + ", buyId=" + buyId + ", buyNo=" + buyNo + ", sellId=" + sellId
				+ ", sellNo=" + sellNo + ", price=" + price + ", regDate=" + regDate + ", status=" + status
				+ ", s_sellNo=" + s_sellNo + ", id=" + id + ", itemName=" + itemName + ", categoryNo=" + categoryNo
				+ ", keyword1=" + keyword1 + ", keyword2=" + keyword2 + ", keyword3=" + keyword3 + ", type=" + type
				+ ", region=" + region + ", itemCondition=" + itemCondition + ", s_price=" + s_price + ", picture="
				+ picture + ", s_status=" + s_status + "]";
	}	
}
