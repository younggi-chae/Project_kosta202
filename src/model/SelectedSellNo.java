package model;

import java.util.List;

public class SelectedSellNo {
	private List<String> list;
	
	public SelectedSellNo() {}

	public SelectedSellNo(List<String> list) {
		super();
		this.list = list;
	}

	public List<String> getList() {
		return list;
	}

	public void setList(List<String> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "SelectedSellNo [list=" + list + "]";
	}
	
	
}
