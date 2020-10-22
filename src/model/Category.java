package model;

import java.io.Serializable;

public class Category implements Serializable {
	private int categoryNo;
	private String bigClassifier;
	private String mediumClassifier;
	
	public Category() {}

	public Category(int categoryNo, String bigClassifier, String mediumClassifier) {
		super();
		this.categoryNo = categoryNo;
		this.bigClassifier = bigClassifier;
		this.mediumClassifier = mediumClassifier;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getBigClassifier() {
		return bigClassifier;
	}

	public void setBigClassifier(String bigClassifier) {
		this.bigClassifier = bigClassifier;
	}

	public String getMediumClassifier() {
		return mediumClassifier;
	}

	public void setMediumClassifier(String mediumClassifier) {
		this.mediumClassifier = mediumClassifier;
	}

	@Override
	public String toString() {
		return "Category [categoryNo=" + categoryNo + ", bigClassifier=" + bigClassifier + ", mediumClassifier="
				+ mediumClassifier + "]";
	}
	
}
