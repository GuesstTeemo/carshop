package cn.itcast.shop.order.adminaction;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import cn.itcast.shop.adminuser.vo.AdminUser;
import cn.itcast.shop.order.service.OrderService;
import cn.itcast.shop.order.vo.Order;
import cn.itcast.shop.order.vo.OrderItem;
import cn.itcast.shop.user.vo.User;
import cn.itcast.shop.utils.PageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 后台订单管理的Action
 *    
 * 项目名称：shop00   
 * 类名称：AdminOrderAction   
 * 类描述：   
 * 创建人：Teemo   
 * 创建时间：2017年6月16日 上午10:48:41   
 * 修改人：Teemo   
 * 修改时间：2017年6月16日 上午10:48:41   
 * 修改备注：   
 * @version    
 *
 */
public class AdminOrderAction extends ActionSupport implements ModelDriven<Order>{
	// 模型驱动使用的类
	private Order order = new Order();

	public Order getModel() {
		return order;
	}
	// 接收page参数
	private Integer page;
	
	public void setPage(Integer page) {
		this.page = page;
	}
	
	// 注入OrderService
	private OrderService orderService;

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}


	// 提供后台查询所有订单的方法:
	public String findAll(){
		// 订单的分页查询
		PageBean<Order> pageBean = orderService.findAll(page);
		// 将数据存入到值栈中保存到页面
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		// 页面跳转:
		return "findAll";
	}

	// 修改订单状态
	public String updateState(){
		AdminUser existAdminUser = (AdminUser) ServletActionContext.getRequest().getSession()
				.getAttribute("existAdminUser");
		if (existAdminUser == null) {
			this.addActionMessage("亲!您还没有登录!");
			return "msg";
		}
		// 根据id查询订单
		Order currOrder = orderService.findByOid(order.getOid());
		currOrder.setState(2);
		currOrder.setServicename(existAdminUser.getUsername());
		orderService.update(currOrder);
		// 页面跳转
		return "updateStateSuccess";
	}
	
	// 根据订单的id查询订单项:
	public String findOrderItem(){
		// 根据订单id查询订单项:
		List<OrderItem> list = orderService.findOrderItem(order.getOid());
		// 显示到页面:
		ActionContext.getContext().getValueStack().set("list", list);
		// 页面跳转
		return "findOrderItem";
	}
}
