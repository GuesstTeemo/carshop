package cn.itcast.shop.cart.vo;

import cn.itcast.shop.product.vo.Product;

/**
 * 购物项对象
 *    
 * 项目名称：shop00   
 * 类名称：CartItem   
 * 类描述：   
 * 创建人：Teemo   
 * 创建时间：2017年5月17日 下午4:02:31   
 * 修改人：Teemo   
 * 修改时间：2017年5月17日 下午4:02:31   
 * 修改备注：   
 * @version    
 *
 */

public class CartItem {
	private Product product;	// 购物项中商品信息
	private int count;			// 购买某种商品数量
	private double subtotal;	// 购买某种商品小计
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	// 小计自动计算的.
	public double getSubtotal() {
		return count * product.getShop_price();
	}
	/*public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	*/
	
}
