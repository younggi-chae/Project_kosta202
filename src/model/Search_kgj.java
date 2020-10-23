package model;

public class Search_kgj {
	private String bigClassifier;
	private String mediumClassifier;
	private String keyword1;
	private String keyword2;
	private String keyword3;
	private int minPrice;
	private int maxPrice;
	
	public Search_kgj() {}

	public Search_kgj(String bigClassifier, String mediumClassifier, String keyword1, String keyword2, String keyword3,
			int minPrice, int maxPrice) {
		super();
		this.bigClassifier = bigClassifier;
		this.mediumClassifier = mediumClassifier;
		this.keyword1 = keyword1;
		this.keyword2 = keyword2;
		this.keyword3 = keyword3;
		this.minPrice = minPrice;
		this.maxPrice = maxPrice;
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

	@Override
	public String toString() {
		return "Search_kgj [bigClassifier=" + bigClassifier + ", mediumClassifier=" + mediumClassifier + ", keyword1="
				+ keyword1 + ", keyword2=" + keyword2 + ", keyword3=" + keyword3 + ", minPrice=" + minPrice
				+ ", maxPrice=" + maxPrice + "]";
	}

	
	
	
	
}
