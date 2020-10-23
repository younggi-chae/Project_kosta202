package mapper;

import model.SelectedSellNo;
import model.Sell;

public interface Mapper_kjj {
	int registerSell(Sell sell);
	int deleteSelectedSell(SelectedSellNo selectedSellNo);
}
