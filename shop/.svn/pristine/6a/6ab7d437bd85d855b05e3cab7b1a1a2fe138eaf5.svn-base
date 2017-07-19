<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>金鼎好车</title>
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath}/css/base.css" />
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath}/css/home.css" />
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath}/city/city.css">
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/script/jquery-1.8.0.min.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/script/home_ban.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/script/eg_top_search.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/script/city.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/script/snncar.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath}/script/jquery.SuperSlide.2.1.1.js"></script>
			<!--导航登陆网页版下拉-->
			<script type="text/javascript">
				$(function() {
					var setTime;
					$(".egc-top .nav-cent .operate").hover(
							function() {
								var _this = $(this);
								setTime = setTimeout(function() {
									_this.find(".sec-version").slideDown(200);
									_this.find("i").removeClass(
											"icon-angle-down").addClass(
											"icon-angle-up");
								}, 200);
							},
							function() {
								if (setTime) {
									clearTimeout(setTime);
								}
								$(".egc-top .nav-cent .sec-version").slideUp(
										200);
								$(".egc-top .nav-cent .operate i").removeClass(
										"icon-angle-up").addClass(
										"icon-angle-down");
							});
				});
			</script>

			<!--下拉导航关闭-->
			<script type="text/javascript">
				$(function() {
					$('.menu-mb i').click(function() {
						$(".navigation-mb-list").slideDown(300);
					});
					$('.navigation-mb-list .list-close-btn').click(function() {
						$(".navigation-mb-list").slideUp(300);
					});
				});
			</script>

			<script type="text/javascript">
				$(function() {
					var scroll_heitht = $('body').offset().top;
					var isShow = true;
					$(window).scroll(function() {
						if ($(window).scrollTop() > scroll_heitht && isShow) {
							$('.stress-search-box').slideDown(200);
						} else {
							$('.stress-search-box').slideUp(200);
						}
					});
					$('.stress-close a').click(
							function() {
								isShow = false;
								$('.stress-search-box').slideUp(200).unbind(
										window, aa);
							});
				});
			</script>
</head>
<body>

	<%@ include file="menu.jsp"%>

	<!--banner广告-->
	<div class="banner">
		<!--左侧买卖车-->
		<div class="mainmenu">
			<div class="sel-area">
				<div class="buy-tit">我要买车</div>
				<div class="all-sort-list">
					<div class="item">
						<h3>
							<div class="border">
								<a href="">品牌</a>
							</div>
							<ul>
								<li><a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=10&page=1">大众</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=4&page=1">宝马</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=1&page=1">奥迪</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=13&page=1">丰田</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=29&page=1">日产</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=6&page=1">奔驰</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=10&page=1">本田</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=2&page=1">别克</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=12&page=1">福特</a></li>
							</ul>
						</h3>
						<div class="item-list clearfix" style="top: 0px; display: none;">
							<div class="close">x</div>
							<div class="subitem">
								<s:iterator var="c" value="#session.cList">
									<dl class="fore1">
										<dt>
											<a href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1">
											<s:property value="#c.cname" /></a>
										</dt>
										
											<dd>
											<s:iterator var="cs" value="#c.categorySeconds">
												<em><a
													href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property
															value="#cs.csname" /></a></em>
											</s:iterator>
											</dd>
										
									</dl>
								</s:iterator>
							</div>
						</div>
					</div>
					<div class="items">
						<h3>
							<div class="border">
								<a href="">价格</a>
							</div>
							<ul>
								<li><a href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=5.0&page=1">5万以下</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=10.0&page=1">5-10万</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=15.0&page=1">10-15万</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=20.0&page=1">15-20万</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=25.0&page=1">20-25万</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=30.0&page=1">25-30万</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=35.0&page=1">30-35万</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=40.0&page=1">35-40万</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=41.0&page=1">40万以上</a></li>
							</ul>
						</h3>
					</div>
					<div class="items">
						<h3 style="border-bottom:0px;">
							<div class="border">
								<a href="">车型</a>
							</div>
							<ul>
								<li><a href="${ pageContext.request.contextPath }/product_findByType.action?type='SUV'&page=1">SUV</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByType.action?type='两厢轿车'&page=1">两厢轿车</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByType.action?type='小型车'&page=1">小型车</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByType.action?type='紧凑型车'&page=1">紧凑型车</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByType.action?type='中型车'&page=1">中型车</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByType.action?type='大型车'&page=1">大型车</a></li>
								<li><a href="${ pageContext.request.contextPath }/product_findByType.action?type='MPV'&page=1">MPV</a></li>
							</ul>
						</h3>
					</div>
				</div>
				<div class="clear_fix"></div>
				<script type="text/javascript">
					$('.all-sort-list > .item')
							.hover(
									function() {
										var eq = $('.all-sort-list >.item')
												.index(this), //获取当前滑过是第几个元素
										h = $('.all-sort-list').offset().top, //获取当前下拉菜单距离窗口多少像素
										s = $(window).scrollTop(), //获取游览器滚动了多少高度
										i = $(this).offset().top, //当前元素滑过距离窗口多少像素
										item = $(this).children('.item-list')
												.height(), //下拉菜单子类内容容器的高度
										sort = $('.all-sort-list').height(); //父类分类列表容器的高度

										if (item < sort) { //如果子类的高度小于父类的高度
											if (eq == 0) {
												$(this).children('.item-list')
														.css('top', (i - h));
											} else {
												$(this).children('.item-list')
														.css('top', (i - h));
											}
										} else {
											if (s > h) { //判断子类的显示位置，如果滚动的高度大于所有分类列表容器的高度
												if (i - s > 0) { //则 继续判断当前滑过容器的位置 是否有一半超出窗口一半在窗口内显示的Bug,
													$(this).children(
															'.item-list').css(
															'top', (s - h) + 2);
												} else {
													$(this)
															.children(
																	'.item-list')
															.css(
																	'top',
																	(s - h)
																			- (-(i - s))
																			+ 2);
												}
											} else {
												$(this).children('.item-list')
														.css('top', 0);
											}
										}

										$(this).addClass('hover');
										$(this).children('.item-list').css(
												'display', 'block');
									},
									function() {
										$(this).removeClass('hover');
										$(this).children('.item-list').css(
												'display', 'none');
									});

					$('.item > .item-list > .close').click(function() {
						$(this).parent().parent().removeClass('hover');
						$(this).parent().hide();
					});
				</script>
			
			</div>
		</div>
		<div class="menu_r">
			<div class="flexslider">
			<!-- 轮播广告图 -->
				<ul class="slides">
					<li
						style="background-image:url(${pageContext.request.contextPath}/<s:property value="model.imageindex1"/>);"></li>
					<li
						style="background-image:url(${pageContext.request.contextPath}/<s:property value="model.imageindex2"/>);"></li>
					<li
						style="background-image:url(${pageContext.request.contextPath}/<s:property value="model.imageindex3"/>);"></li>
					<li
						style="background-image:url(${pageContext.request.contextPath}/<s:property value="model.imageindex4"/>);"></li>
					<li
						style="background-image:url(${pageContext.request.contextPath}/<s:property value="model.imageindex5"/>);"></li>
					<li
						style="background-image:url(${pageContext.request.contextPath}/<s:property value="model.imageindex6"/>);"></li>
				</ul>
			</div>
			<div class="clear_fix"></div>
			<div class="purpose">
				<div class="ind-dz-lc">
					<ul>
						<li>
							<div class="circle radius">
								<i class="lc-01"></i>
							</div>
							<div class="txt">
								<h4>一年/两万公里质保</h4>
							</div>
						</li>
						<li>
							<div class="circle radius">
								<i class="lc-02"></i>
							</div>
							<div class="txt">
								<h4>全面检测</h4>
							</div>
						</li>
						<li>
							<div class="circle radius">
								<i class="lc-03"></i>
							</div>
							<div class="txt">
								<h4>14天可退</h4>
							</div>
						</li>
						<li>
							<div class="circle radius">
								<i class="lc-04"></i>
							</div>
							<div class="txt">
								<h4>100%个人车源</h4>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.flexslider').flexslider({
				directionNav : true,
				pauseOnAction : false
			});
			$('.flexslider').hover(function() {
				$('.flex-direction-nav').fadeIn();
			}, function() {
				$('.flex-direction-nav').fadeOut();
			})
		});
	</script>
	<!--特色频道-->

	<!--车类列表-->
	<div class="car_feature">
		<div class="menucar">
			<div class="more" id="11">
			<!-- 	<a href="list.html">查看全部>></a> -->
			</div>
			<ul>
				<li class="hover" id="tabs2_0" >热卖好车</li>
			
			</ul>
		</div>
		<div class="clear_fix"></div>

		<div class="menucarlist fr">
			<div id="divs2_0">
				<ul class="carList">
					<s:iterator var="p" value="hList">
						<li>
							<div class="list-infoBox">
								<a title="<s:property value="#p.pname"/>" target="_blank" class="imgtype" href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>">
								<img width="290" height="194" src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;" alt="<s:property value="#p.name"/>">
								</a>
								<p class="infoBox">
									<a title="<s:property value="#p.pname"/>" href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank" class="info-title"><s:property value="#p.name" /><s:property value="#p.pname"/></a>
								</p>
								<p class="fc-gray">
									<span class="tag-gray"><s:property value="#p.city"/></span> <span class=""><s:date name="#p.carDate" format="yyyy-MM-dd" />上牌</span>
									<em class="shuxian">|</em> 行驶<s:property value="#p.mileage"/>万公里
								</p>
								<p class="priType-s">
									<span> <i class="fc-org priType"><s:property value="#p.shop_price"/>万 </i>
									</span> <s><s:property value="#p.market_price"/>万</s>
								</p>
							</div>
						</li>
					</s:iterator>
				</ul>
			</div>
		
		</div>
	</div>
	<div class="clear_fix"></div>
	<!--底部-->
	<div class="ftWrap">
		<div class="foot">
			<div class="cent">
				<div class="relate">
					<div class="items">
						<div class="tit">
							<i class="icon-angle-right"></i>交易帮助
						</div>
						<div class="con">
							<a href="#">买车帮助</a> <a href="#">卖车帮助</a> <a href="#">过户帮助</a>
						</div>
					</div>
					<div class="items">
						<div class="tit">
							<i class="icon-angle-right"></i>客服中心
						</div>
						<div class="con">
							<a href="#">网站合作</a> <a href="#">关于我们</a> <a
								href="#">联系我们</a>
						</div>
					</div>
					<div class="items">
						<div class="tit">
							<i class="icon-angle-right"></i>购车指南
						</div>
						<div class="con">
							<a href="#">购车帮助</a>
						</div>
					</div>
					<div class="app-section">
						<img class="js-delayed-img" src="images/f_wx.jpg">
							<div class="title">扫码关注微信</div>
							<p>
								随时随地，秒杀好车<br /> 优质个人二手车
							</p>
					</div>
					<div class="items last">
						<div class="tel">
							<h1>400-888-6666</h1>
							<p>周一至周日 8:00-18:00</p>
							<p>免费咨询(咨询、建议、投诉)</p>
							<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=550154736&site=qq&menu=yes" class="kf"><i class="kf-icon"></i>在线客服</a>
						</div>
						<div class="tel-mb">
							<p>
								<span>400-666-8888</span>周一至周日 8:00-18:00(仅收市话费)
							</p>
							<a href="#" class="kf"><i class="kf-icon"></i>在线客服</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="copyright">
			<div class="cent">Copyright © 2016-2017, snncar.com,All Rights
				Reserved 苏ICP备16022456号-1</div>
		</div> -->
	</div>
	<script type="text/javascript">
		$(function() {
			$('.navmenu li').hover(function() {
				$('span', this).stop().css('height', '2px');
				$('span', this).animate({
					left : '0',
					width : '100%',
					right : '0'
				}, 200);
			}, function() {
				$('span', this).stop().animate({
					left : '50%',
					width : '0'
				}, 200);
			});
		});
	</script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/3c-menu.js"></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/script/index.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/address.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/script/lg_reg.js"></script>
	<script type="text/javascript">
		$(function() {

			$("#sjld").sjld("#shenfen", "#chengshi");

		});
	</script>

<div id="leftsead">
	<ul>
	     <li>
			<a id="top_btn">
				<img src="images/foot03/ll06.png" width="47" height="49" class="hides"/>
				<img src="images/foot03/l06.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=550154736&site=qq&menu=yes">
				<img src="images/foot03/ll03.png"  width="47" height="49" class="hides"/>
				<img src="images/foot03/l03.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a href="">
					<img src="images/foot03/ll02.png" width="166" height="49" class="hides"/>
				<img src="images/foot03/l04.png" width="47" height="49" class="shows" />
			</a>
		</li>

		<li>
			<a class="youhui">
				<img src="images/foot03/l02.png" width="47" height="49" class="shows" />
				<img src="images/f_wx.jpg" width="196" height="205" class="hides" usemap="#taklhtml"/>
			</a>
		</li>
	
	
	
	</ul>
</div>
	<!--leftsead end-->

	<script type="text/javascript">
		$(document).ready(function() {

			$("#leftsead a").hover(function() {
				if ($(this).prop("className") == "youhui") {
					$(this).children("img.hides").show();
				} else {
					$(this).children("img.hides").show();
					$(this).children("img.shows").hide();
					$(this).children("img.hides").animate({
						marginRight : '0px'
					}, 'slow');
				}
			}, function() {
				if ($(this).prop("className") == "youhui") {
					$(this).children("img.hides").hide('slow');
				} else {
					$(this).children("img.hides").animate({
						marginRight : '-143px'
					}, 'slow', function() {
						$(this).hide();
						$(this).next("img.shows").show();
					});
				}
			});

			$("#top_btn").click(function() {
				if (scroll == "off")
					return;
				$("html,body").animate({
					scrollTop : 0
				}, 600);
			});

		});
	</script>
</body>
</html>
