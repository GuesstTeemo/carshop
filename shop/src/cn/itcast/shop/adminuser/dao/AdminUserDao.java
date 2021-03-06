package cn.itcast.shop.adminuser.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.adminuser.vo.AdminUser;
/**
 * 
 *    
 * 项目名称：shop00   
 * 类名称：AdminUserDao   
 * 类描述：   
 * 创建人：Teemo   
 * 创建时间：2017年5月18日 下午3:04:05   
 * 修改人：Teemo   
 * 修改时间：2017年5月18日 下午3:04:05   
 * 修改备注：   
 * @version    
 *
 */
public class AdminUserDao extends HibernateDaoSupport{

	// Dao完成登录的代码
	public AdminUser login(AdminUser adminUser) {
		String hql = "from AdminUser where username = ? and password = ?";
		List<AdminUser> list = this.getHibernateTemplate().find(hql, adminUser.getUsername(),adminUser.getPassword());
		if(list != null && list.size()>0){
			return list.get(0);
		}
		return null;
	}

	public int findByState(String username) {
		String hql = "select au.state from AdminUser au where au.username = ? ";
		List<Integer> list = this.getHibernateTemplate().find(hql, username);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}


}
