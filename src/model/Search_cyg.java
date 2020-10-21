package model;

public class Search_cyg {
	private String[] area;
	private String searchKey;
	
	public Search_cyg() {}

	public Search_cyg(String[] area, String searchKey) {
		super();
		this.area = area;
		this.searchKey = searchKey;
	}

	public String[] getArea() {
		return area;
	}

	public void setArea(String[] area) {
		this.area = area;
	}

	public String getSearchKey() {
		return searchKey;
	}

	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}	
}
