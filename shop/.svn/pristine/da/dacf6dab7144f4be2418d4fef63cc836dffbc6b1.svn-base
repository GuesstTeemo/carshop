package cn.itcast.shop.product.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.struts2.ServletActionContext;

import cn.itcast.shop.category.service.CategoryService;
import cn.itcast.shop.product.service.ProductService;
import cn.itcast.shop.product.vo.Product;
import cn.itcast.shop.utils.Chinglish;
import cn.itcast.shop.utils.DateConverter;
import cn.itcast.shop.utils.PageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 商品的Action对象
 * 
 * 项目名称：shop00 类名称：ProductAction 类描述： 创建人：Teemo 创建时间：2017年5月5日 下午2:22:43
 * 修改人：Teemo 修改时间：2017年5月5日 下午2:22:43 修改备注：
 * 
 * @version
 * 
 */
public class ProductAction extends ActionSupport implements
		ModelDriven<Product> {
	// 用于接收数据的模型驱动.
	private Product product = new Product();
	// 注入商品的Service
	private ProductService productService;
	// 接收分类cid
	private Integer cid;
	// 接收二级分类id
	private Integer csid;

	public Integer getCsid() {
		return csid;
	}

	public void setCsid(Integer csid) {
		this.csid = csid;
	}

	// 注入一级分类的Service
	private CategoryService categoryService;
	// 接收当前页数:
	private int page;

	public void setPage(int page) {
		this.page = page;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Integer getCid() {
		return cid;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public Product getModel() {
		return product;
	}

	// 查询所有的商品:
	public String findAll() {
		PageBean<Product> pageBean = productService.findByPage(page);
		// 将PageBean数据存入到值栈中.
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		// 页面跳转
		return "findAll";
	}

	// 根据商品的ID进行查询商品:执行方法:
	public String findByPid() {
		// 调用Service的方法完成查询.
		// 因为模型驱动，直接调用product
		product = productService.findByPid(product.getPid());
		return "findByPid";
	}

	// 根据商品的type进行查询商品
	public String findByType() {
		PageBean<Product> pageBean = productService.findByType(
				product.getType(), page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByType";
	}

	// 根据商品的价格进行查询商品
	public String findByPrice() {
		PageBean<Product> pageBean = productService.findByPrice(
				product.getShop_price(), page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByPrice";

	}

	// 根据汽车上牌时间查找
	public String findByTime() throws ParseException {
		// SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// String tt = sdf.format(product.getCarDate());
		// DateUtils du = new DateUtils();
		// Date d5 = sdf.parse(tt);
		// System.out.println(tt+"***************");
		// System.out.println(d5+"---------------");
		System.out.println(product.getCarDate()
				+ "-----product.getCarDate()-------");
		PageBean<Product> pageBean = productService.findByTime(
				product.getCarDate(), page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByTime";
	}

	// 根据分类的id查询商品:
	public String findByCid() {
		// List<Category> cList = categoryService.findAll();
		PageBean<Product> pageBean = productService.findByPageCid(cid, page);// 根据一级分类查询商品,带分页查询
		// 将PageBean存入到值栈中:
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCid";
	}

	// 根据二级分类id查询商品:
	public String findByCsid() {
		// 根据二级分类查询商品
		PageBean<Product> pageBean = productService.findByPageCsid(csid, page);
		// 将PageBean存入到值栈中:
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCsid";
	}

	// 搜索汽车
	public String searchCar() throws UnsupportedEncodingException {
		// System.out.println("----------"+product.getPname());
		// String newStr = new String(product.getPname().getBytes("UTF-8"),
		// "GB2312");

		// System.out.println("---********----"+newStr);
		PageBean<Product> pageBean = productService.searchCar(
				product.getPname(), page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "searchCar";
	}

	// 多条件查询商品:
	public String findByMany() throws IOException {
		Map<String, String> map = new HashMap<String, String>();
		Chinglish.translation();
		map.put("1", "1");
		if (product.getBrand() != null) {
			System.out.println("英文："+product.getBrand());
			String brand = product.getBrand();
			System.out.println("汽车品牌："+Chinglish.engina.get(brand));
			map.put("brand", Chinglish.engina.get(brand));
		}
		if (product.getCarSeries() != null) {
			String carseries = product.getCarSeries();
			map.put("carSeries", Chinglish.engina.get(carseries));
		}
		if (product.getShop_price() != null) {
			map.put("shop_price", String.valueOf(product.getShop_price()));
		}
		if (product.getType() != null) {
			String type = product.getType();
			System.out.println("汽车类型："+Chinglish.engina.get(product.getType()));
			map.put("type", Chinglish.engina.get(type));
		}
		if (product.getMileage() != null) {
			map.put("mileage", product.getMileage());
		}
		if (product.getGearbox() != null) {
			String gearbox = product.getGearbox();
			map.put("gearbox", Chinglish.engina.get(gearbox));
		}
		if (product.getDisplacement() != null) {
			map.put("displacement", product.getDisplacement());
		}
		if (product.getColour() != null) {
			String colour = product.getColour();
			map.put("colour", Chinglish.engina.get(colour));
		}
		if (product.getCountry() != null) {
			String country = product.getCountry();
			map.put("country", Chinglish.engina.get(country));
		}
		// 打印map
		Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, String> entry = it.next();
			System.out.println("key= " + entry.getKey() + " and value= "
					+ entry.getValue());
		}
		// 获取查询条件，本方法就是cid，即分类的id
		Product pd = toBean(map, Product.class);

		PageBean<Product> pageBean = productService.findByPageMany(pd, page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		System.out.println("haole");
		// }
		return "findByMany";
	}

	/**
	 * 把map转换成对象
	 * 
	 * @param map
	 * @param clazz
	 * @return
	 * 
	 *         把Map转换成指定类型
	 */
	@SuppressWarnings("rawtypes")
	public static <T> T toBean(Map map, Class<T> clazz) {
		try {
			/*
			 * 1. 通过参数clazz创建实例 2. 使用BeanUtils.populate把map的数据封闭到bean中
			 */
			T bean = clazz.newInstance();
			ConvertUtils.register(new DateConverter(), java.util.Date.class);
			BeanUtils.populate(bean, map);
			return bean;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
