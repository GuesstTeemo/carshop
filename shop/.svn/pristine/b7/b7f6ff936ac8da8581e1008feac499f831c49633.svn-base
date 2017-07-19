package cn.itcast.shop.categorysecond.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import cn.itcast.shop.category.vo.Category;
import cn.itcast.shop.product.vo.Product;

/**
 * 二级分类的实体o 
 *    
 * 项目名称：shop00   
 * 类名称：CategorySecond   
 * 类描述：   
 * 创建人：Teemo   
 * 创建时间：2017年5月31日 上午10:00:56   
 * 修改人：Teemo   
 * 修改时间：2017年5月31日 上午10:00:56   
 * 修改备注：   
 * @version    
 *
 */
public class CategorySecond implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1926411671431112113L;
	private Integer csid;
	private String csname;
	// 所属一级分类.存的是一级分类的对象.
	private Category category;
	private Set<Product> products = new HashSet<Product>();
	public Integer getCsid() {
		return csid;
	}
	public void setCsid(Integer csid) {
		this.csid = csid;
	}
	public String getCsname() {
		return csname;
	}
	public void setCsname(String csname) {
		this.csname = csname;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	
}
