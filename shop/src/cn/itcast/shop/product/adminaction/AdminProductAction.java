package cn.itcast.shop.product.adminaction;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import cn.itcast.shop.adminuser.vo.AdminUser;
import cn.itcast.shop.categorysecond.service.CategorySecondService;
import cn.itcast.shop.categorysecond.vo.CategorySecond;
import cn.itcast.shop.order.vo.Order;
import cn.itcast.shop.product.service.ProductService;
import cn.itcast.shop.product.vo.Product;
import cn.itcast.shop.utils.ChineseToEnglish;
import cn.itcast.shop.utils.PageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 后台商品管理的Action
 * 
 * 项目名称：shop00 类名称：AdminProductAction 类描述： 创建人：Teemo 创建时间：2017年5月19日 下午1:45:52
 * 修改人：Teemo 修改时间：2017年5月19日 下午1:45:52 修改备注：
 * 
 * @version
 * 
 */
public class AdminProductAction extends ActionSupport implements
		ModelDriven<Product> {
	// 模型驱动使用的对象
	private Product product = new Product();

	public Product getModel() {
		return product;
	}

	// 接收page参数
	private Integer page;

	public void setPage(Integer page) {
		this.page = page;
	}

	// 注入ProductService
	private ProductService productService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	// 注入CategorySecondService
	private CategorySecondService categorySecondService;

	public void setCategorySecondService(
			CategorySecondService categorySecondService) {
		this.categorySecondService = categorySecondService;
	}

	// 文件上传需要的三个属性:
	private File[] upload;// s上传的文件，与上传input的name一致
	private String[] uploadFileName;// 接收文件上传的文件名
	private String[] uploadContentType;// 接收文件类型

	public void setUpload(File[] upload) {
		this.upload = upload;
	}

	public void setUploadFileName(String[] uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void setUploadContentType(String[] uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	// 查询所有的商品:
	public String findAll() {
		PageBean<Product> pageBean = productService.findByPage(page);
		// 将PageBean数据存入到值栈中.
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		// 页面跳转
		return "findAll";
	}

	// 查询所有的待审核商品:
	public String findcheck() {
		PageBean<Product> pageBean = productService.findBycheck(page);
		// 将PageBean数据存入到值栈中.
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		// 页面跳转
		return "findcheck";
	}

	// 查询当前经销商所提供的所有汽车信息
	@SuppressWarnings("unused")
	public String findagent() {
		AdminUser existAdminUser = (AdminUser) ServletActionContext
				.getRequest().getSession().getAttribute("existAdminUser");
		if (existAdminUser == null) {
			this.addActionMessage("亲!您还没有登录!");
			return "msg";
		}
		if (existAdminUser.getState() == 4 || existAdminUser.getState() == 1) {
			PageBean<Product> pageBean = productService.findByagent(
					existAdminUser.getUsername(), page);
			// 将PageBean数据存入到值栈中.
			ActionContext.getContext().getValueStack()
					.set("pageBean", pageBean);
			// 页面跳转
			return "findagent";
		} else {
			this.addActionMessage("亲!您还没有此权限!");
			return "msg";
		}

	}

	// 搜索汽车
	public String search() throws UnsupportedEncodingException {
		PageBean<Product> pageBean = productService.searchCar(
				product.getPname(), page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "search";
	}

	// 跳转到添加页面的方法:
	public String addPage() {
		// 查询所有的二级分类:
		List<CategorySecond> csList = categorySecondService.findAll();
		// 将二级分类的数据显示到页面上
		ActionContext.getContext().getValueStack().set("csList", csList);
		// 页面跳转
		return "addPageSuccess";
	}

	// 保存商品的方法:
	public String save() throws IOException {
		// 将提交的数据添加到数据库中.
		product.setPdate(new Date());// 系统当前时间
		AdminUser existAdminUser = (AdminUser) ServletActionContext
				.getRequest().getSession().getAttribute("existAdminUser");
		if (existAdminUser == null) {
			this.addActionMessage("亲!您还没有登录!");
			return "msg";
		}
		product.setState(1);
		product.setUploadingservername(existAdminUser.getUsername());
		// 对中文车名进行拼音改写
		String pybrand = product.getBrand();
		if (isContainChinese(pybrand)) {
			product.setPybrand(ChineseToEnglish.getPingYin(pybrand));
		} else {
			product.setPybrand(pybrand);
		}
		String pycarseries = product.getCarSeries();
		if (isContainChinese(pycarseries)) {
			product.setPycarSeries(ChineseToEnglish.getPingYin(pycarseries));
		} else {
			product.setPycarSeries(pycarseries);
		}
		// product.setImage(image);
		if (upload != null) {
			// 将商品图片上传到服务器上.获得磁盘的绝对路径
			// 文件重名也只是个问题
			// 获得上传图片的服务器端路径.
			String path = ServletActionContext.getServletContext().getRealPath(
					"/products");

			for (int i = 0; i < upload.length; i++) {
				// 创建文件类型对象:
				File diskFile = new File(path + "//" + uploadFileName[i]);
				// 文件上传:
				FileUtils.copyFile(upload[i], diskFile);
				if (null != uploadFileName[0]) {
					product.setImage("products/" + uploadFileName[0]);
				}
				if (null != uploadFileName[1]) {
					product.setImageFront("products/" + uploadFileName[1]);
				}
				if (null != uploadFileName[2]) {
					product.setImageBehind("products/" + uploadFileName[2]);
				}
				if (null != uploadFileName[3]) {
					product.setImageLeft("products/" + uploadFileName[3]);
				}
				if (null != uploadFileName[4]) {
					product.setImageRight("products/" + uploadFileName[4]);
				}
				if (null != uploadFileName[5]) {
					product.setImageInterior1("products/" + uploadFileName[5]);
				}
				if (null != uploadFileName[6]) {
					product.setImageInterior2("products/" + uploadFileName[6]);
				}
				if (null != uploadFileName[7]) {
					product.setImageEngine_compartment("products/"
							+ uploadFileName[7]);
				}
				if (null != uploadFileName[8]) {
					product.setImageRoof("products/" + uploadFileName[8]);
				}
				if (null != uploadFileName[9]) {
					product.setImageTrunk("products/" + uploadFileName[9]);
				}
				if (null != uploadFileName[10]) {
					product.setImageChassis("products/" + uploadFileName[10]);
				}
			}
		}
		productService.save(product);
		if (existAdminUser.getState() == 1) {
			return "saveSuccess";
		} else {
			return "agentsaveSuccess";
		}
	}

	// 删除商品的方法:
	public String delete() {
		// 根据id查询商品信息
		AdminUser existAdminUser = (AdminUser) ServletActionContext
				.getRequest().getSession().getAttribute("existAdminUser");
		if (existAdminUser == null) {
			this.addActionMessage("亲!您还没有登录!");
			return "msg";
		}
		product = productService.findByPid(product.getPid());
		product.setState(5);
		// 在商品表中告知是哪位管理员删除的
		product.setDeletename(existAdminUser.getUsername());
		// 删除商品的图片:
		// String oldpath = product.getImage();
		// if (oldpath != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath);
		// File file = new File(path);
		// file.delete();
		// }
		// String oldpath1 = product.getImageFront();
		// if (oldpath1 != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath1);
		// File file = new File(path);
		// file.delete();
		// }
		// String oldpath2 = product.getImageBehind();
		// if (oldpath != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath2);
		// File file = new File(path);
		// file.delete();
		// }
		// String oldpath3 = product.getImageLeft();
		// if (oldpath != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath2);
		// File file = new File(path);
		// file.delete();
		// }
		// String oldpath4 = product.getImageRight();
		// if (oldpath != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath4);
		// File file = new File(path);
		// file.delete();
		// }
		// String oldpath5 = product.getImageInterior1();
		// if (oldpath != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath5);
		// File file = new File(path);
		// file.delete();
		// }
		// String oldpath6 = product.getImageInterior2();
		// if (oldpath != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath6);
		// File file = new File(path);
		// file.delete();
		// }
		// String oldpath7 = product.getImageEngine_compartment();
		// if (oldpath != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath7);
		// File file = new File(path);
		// file.delete();
		// }
		// String oldpath8 = product.getImageRoof();
		// if (oldpath != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath8);
		// File file = new File(path);
		// file.delete();
		// }
		// String oldpath9 = product.getImageTrunk();
		// if (oldpath != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath9);
		// File file = new File(path);
		// file.delete();
		// }
		// String oldpath10 = product.getImageChassis();
		// if (oldpath != null) {
		// String path = ServletActionContext.getServletContext().getRealPath(
		// "/" + oldpath10);
		// File file = new File(path);
		// file.delete();
		// }

		// 删除数据库中商品记录:
		productService.update(product);
		// 页面跳转
		return "deleteSuccess";
	}

	// 编辑商品的方法
	public String edit() {
		// 根据商品id查询商品信息
		product = productService.findByPid(product.getPid());
		// 查询所有二级分类
		List<CategorySecond> csList = categorySecondService.findAll();
		ActionContext.getContext().getValueStack().set("csList", csList);
		// 页面跳转到编辑页面:
		return "editSuccess";
	}

	// 修改商品的方法
	public String update() throws IOException {
		// 将信息修改到数据库
		product.setPdate(new Date());
		AdminUser existAdminUser = (AdminUser) ServletActionContext
				.getRequest().getSession().getAttribute("existAdminUser");
		if (existAdminUser == null) {
			this.addActionMessage("亲!您还没有登录!");
			return "msg";
		}
		product.setState(1);
		product.setUploadingservername(existAdminUser.getUsername());
		// 对中文车名进行拼音改写
		String pybrand = product.getBrand();
		System.out.println("action:---------------"+pybrand);
		if (isContainChinese(pybrand)) {
			product.setPybrand(ChineseToEnglish.getPingYin(pybrand));
		} else {
			product.setPybrand(pybrand);
		}
		String pycarseries = product.getCarSeries();
		if (isContainChinese(pycarseries)) {
			product.setPycarSeries(ChineseToEnglish.getPingYin(pycarseries));
		} else {
			product.setPycarSeries(pycarseries);
		}
		// 上传:
		if (upload != null) {
			String delPath = ServletActionContext.getServletContext()
					.getRealPath("/" + product.getImage());
			File file = new File(delPath);
			file.delete();
			// 获得上传图片的服务器端路径.
			String path = ServletActionContext.getServletContext().getRealPath(
					"/products");
			// // 创建文件类型对象:
			// File diskFile = new File(path + "//" + uploadFileName);
			// // 文件上传:
			// FileUtils.copyFile(upload, diskFile);
			//
			// product.setImage("products/" + uploadFileName);
			for (int i = 0; i < upload.length; i++) {
				// 创建文件类型对象:
				File diskFile = new File(path + "//" + uploadFileName[i]);
				// 文件上传:
				FileUtils.copyFile(upload[i], diskFile);
				if (uploadFileName.length >= 1 && null != uploadFileName[0]) {
					product.setImage("products/" + uploadFileName[0]);
				}
				if (uploadFileName.length >= 2 && null != uploadFileName[1]) {
					product.setImageFront("products/" + uploadFileName[1]);
				}
				if (uploadFileName.length >= 3 && null != uploadFileName[2]) {
					product.setImageBehind("products/" + uploadFileName[2]);
				}
				if (uploadFileName.length >= 4 && null != uploadFileName[3]) {
					product.setImageLeft("products/" + uploadFileName[3]);
				}
				if (uploadFileName.length >= 5 && null != uploadFileName[4]) {
					product.setImageRight("products/" + uploadFileName[4]);
				}
				if (uploadFileName.length >= 6 && null != uploadFileName[5]) {
					product.setImageInterior1("products/" + uploadFileName[5]);
				}
				if (uploadFileName.length >= 7 && null != uploadFileName[6]) {
					product.setImageInterior2("products/" + uploadFileName[6]);
				}
				if (uploadFileName.length >= 8 && null != uploadFileName[7]) {
					product.setImageEngine_compartment("products/"
							+ uploadFileName[7]);
				}
				if (uploadFileName.length >= 9 && null != uploadFileName[8]) {
					product.setImageRoof("products/" + uploadFileName[8]);
				}
				if (uploadFileName.length >= 10 && null != uploadFileName[9]) {
					product.setImageTrunk("products/" + uploadFileName[9]);
				}
				if (uploadFileName.length >= 11 && null != uploadFileName[10]) {
					product.setImageChassis("products/" + uploadFileName[10]);
				}
			}
		}
		productService.update(product);
		// 页面跳转
		if (existAdminUser.getState() == 1) {
			return "updateSuccess";
		} else {
			return "agentupdateSuccess";
		}
	}

	// 审核商品的方法:通过
	public String checkpass() {
		AdminUser existAdminUser = (AdminUser) ServletActionContext
				.getRequest().getSession().getAttribute("existAdminUser");
		if (existAdminUser == null) {
			this.addActionMessage("亲!您还没有登录!");
			return "msg";
		}
		// 根据id查询订单
		// 根据商品id查询商品信息
		product = productService.findByPid(product.getPid());
		product.setState(3);
		product.setCheckname(existAdminUser.getUsername());
		productService.update(product);
		// 页面跳转
		return "checkpass";

	}

	// 审核商品的方法:不通过
	public String checknopass() {
		AdminUser existAdminUser = (AdminUser) ServletActionContext
				.getRequest().getSession().getAttribute("existAdminUser");
		if (existAdminUser == null) {
			this.addActionMessage("亲!您还没有登录!");
			return "msg";
		}
		// 根据id查询订单
		// 根据商品id查询商品信息
		product = productService.findByPid(product.getPid());
		product.setState(2);
		product.setCheckname(existAdminUser.getUsername());
		productService.update(product);
		// 页面跳转
		return "checknopass";

	}

	// 判断字符串是否包含中文
	public static boolean isContainChinese(String str) {

		Pattern p = Pattern.compile("[\u4e00-\u9fa5]");
		Matcher m = p.matcher(str);
		if (m.find()) {
			return true;
		}
		return false;
	}

}
