package dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mapper.Mapper_kjj;
import model.Sell;

public class DAO_kjj {
	private static DAO_kjj dao = new DAO_kjj();

	public static DAO_kjj getInstance() {
		return dao;
	}

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config_kjj.xml";
		InputStream in = null;

		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}

	public void registerSell(Sell sell) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			System.out.println("sell in DAO : " + sell);
			re = sqlSession.getMapper(Mapper_kjj.class).registerSell(sell);
			if (re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
	}
}
