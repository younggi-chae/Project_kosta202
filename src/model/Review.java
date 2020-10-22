package model;

import java.io.Serializable;

public class Review implements Serializable {
	private int dealNo;
	private String id;
	private String contents;
	private int score;
	
	public Review() {}

	public Review(int dealNo, String id, String contents, int score) {
		super();
		this.dealNo = dealNo;
		this.id = id;
		this.contents = contents;
		this.score = score;
	}

	public int getDealNo() {
		return dealNo;
	}

	public void setDealNo(int dealNo) {
		this.dealNo = dealNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "Review [dealNo=" + dealNo + ", id=" + id + ", contents=" + contents + ", score=" + score + "]";
	}
	
}
