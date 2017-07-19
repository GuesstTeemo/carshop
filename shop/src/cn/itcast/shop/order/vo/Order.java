package cn.itcast.shop.order.vo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import cn.itcast.shop.product.vo.Product;
import cn.itcast.shop.user.vo.User;

/**
 * 订单实体 CREATE TABLE `orders` ( `oid` int(11) NOT NULL AUTO_INCREMENT, `total`
 * double DEFAULT NULL, `ordertime` datetime DEFAULT NULL, `state` int(11)
 * DEFAULT NULL, `name` varchar(20) DEFAULT NULL, `phone` varchar(20) DEFAULT
 * NULL, `addr` varchar(50) DEFAULT NULL, `uid` int(11) DEFAULT NULL, PRIMARY
 * KEY (`oid`), KEY `FKC3DF62E5AA3D9C7` (`uid`), CONSTRAINT `FKC3DF62E5AA3D9C7`
 * FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ) ENGINE=InnoDB
 * AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
 */
public class Order {
	public Integer oid;
	// private Double total;
	private Date ordertime;
	private Integer state;// 1:用户申请，客服未回应 2:客服已回应
	private String carname;
	private String guestname;
	private String phone;
	private String servicename;// 接单客服
	// private String addr;
	// 用户的外键:对象
	private User user;
	private Product product;
	// 配置订单项的集合
	private Set<OrderItem> orderItems = new HashSet<OrderItem>();

	public Integer getOid() {
		return oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

	// public Double getTotal() {
	// return total;
	// }
	// public void setTotal(Double total) {
	// this.total = total;
	// }
	public Date getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	// public String getName() {
	// return name;
	// }
	// public void setName(String name) {
	// this.name = name;
	// }
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	// public String getAddr() {
	// return addr;
	// }
	// public void setAddr(String addr) {
	// this.addr = addr;
	// }
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<OrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(Set<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getCarname() {
		return carname;
	}

	public void setCarname(String carname) {
		this.carname = carname;
	}

	public String getGuestname() {
		return guestname;
	}

	public void setGuestname(String guestname) {
		this.guestname = guestname;
	}

	public String getServicename() {
		return servicename;
	}

	public void setServicename(String servicename) {
		this.servicename = servicename;
	}

}
