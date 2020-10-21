package model;

import java.io.Serializable;
import java.util.Arrays;

public class Sell implements Serializable {
	private int sellNo;
	private String id;
	private String itemName;
	private int categoryNo;
	private String keyword1;
	private String keyword2;
	private String keyword3;
	private String type;
	private String region;
	private String itemCondition;
	private int price;
	private String picture;
	private String status;
	
	public Sell() {}

	public Sell(int sellNo, String id, String itemName, int categoryNo, String keyword1, String keyword2,
			String keyword3, String type, String region, String itemCondition, int price, String picture,
			String status) {
		super();
		this.sellNo = sellNo;
		this.id = id;
		this.itemName = itemName;
		this.categoryNo = categoryNo;
		this.keyword1 = keyword1;
		this.keyword2 = keyword2;
		this.keyword3 = keyword3;
		this.type = type;
		this.region = region;
		this.itemCondition = itemCondition;
		this.price = price;
		this.picture = picture;
		this.status = status;
	}

	public int getSellNo() {
		return sellNo;
	}

	public void setSellNo(int sellNo) {
		this.sellNo = sellNo;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Sell [sellNo=" + sellNo + ", id=" + id + ", itemName=" + itemName + ", categoryNo=" + categoryNo
				+ ", keyword1=" + keyword1 + ", keyword2=" + keyword2 + ", keyword3=" + keyword3 + ", type=" + type
				+ ", region=" + region + ", itemCondition=" + itemCondition + ", price=" + price + ", picture="
				+ picture + ", status=" + status + "]";
	}

}
