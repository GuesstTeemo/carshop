package cn.itcast.shop.advertisement.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.advertisement.vo.Advertisement;
import cn.itcast.shop.category.vo.Category;
import cn.itcast.shop.product.vo.Product;

public class AdvertisementDao extends HibernateDaoSupport {

	public void update(Advertisement advertisement) {
		this.getHibernateTemplate().update(advertisement);
	}

	public Advertisement findpic() {
		return this.getHibernateTemplate().get(Advertisement.class, 1);
	}

}
