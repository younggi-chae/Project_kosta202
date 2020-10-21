package model;

import java.io.Serializable;
import java.util.Arrays;

public class Buy implements Serializable {
	private int buyNo;
	private String id;
	private String title;
	private int categoryNo;
	private String keyword1;
	private String keyword2;
	private String keyword3;
	private String type;
	private String region;
	private int minPrice;
	private int maxPrice;
	private String status;
	
	public Buy() {}

	public Buy(int buyNo, String id, String title, int categoryNo, String keyword1, String keyword2, String keyword3,
			String type, String region, int minPrice, int maxPrice, String status) {
		super();
		this.buyNo = buyNo;
		this.id = id;
		this.title = title;
		this.categoryNo = categoryNo;
		this.keyword1 = keyword1;
		this.keyword2 = keyword2;
		this.keyword3 = keyword3;
		this.type = type;
		this.region = region;
		this.minPrice = minPrice;
		this.maxPrice = maxPrice;
		this.status = status;
	}

	public int getBuyNo() {
		return buyNo;
	}

	public void setBuyNo(int buyNo) {
		this.buyNo = buyNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public int getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}

	public int getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(int maxPrice) {
		this.maxPrice = maxPrice;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Buy [buyNo=" + buyNo + ", id=" + id + ", title=" + title + ", categoryNo=" + categoryNo + ", keyword1="
				+ keyword1 + ", keyword2=" + keyword2 + ", keyword3=" + keyword3 + ", type=" + type + ", region="
				+ region + ", minPrice=" + minPrice + ", maxPrice=" + maxPrice + ", status=" + status + "]";
	}

}
