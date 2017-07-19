package cn.itcast.shop.category.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import cn.itcast.shop.categorysecond.vo.CategorySecond;

/**
 * 一级分类的实体类对象
 *    
 * 项目名称：shop00   
 * 类名称：Category   
 * 类描述：   
 * 创建人：Teemo   
 * 创建时间：2017年5月5日 下午3:29:33   
 * 修改人：Teemo   
 * 修改时间：2017年5月5日 下午3:29:33   
 * 修改备注：   
 * @version    
 *
 */
public class Category implements Serializable{
	private Integer cid;
	private String cname;
	// 一级分类中存放二级分类的集合:
	private Set<CategorySecond> categorySeconds = new HashSet<CategorySecond>();
	
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Set<CategorySecond> getCategorySeconds() {
		return categorySeconds;
	}
	public void setCategorySeconds(Set<CategorySecond> categorySeconds) {
		this.categorySeconds = categorySeconds;
	}
	
}
