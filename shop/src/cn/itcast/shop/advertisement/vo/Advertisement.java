package cn.itcast.shop.advertisement.vo;

import java.util.Date;

/*
 * 广告位
 */
public class Advertisement {
	private Integer aid;
	private String imageindex1;
	private String imageindex2;
	private String imageindex3;
	private String imageindex4;
	private String imageindex5; 
	private String imageindex6;
	private String uploadname;
	private Date pdate;
	
	public String getImageindex1() {
		return imageindex1;
	}
	public void setImageindex1(String imageindex1) {
		this.imageindex1 = imageindex1;
	}
	public String getImageindex2() {
		return imageindex2;
	}
	public void setImageindex2(String imageindex2) {
		this.imageindex2 = imageindex2;
	}
	public String getImageindex3() {
		return imageindex3;
	}
	public void setImageindex3(String imageindex3) {
		this.imageindex3 = imageindex3;
	}
	public String getImageindex4() {
		return imageindex4;
	}
	public void setImageindex4(String imageindex4) {
		this.imageindex4 = imageindex4;
	}
	public String getImageindex5() {
		return imageindex5;
	}
	public void setImageindex5(String imageindex5) {
		this.imageindex5 = imageindex5;
	}
	public String getImageindex6() {
		return imageindex6;
	}
	public void setImageindex6(String imageindex6) {
		this.imageindex6 = imageindex6;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public String getUploadname() {
		return uploadname;
	}
	public void setUploadname(String uploadname) {
		this.uploadname = uploadname;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	
	
}
