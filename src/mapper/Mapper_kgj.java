package mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import model.Buy;
import model.Search_kgj;

public interface Mapper_kgj {
	List<Buy> listBuyBoard(Search_kgj search, RowBounds row);
	Buy detailBuyBoard(int buyNo);
	int countBuyBoard(Search_kgj search);
	
	
}
