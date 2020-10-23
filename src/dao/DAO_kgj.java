package dao;

import java.io.InputStream;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mapper.Mapper_kgj;
import model.Buy;
import model.Category;
import model.Search_kgj;

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
	
	public List<Buy> listBuyBoard(Search_kgj search, int startRow){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Buy> listBuy = null;
		
		try {
			listBuy = sqlSession.getMapper(Mapper_kgj.class).listBuyBoard(search, new RowBounds(startRow, 6));
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
	
	public int countBuyBoard(Search_kgj search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(Mapper_kgj.class).countBuyBoard(search);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		System.out.println(re);
		return re;
	}
	
	public int insertBuyRegistration(Buy buy) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(Mapper_kgj.class).insertBuyRegistration(buy);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;
	}
	
	
}