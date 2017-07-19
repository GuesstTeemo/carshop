package cn.itcast.shop.interceptor;

import org.apache.struts2.ServletActionContext;

import cn.itcast.shop.adminuser.vo.AdminUser;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/**
 * 权限拦截器:
 *    
 * 项目名称：shop00   
 * 类名称：PrivilegeInterceptor   
 * 类描述：   
 * 创建人：Teemo   
 * 创建时间：2017年4月10日 下午3:04:40   
 * 修改人：Teemo   
 * 修改时间：2017年4月10日 下午3:04:40   
 * 修改备注：   
 * @version    
 *
 */
public class PrivilegeInterceptor extends MethodFilterInterceptor{

	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		// 判断是否登录,如果登录,放行,没有登录,跳转到登录页面.
		AdminUser adminUser = (AdminUser) ServletActionContext.getRequest()
				.getSession().getAttribute("existAdminUser");
		if(adminUser != null){
			// 已经登录过
			return actionInvocation.invoke();
		}else{
			// 跳转到登录页面:
			ActionSupport support = (ActionSupport) actionInvocation.getAction();
			support.addActionError("您还没有登录!没有权限访问!");
			return ActionSupport.LOGIN;
		}
	}

}
