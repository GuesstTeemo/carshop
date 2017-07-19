package cn.itcast.shop.product.dao;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.product.vo.Product;
import cn.itcast.shop.utils.Expression;
import cn.itcast.shop.utils.PageBean;
import cn.itcast.shop.utils.PageHibernateCallback;

/**
 * 商品持久层的代码
 * 
 * 项目名称：shop00 类名称：ProductDao 类描述： 创建人：Teemo 创建时间：2017年4月27日 下午1:54:57 修改人：Teemo
 * 修改时间：2017年4月27日 下午1:54:57 修改备注：
 * 
 * @version
 * 
 */
public class ProductDao extends HibernateDaoSupport {

	Double priceRange = 5.0;

	// 首页上热门商品查询
	public List<Product> findHot() {
		// 使用离线条件查询.
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// 查询热门的商品,条件就是is_host = 1
		criteria.add(Restrictions.eq("is_hot", 1));
		// 倒序排序输出:
		criteria.addOrder(Order.desc("pdate"));
		// 执行查询:
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria, 0, 12);
		return list;
	}

	// 首页上最新商品的查询
	public List<Product> findNew() {
		// 使用离线条件查询:
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// 按日期进行倒序排序:
		criteria.addOrder(Order.desc("pdate"));
		// 执行查询:
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria, 0, 10);
		return list;
	}

	// 根据商品ID查询商品
	public Product findByPid(Integer pid) {
		return this.getHibernateTemplate().get(Product.class, pid);
	}

	// 根据商品的type进行查询商品个数
	public int findCountType(String type) {
		String hql = "select count(*) from Product p where p.type = " + ""
				+ type + "";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	// 根据商品的type进行查询商品
	public List<Product> findByType(final String type, final int begin,
			final int limit) {
		final String hql = "select p from Product p where p.type = " + ""
				+ type + "";
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session arg0)
					throws HibernateException, SQLException {
				Query query = arg0.createQuery(hql);
				query.setFirstResult(begin);
				query.setMaxResults(limit);
				return query.list();
			}

		});

		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	/*
	 * 根据商品的价格查询商品个数 2017-6-2
	 */
	public int findCountPrice(Double shop_price) {
		String hql;
		Double price = sub(shop_price, priceRange);
		if (shop_price > 40) {
			hql = "select count(*) from Product p where p.shop_price > 40";
		} else {
			hql = "select count(*) from Product p where p.shop_price between"
					+ " " + price + " " + "and" + " " + shop_price;
		}
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	// 根据商品的价格查询商品
	public List<Product> findByPrice(Double shop_price, final int begin,
			final int limit) {
		final String hql;
		Double price = sub(shop_price, priceRange);
		if (shop_price > 40) {
			hql = "select p from Product p where p.shop_price > 40";
		} else {
			hql = "select p from Product p where p.shop_price between" + " "
					+ price + " " + "and" + " " + shop_price;
		}

		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session arg0)
					throws HibernateException, SQLException {
				Query query = arg0.createQuery(hql);
				query.setFirstResult(begin);
				query.setMaxResults(limit);
				return query.list();
			}

		});

		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	/*
	 * 2017-6-23按照时间查找
	 */
	public int findCountTime(Date date) throws ParseException {
		int timeflag = comparatime(date);
		String hql = null;
		if (timeflag == 6) {
			System.out.println("6666");
			hql = "select count(*) from product p where p.carDate <='2012-05-31'";
		} else if (timeflag == 5) {
			System.out.println("555");
			hql = "select count(*) from product p where p.carDate between '2012-06-01' and '2014-06-01'";
		} else if (timeflag == 3) {
			System.out.println("333");
			hql = "select count(*) from product p where p.carDate between '2014-06-01' and '2016-06-01'";
		} else if (timeflag == 1) {
			System.out.println("111");
			hql = "select count(*) from product p where p.carDate >='2016-06-01'";
		}
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<Product> findByTime(Date date, final int begin, final int limit)
			throws ParseException {
		int timeflag = comparatime(date);
		final String hql;
		if (timeflag == 6) {
			hql = "select p from product p where p.carDate <='2012-05-31'";
		} else if (timeflag == 5) {
			hql = "select p from product p where p.carDate between '2012-06-01' and '2014-06-01'";
		} else if (timeflag == 3) {
			hql = "select p from product p where p.carDate between '2014-06-01' and '2016-06-01'";
		} else if (timeflag == 1) {
			hql = "select p from product p where p.carDate >='2016-06-01'";
		} else {
			hql = "select p from product p where p.carDate >='2016-06-01'";
		}
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session arg0)
					throws HibernateException, SQLException {
				Query query = arg0.createQuery(hql);
				query.setFirstResult(begin);
				query.setMaxResults(limit);
				return query.list();
			}

		});

		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public int comparatime(Date date) throws ParseException {
		int flagtime = 0;
		java.util.Date nowdate = new java.util.Date();
		String time6 = "2012-05-31";
		String time5 = "2012-06-01";
		String time3 = "2014-06-01";
		String time1 = "2016-06-01";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA);
		Date d6 = sdf.parse(time6);
		System.out.println("d6" + d6);
		Date d5 = sdf.parse(time5);
		System.out.println("d5" + d5);
		Date d3 = sdf.parse(time3);
		System.out.println("d3" + d3);
		Date d1 = sdf.parse(time1);
		System.out.println("d1" + d1);
		boolean flag = date.before(nowdate);
		System.out.println("date.getTime()" + date.getTime());
		System.out.println("time6.getTime()" + d6.getTime());
		System.out.println("time5.getTime()" + d5.getTime());
		System.out.println("time3.getTime()" + d3.getTime());
		System.out.println("time1.getTime()" + d1.getTime());
		if (date.getTime() > d6.getTime()) {
			// 汽车上牌大于五年
			System.out.println("汽车上牌大于五年");
			flagtime = 6;
		} else if (date.getTime() > d3.getTime()
				&& d5.getTime() > date.getTime()) {
			// 汽车上牌大于3年小于五年
			System.out.println("汽车上牌大于3年小于五年");
			flagtime = 5;
		} else if (date.getTime() > d1.getTime()
				&& d3.getTime() > date.getTime()) {
			// 汽车上牌大于1年小于3年
			System.out.println("汽车上牌大于1年小于3年");
			flagtime = 3;
		} else if (d1.getTime() > date.getTime()) {
			// 汽车上牌小于1年
			System.out.println("汽车上牌小于1年");
			flagtime = 1;
		} else {
			System.out.println("汽车上牌大于1年小于3年*****");
			flagtime = 3;
		}

		return flagtime;
	}

	// 搜索符合条件商品的个数
	public int findCountSearch(String pname) {
		String hql = "select count(*) from Product p where p.pname like '%"
				+ pname + "%'";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	// 搜索符合条件商品的
	public List<Product> searchCar(String pname, final int begin,
			final int limit) {
		final String hql = "select p from Product p where p.pname like '%"
				+ pname + "%'";
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session arg0)
					throws HibernateException, SQLException {
				Query query = arg0.createQuery(hql);
				query.setFirstResult(begin);
				query.setMaxResults(limit);
				return query.list();
			}

		});

		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	// 根据分类id查询商品的个数
	public int findCountCid(Integer cid) {
		String hql = "select count(*) from Product p where p.categorySecond.category.cid = ?";
		List<Long> list = this.getHibernateTemplate().find(hql, cid);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	// 根据分类id查询商品的集合
	public List<Product> findByPageCid(Integer cid, int begin, int limit) {
		// select p.* from category c,categorysecond cs,product p where c.cid =
		// cs.cid and cs.csid = p.csid and c.cid = 2
		// select p from Category c,CategorySecond cs,Product p where c.cid =
		// cs.category.cid and cs.csid = p.categorySecond.csid and c.cid = ?
		String hql = "select p from Product p join p.categorySecond cs join cs.category c where c.cid = ?";
		// 分页另一种写法:
		List<Product> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Product>(hql, new Object[] { cid },
						begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;

	}

	// 根据二级分类查询商品个数
	public int findCountCsid(Integer csid) {
		String hql = "select count(*) from Product p where p.categorySecond.csid = ?";
		List<Long> list = this.getHibernateTemplate().find(hql, csid);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	// 根据二级分类查询商品信息
	public List<Product> findByPageCsid(Integer csid, int begin, int limit) {
		String hql = "select p from Product p join p.categorySecond cs where cs.csid = ?";
		List<Product> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Product>(hql, new Object[] { csid },
						begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	// 后台统计商品个数的方法
	public int findCount() {
		String hql = "select count(*) from Product";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	// 后台查询所有商品的方法
	public List<Product> findByPage(int begin, int limit) {
		String hql = "from Product order by pdate desc";
		List<Product> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Product>(hql, null, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	// DAO中的保存商品的方法
	public void save(Product product) {
		this.getHibernateTemplate().save(product);
	}

	// DAO中的删除商品的方法
	// public void delete(Product product) {
	// this.getHibernateTemplate().update(product);
	// }

	public void update(Product product) {
		this.getHibernateTemplate().update(product);
	}

	public double sub(double d1, double d2) {
		BigDecimal bd1 = new BigDecimal(Double.toString(d1));
		BigDecimal bd2 = new BigDecimal(Double.toString(d2));
		return bd1.subtract(bd2).doubleValue();
	}

	public int findCountcheck() {
		String hql = "select count(*) from Product where state = 1";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<Product> findBycheck(int begin, int limit) {
		String hql = "from Product order by pdate desc where state = 1";
		List<Product> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Product>(hql, null, begin, limit));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public int findCountagent(String username) {
		String hql = "select count(*) from Product p where p.uploadingservername ="
				+ "'" + username + "'";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<Product> findByagent(String username, final int begin,
			final int limit) {
		final String hql = "select p from Product p where p.uploadingservername ="
				+ "'" + username + "'";
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session arg0)
					throws HibernateException, SQLException {
				Query query = arg0.createQuery(hql);
				query.setFirstResult(begin);
				query.setMaxResults(limit);
				return query.list();
			}

		});
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public PageBean<Product> findByPageMany(Product pd, int page) throws SQLException {
		List<Expression> exprList = new ArrayList<Expression>();
		if(pd.getBrand()!=null&&pd.getBrand().length()>0)
		exprList.add(new Expression("p.brand", "like", "%" + pd.getBrand() + "%"));
		if(pd.getCarSeries()!=null&&pd.getCarSeries().length()>0)
		exprList.add(new Expression("p.carSeries", "like", "%"+ pd.getCarSeries() + "%"));
		//价格区间
		if(pd.getShop_price()!=null)
		exprList.add(new Expression("p.shop_price", "like", "%"+ pd.getShop_price() + "%"));
		if(pd.getType()!=null&&pd.getType().length()>0)
		exprList.add(new Expression("p.type", "like", "%" + pd.getType() + "%"));
		//距离区间
		if(pd.getMileage()!=null&&pd.getMileage().length()>0)
		exprList.add(new Expression("p.mileage", "like", "%" + pd.getMileage()+ "%"));
		if(pd.getGearbox()!=null&&pd.getGearbox().length()>0)
		exprList.add(new Expression("p.gearbox", "like", "%" + pd.getGearbox()+ "%"));
		if(pd.getDisplacement()!=null&&pd.getDisplacement().length()>0)
		exprList.add(new Expression("p.displacement", "like", "%"+ pd.getDisplacement() + "%"));
		if(pd.getColour()!=null&&pd.getColour().length()>0)
		exprList.add(new Expression("p.colour", "like", "%" + pd.getColour()+ "%"));
		if(pd.getCountry()!=null&&pd.getCountry().length()>0)
		exprList.add(new Expression("p.country", "like", "%" + pd.getCountry()+ "%"));
		return findByCriteria(exprList, page);
	}

	/**
	 * @param exprList
	 * @param pc
	 * @return
	 * @throws SQLException
	 */
	private PageBean<Product> findByCriteria(List<Expression> exprList, int page)
			throws SQLException {
		// 创建PageBean，设置参数
		PageBean<Product> pageBean = new PageBean<Product>();
		int totalCount = 0;
		/*
		 * 1. 得到ps 2. 得到tr 3. 得到beanList 4. 创建PageBean，返回
		 */
		// 设置当前页数:
		pageBean.setPage(page);
		final int limit = 10;
		pageBean.setLimit(limit);// 每页记录数
		/*
		 * 2. 通过exprList来生成where子句
		 */
		StringBuilder whereSql = new StringBuilder(" where 1=1");
		List<Object> params = new ArrayList<Object>();// SQL中有问号，它是对应问号的值
		for (Expression expr : exprList) {
			/*
			 * 添加一个条件上， 1) 以and开头 2) 条件的名称 3) 条件的运算符，可以是=、!=、>、< ... is null，is
			 * null没有值 4) 如果条件不是is null，再追加问号，然后再向params中添加一与问号对应的值
			 */
			whereSql.append(" and ").append(expr.getName()).append(" ")
					.append(expr.getOperator()).append(" ");
			// where 1=1 and bid = ?
			if (!expr.getOperator().equals("is null")) {
				whereSql.append("?");
				params.add(expr.getValue());
			}
		}

		/*
		 * 3. 总记录数
		 */
		String hql = "select count(*) from Product p" + whereSql;
		List<Long> list = this.getHibernateTemplate().find(hql,
				params.toArray());
		if (list != null && list.size() > 0) {
			totalCount = list.get(0).intValue();
			System.out.println("一共多少条："+totalCount);
		}
		pageBean.setTotalCount(totalCount);
		/*
		 * 4. 得到beanList，即当前页记录
		 */
		final String hql2 = "select p from Product p" + whereSql;
//		params.add((page - 1) * limit);// 当前页首行记录的下标
		final int begin = (page - 1) * limit;
//		params.add(limit);// 一共查询几行，就是每页记录数

		List<Product> list1 = this.getHibernateTemplate().execute(
				new PageHibernateCallback<Product>(hql2, params.toArray(),begin, limit));
		if (list1 != null && list1.size() > 0) {
			pageBean.setList(list1);
			System.out.println("list1"+list1);
			return pageBean;
		}
		return null;

	}

}
