package model;

import java.io.Serializable;

public class WishList implements Serializable {
	private int wishNo;
	private String id;
	private int sellNo;
	private int sellId;
	
	public WishList() {}

	public WishList(int wishNo, String id, int sellNo, int sellId) {
		super();
		this.wishNo = wishNo;
		this.id = id;
		this.sellNo = sellNo;
		this.sellId = sellId;
	}

	public int getWishNo() {
		return wishNo;
	}

	public void setWishNo(int wishNo) {
		this.wishNo = wishNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getSellNo() {
		return sellNo;
	}

	public void setSellNo(int sellNo) {
		this.sellNo = sellNo;
	}

	public int getSellId() {
		return sellId;
	}

	public void setSellId(int sellId) {
		this.sellId = sellId;
	}

	@Override
	public String toString() {
		return "WishList [wishNo=" + wishNo + ", id=" + id + ", sellNo=" + sellNo + ", sellId=" + sellId + "]";
	}

}
