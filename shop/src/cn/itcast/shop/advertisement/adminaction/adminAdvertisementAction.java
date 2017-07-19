package cn.itcast.shop.advertisement.adminaction;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.itcast.shop.adminuser.vo.AdminUser;
import cn.itcast.shop.advertisement.service.AdvertisementService;
import cn.itcast.shop.advertisement.vo.Advertisement;
import cn.itcast.shop.product.vo.Product;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 
 * 
 * 项目名称：shop00 类名称：adminAdvertisementAction 类描述： 创建人：Teemo 创建时间：2017年7月3日
 * 上午9:28:04 修改人：Teemo 修改时间：2017年7月3日 上午9:28:04 修改备注：
 * 
 * @version
 * 
 */
public class adminAdvertisementAction extends ActionSupport implements
		ModelDriven<Advertisement> {
	private Advertisement advertisement = new Advertisement();
	private AdvertisementService advertisementService;

	public Advertisement getModel() {
		return advertisement;
	}
	public void setAdvertisementService(
			AdvertisementService advertisementService) {
		this.advertisementService = advertisementService;
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

	public String add() throws Exception {
		AdminUser existAdminUser = (AdminUser) ServletActionContext
				.getRequest().getSession().getAttribute("existAdminUser");
		if (existAdminUser == null) {
			this.addActionMessage("亲!您还没有登录!");
			return "login";
		}
		System.out.println("名字：" + existAdminUser.getUsername());
		advertisement.setUploadname(existAdminUser.getUsername());
		advertisement.setPdate(new Date());
		if (upload != null) {
			// 获得上传图片的服务器端路径.
			String path = ServletActionContext.getServletContext().getRealPath(
					"/advertisementImages");
			System.out.println("path:"+path);
			for (int i = 0; i < upload.length; i++) {
				// 创建文件类型对象:
				File diskFile = new File(path + "//" + uploadFileName[i]);
				// 文件上传:
				FileUtils.copyFile(upload[i], diskFile);
				if (null != uploadFileName[0]) {
					advertisement.setImageindex1("advertisementImages/"
							+ uploadFileName[0]);
					System.out.println("1:"+ uploadFileName[0]);
				}
				if (null != uploadFileName[1]) {
					advertisement.setImageindex2("advertisementImages/"
							+ uploadFileName[1]);
					System.out.println("2:"+ uploadFileName[1]);
				}
				if (null != uploadFileName[2]) {
					advertisement.setImageindex3("advertisementImages/"
							+ uploadFileName[2]);
					System.out.println("3:"+ uploadFileName[2]);
				}
				if (null != uploadFileName[3]) {
					advertisement.setImageindex4("advertisementImages/"
							+ uploadFileName[3]);
				}
				if (null != uploadFileName[4]) {
					advertisement.setImageindex5("advertisementImages/"
							+ uploadFileName[4]);
				}
				if (null != uploadFileName[5]) {
					advertisement.setImageindex6("advertisementImages/"
							+ uploadFileName[5]);
				}
			}
		}
		advertisementService.update(advertisement);
		return "addsuccess";
	}
	// // 上传文件存放路径
	// private final static String UPLOADDIR = "/advertisementImages";
	// // 上传文件集合
	// private List<File> file;
	// // 上传文件名集合
	// private List<String> fileFileName;
	// // 上传文件内容类型集合
	// private List<String> fileContentType;
	//
	// public List<File> getFile() {
	// return file;
	// }
	//
	// public void setFile(List<File> file) {
	// this.file = file;
	// }
	//
	// public List<String> getFileFileName() {
	// return fileFileName;
	// }
	//
	// public void setFileFileName(List<String> fileFileName) {
	// this.fileFileName = fileFileName;
	// }
	//
	// public List<String> getFileContentType() {
	// return fileContentType;
	// }
	//
	// public void setFileContentType(List<String> fileContentType) {
	// this.fileContentType = fileContentType;
	// }
	//
	// public String add() throws Exception {
	// AdminUser existAdminUser = (AdminUser) ServletActionContext
	// .getRequest().getSession().getAttribute("existAdminUser");
	// if (existAdminUser == null) {
	// this.addActionMessage("亲!您还没有登录!");
	// return "login";
	// }
	// System.out.println("名字："+existAdminUser.getUsername());
	// advertisement.setUploadname(existAdminUser.getUsername());
	// advertisement.setPdate(new Date());
	// System.out.println(this.getFileFileName());
	// for (int i = 0; i < file.size(); i++) {
	// // 循环上传每个文件
	// uploadFile(i);
	// }
	// advertisementService.update(advertisement);
	// return "addsuccess";
	// }

	// 执行上传功能
	// private void uploadFile(int i) throws FileNotFoundException, IOException
	// {
	// try {
	// InputStream in = new FileInputStream(file.get(i));
	// String dir = ServletActionContext.getServletContext().getRealPath(
	// UPLOADDIR);
	// File fileLocation = new File(dir);
	// // 此处也可以在应用根目录手动建立目标上传目录
	// if (!fileLocation.exists()) {
	// boolean isCreated = fileLocation.mkdir();
	// if (!isCreated) {
	// // 目标上传目录创建失败,可做其他处理,例如抛出自定义异常等,一般应该不会出现这种情况。
	// return;
	// }
	// }
	// String fileName = this.getFileFileName().get(i);
	// if (0 == i) {
	// advertisement.setImageindex1("advertisementImages/" + fileName);
	// }
	// if (1 == i) {
	// advertisement.setImageindex2("advertisementImages/" + fileName);
	// }
	// if (2 == i) {
	// advertisement.setImageindex3("advertisementImages/" + fileName);
	// }
	// if (3 == i) {
	// advertisement.setImageindex4("advertisementImages/" + fileName);
	// }
	// if (4 == i) {
	// advertisement.setImageindex5("advertisementImages/" + fileName);
	// }
	// if (5 == i) {
	// advertisement.setImageindex6("advertisementImages/" + fileName);
	// }
	//
	// File uploadFile = new File(dir, fileName);
	// OutputStream out = new FileOutputStream(uploadFile);
	// byte[] buffer = new byte[1024 * 1024];
	// int length;
	// while ((length = in.read(buffer)) > 0) {
	// out.write(buffer, 0, length);
	// }
	// in.close();
	// out.close();
	// } catch (FileNotFoundException ex) {
	// System.out.println("上传失败!");
	// ex.printStackTrace();
	// } catch (IOException ex) {
	// System.out.println("上传失败!");
	// ex.printStackTrace();
	// }
	// }
}