package dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mapper.Mapper_kgj;
import model.Buy;

public class DAO_kgj {
	private static DAO_kgj dao = new DAO_kgj();
	
	public static DAO_kgj getInstance() {
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config_kgj.xml";
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}
	
	public List<Buy> listBuyBoard(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Buy> listBuy = null;
		
		try {
			listBuy = sqlSession.getMapper(Mapper_kgj.class).listBuyBoard();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return listBuy;
	}
	
	public Buy detailBuyBoard(int buyNo) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Buy buy = null;
		
		try {
			buy = sqlSession.getMapper(Mapper_kgj.class).detailBuyBoard(buyNo);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		System.out.println(buy);
		return buy;
	}
	
}
