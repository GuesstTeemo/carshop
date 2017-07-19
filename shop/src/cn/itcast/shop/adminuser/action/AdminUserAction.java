package cn.itcast.shop.adminuser.action;

import org.apache.struts2.ServletActionContext;

import cn.itcast.shop.adminuser.service.AdminUserService;
import cn.itcast.shop.adminuser.vo.AdminUser;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminUserAction extends ActionSupport implements
		ModelDriven<AdminUser> {
	// 模型驱动使用的对象
	private AdminUser adminUser = new AdminUser();

	public AdminUser getModel() {
		return adminUser;
	}

	// 注入AdminUserService
	private AdminUserService adminUserService;

	public void setAdminUserService(AdminUserService adminUserService) {
		this.adminUserService = adminUserService;
	}

	// 后台登录的执行的方法
	public String login() {
		// 调用service方法完成登录
		AdminUser existAdminUser = adminUserService.login(adminUser);
		// 判断
		if (existAdminUser == null) {
			// 用户名或密码错误
			this.addActionError("用户名或密码错误!");
			return "loginFail";
		} else {
			// 登录成功:
			int i = adminUserService.findByState(existAdminUser.getUsername());
			if (i == 1) {
				ServletActionContext.getRequest().getSession()
						.setAttribute("existAdminUser", existAdminUser);
				return "loginSuccess";
			} else if (i == 2) {
				ServletActionContext.getRequest().getSession()
						.setAttribute("existAdminUser", existAdminUser);
				return "loginSuccess2";
			} else if (i == 3) {
				ServletActionContext.getRequest().getSession()
						.setAttribute("existAdminUser", existAdminUser);
				return "loginSuccess3";
			} else if (i == 4) {
				ServletActionContext.getRequest().getSession()
						.setAttribute("existAdminUser", existAdminUser);
				return "loginSuccess4";
			} else {
				this.addActionError("用户账号异常!");
				return "loginFail";
			}

		}
	}
	
}
