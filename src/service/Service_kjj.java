package service;

import dao.DAO_kjj;
import model.SelectedSellNo;
import model.Sell;

public class Service_kjj {
	private static DAO_kjj dao;
	private static Service_kjj service = new Service_kjj();
	
	public static Service_kjj getInstance() {
		dao = DAO_kjj.getInstance();
		return service;
	}
	
	public void registerSell(Sell sell) {
		System.out.println("sell in service : " + sell);
		dao.registerSell(sell);
	}
	
	public void deleteSelectedSell(SelectedSellNo selectedSellNo) {
		System.out.println("selectedSellNo in service : " + selectedSellNo);
		dao.deleteSelectedSell(selectedSellNo);
	}
}
