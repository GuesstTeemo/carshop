package cn.itcast.shop.category.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.category.vo.Category;

/**
 * 一级分类的持久层对象
 *    
 * 项目名称：shop00   
 * 类名称：CategoryDao   
 * 类描述：   
 * 创建人：Teemo   
 * 创建时间：2017年4月27日 上午10:42:05   
 * 修改人：Teemo   
 * 修改时间：2017年4月27日 上午10:42:05   
 * 修改备注：   
 * @version    
 *
 */
public class CategoryDao extends HibernateDaoSupport{

	//DAO层的查询所有一级分类的方法
	public List<Category> findAll() {
		String hql = "from Category";
		List<Category> list = this.getHibernateTemplate().find(hql);
		//如果数据库没有内容，这边应该加个判断
		return list;
	}

	// Dao中的保存一级分类的方法 
	public void save(Category category) {
		this.getHibernateTemplate().save(category);
	}

	// Dao中根据一级分类id查询一级分类
	public Category findByCid(Integer cid) {
		return this.getHibernateTemplate().get(Category.class, cid);
	}

	// DAO中删除一级分类
	public void delete(Category category) {
		this.getHibernateTemplate().delete(category);
	}

	// Dao中修改一级分类
	public void update(Category category) {
		this.getHibernateTemplate().update(category);
	}
	
}
