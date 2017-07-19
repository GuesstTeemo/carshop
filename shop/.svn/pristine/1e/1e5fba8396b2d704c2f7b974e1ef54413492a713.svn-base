package cn.itcast.shop.index.action;

import java.util.List;

import cn.itcast.shop.advertisement.service.AdvertisementService;
import cn.itcast.shop.advertisement.vo.Advertisement;
import cn.itcast.shop.category.service.CategoryService;
import cn.itcast.shop.category.vo.Category;
import cn.itcast.shop.product.service.ProductService;
import cn.itcast.shop.product.vo.Product;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 首页访问的Action
 * 
 * 项目名称：shop00 类名称：IndexAction 类描述： 创建人：Teemo 创建时间：2017年4月14日 下午2:43:35
 * 修改人：Teemo 修改时间：2017年4月14日 下午2:43:35 修改备注：
 * 
 * @version
 * 
 */
public class IndexAction extends ActionSupport implements ModelDriven<Advertisement> {
	// 注入一级分类的Service:
	private CategoryService categoryService;
	// 注入商品的Service
	private ProductService productService;
	// 注入广告的Service
	private AdvertisementService advertisementService;
	private Advertisement advertisement =  new Advertisement(); 

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public void setAdvertisementService(
			AdvertisementService advertisementService) {
		this.advertisementService = advertisementService;
	}
	
	public Advertisement getModel() {
		return advertisement;
	}


	/**
	 * 执行的访问首页的方法:
	 */
	public String execute() {
		// 查询所有一级分类集合
		List<Category> cList = categoryService.findAll();
		// 将一级分类存入到Session的范围:
		ActionContext.getContext().getSession().put("cList", cList);
		// 查询热门商品:
		List<Product> hList = productService.findHot();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("hList", hList);
		// 查询最新商品:
		List<Product> nList = productService.findNew();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("nList", nList);
		// 查询到广告图片
		advertisement = advertisementService.findpic();
		// 保存到值栈
		return "index";
	}

	
}
