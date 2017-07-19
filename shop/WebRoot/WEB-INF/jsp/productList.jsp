<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0048)http://localhost:8080/mango/product/list/1.jhtml -->
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
			href="${pageContext.request.contextPath}/css/common.css" />
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
			<script type="text/javascript" src="${pageContext.request.contextPath}/js/shanxuan.js"></script>

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
			<!--底部信息下拉-->
			<script type="text/javascript">
				$(function() {
					var wind_wd = $(window).width();
					if (wind_wd <= 735) {
						/* $submenu.first().delay(400).slideDown(700);*/
						$('.relate .tit').on(
								'click',
								function() {
									$(this).next('.con').slideToggle()
									$(this).parent().siblings('.items').find(
											'.con').slideUp();
								});
					} else {
						$('.relate .tit').unbind("click");
						$('.relate .con').show();
					}
					$(window).resize(
							function() {
								var wind_wd = $(window).width();
								if (wind_wd <= 735) {
									/* $submenu.first().delay(400).slideDown(700);*/
									$('.relate .tit').on(
											'click',
											function() {
												$(this).next('.con')
														.slideToggle()
												$(this).parent().siblings(
														'.items').find('.con')
														.slideUp();
											});
								} else {
									$('.relate .tit').unbind("click");
									$('.relate .con').show();
								}
							});
				});
			</script>

			<!--搜搜框获取焦点-->
			<script type="text/javascript">
				$(function() {
					$('.sea-ipt-txt').focus(function() {
						$(this).addClass("on");
						$('.search-btn').addClass("on");
					});
					$('.sea-ipt-txt').blur(function() {
						$(this).removeClass("on");
						$('.search-btn').removeClass("on");
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
			<!--stress搜索关闭-->
			<script type="text/javascript">
				$(function() {
					var setTime;
					$(".sercat .weixin").hover(function() {
						setTime = setTimeout(function() {
							$(".sercat .wxewm").show();
						}, 300);
					}, function() {
						if (setTime) {
							clearTimeout(setTime);
						}
						$(".sercat .wxewm").hide();
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

	<div class="clear_fix"></div>
	<!--所在位置-->
	<div class="crumbp">
		<a href="${ pageContext.request.contextPath }/index.action">首页</a> <em>&gt;</em>
		<span>个人二手车</span>
	</div>
	<div class="mainbox">
		<!--搜索条件-->
		<div class="comfilter-bd">
			<div class="filterBox">
				<dl class="fliter-bd clearfix sx">
					<dt>品牌：</dt>
					<dd class="clickBrandWidget">
						<a class="on" href="#">不限</a> 
						<a class="sx_child" href="#" name="brand" rel="Volkswagen" title="大众"> 大众 </a> 
						<a class="sx_child" href="#" name="brand" rel="Hyundai" title="现代">现代 </a> 
						<a class="sx_child" href="#" name="brand" rel="Toyota" title="丰田"> 丰田 </a> 
						<a class="sx_child" href="#" name="brand" rel="Audi" title="奥迪"> 奥迪 </a> 
						<a class="sx_child" href="#" name="brand" rel="Nissan" title="日产"> 日产 </a> 
						<a class="sx_child" href="#" name="brand" rel="Ford" title="福特"> 福特 </a> 
						<a class="sx_child" href="#" name="brand" rel="Mazda" title="马自达">马自达 </a> 
						<a class="sx_child" href="#" name="brand" rel="BYD" title="比亚迪">比亚迪 </a> 
						<a class="sx_child" href="#" name="brand" rel="Honda" title="本田"> 本田 </a> 
						<a class="sx_child" href="#" name="brand" rel="Chery" title="奇瑞"> 奇瑞 </a> 
						<a class="sx_child" href="#" name="brand" rel="Jili" title="吉利"> 吉利 </a> 
						<a class="sx_child" href="#" name="brand" rel="Chevrolet" title="雪佛兰"> 雪佛兰 </a> 
						<a class="sx_child" href="#" name="brand" rel="Kia" title="起亚"> 起亚 </a> 
						<a class="sx_child" href="#" name="brand" rel="Hafu" title="哈弗"> 哈弗 </a>
						<!--品牌全部-->

						<span class="brand-all z30"> <em data-role="show">全部<i></i></em>
							<div data-role="otherBrand" class="otherbrand"
								style="display: none;">
								<div class="o-b-box">
									<span class="arrow"><s></s></span>
									<ul data-role="letterNav" class="o-b-list">
										<s:iterator var="c" value="#session.cList">
											<li class="clearfix"><span><a
													href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1">
														<s:property value="#c.cname" />
												</a></span>

												<div>
													<s:iterator var="cs" value="#c.categorySeconds">
														<a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property
																value="#cs.csname" /></a>
													</s:iterator>
												</div></li>
										</s:iterator>
									</ul>
								</div>
							</div>
						</span>
						<!--品牌全部-->
					</dd>
				</dl>
				<span class="span1"></span>
				<dl class="fliter-bd clearfix sx">
					<dt>车系：</dt>
					<dd class="clickTagWidget">
						<%-- <a class="on" href="#">不限</a> <a class="" href="${ pageContext.request.contextPath }/product_searchCar.action?pname=捷达&page=1" title="二手捷达">捷达 </a> 
						<a class="" href="${ pageContext.request.contextPath }/product_searchCar.action?pname=速腾&page=1" title="二手速腾"> 速腾 </a> 
						<a class="" href="${ pageContext.request.contextPath }/product_searchCar.action?pname=迈腾&page=1" title="二手迈腾"> 迈腾 </a> 
						<a class="" href="${ pageContext.request.contextPath }/product_searchCar.action?pname=福克斯&page=1" title="二手福克斯"> 福克斯 </a> 
						<a class="" href="${ pageContext.request.contextPath }/product_searchCar.action?pname=哈弗H6&page=1" title="二手哈弗H6"> 哈弗H6 </a> 
						<a class="" href="${ pageContext.request.contextPath }/product_searchCar.action?pname=高尔夫&page=1" title="二手高尔夫"> 高尔夫 </a> 
						<a class="" href="${ pageContext.request.contextPath }/product_searchCar.action?pname=马自达6&page=1" title="二手马自达6"> 马自达6 </a> 
						<a class="" href="${ pageContext.request.contextPath }/product_searchCar.action?pname=奥迪A6L&page=1" title="二手奥迪A6L"> 奥迪A6L </a> 
						<a class="" href="${ pageContext.request.contextPath }/product_searchCar.action?pname=科鲁兹&page=1" title="二手科鲁兹"> 科鲁兹 </a> --%>
						<a class="on" href="#">不限</a> <a class="sx_child" href="#"
							name="carSeries" rel=Jetta title="捷达"> 捷达 </a> <a
							class="sx_child" href="#" name="carSeries" rel="Sagitar"
							title="速腾"> 速腾 </a> <a class="sx_child" href="#" name="carSeries"
							rel="Bora" title="宝来"> 宝来 </a> <a class="sx_child" href="#"
							name="carSeries" rel="Magotan" title="迈腾"> 迈腾 </a> <a
							class="sx_child" href="#" name="carSeries" rel="Focus"
							title="福克斯"> 福克斯 </a> <a class="sx_child" href="#"
							name="carSeries" rel="Carola" title="卡罗拉"> 卡罗拉 </a> <a
							class="sx_child" href="#" name="carSeries" rel="Santana"
							title="桑塔纳"> 桑塔纳 </a> <a class="sx_child" href="#"
							name="carSeries" rel="Mazda6" title="马自达6"> 马自达6 </a> <a
							class="sx_child" href="#" name="carSeries" rel="A6L"
							title="奥迪A6L"> 奥迪A6L </a> <a class="sx_child" href="#"
							name="carSeries" rel="Cruze" title="科鲁兹"> 科鲁兹 </a>
					</dd>
				</dl>
				<%-- <span class="span1"></span>
				<dl class="fliter-bd clearfix sx">
					<dt>价格：</dt>
					<dd>
						
						<a class="on" href="#">不限</a> 
						<a class="sx_child" href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=5.0&page=1" name="price" rel="3wanyixia" title="3万以下"> 5万以下 </a> 
						<a class="sx_child" href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=10.0&page=1" name="price" rel="3dao5wan" title="5万以下"> 5-10万</a> 
						<a class="sx_child" href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=15.0&page=1" name="price" rel="7wanyixia" title="7万以下"> 10-15万 </a> 
						<a class="sx_child" href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=20.0&page=1" name="price" rel="9wanyixia" title="9万以下"> 15-20万 </a> 
						<a class="sx_child" href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=25.0&page=1" name="price" rel="12wanyixia" title="12万以下"> 20-25万 </a> 
						<a class="sx_child" href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=30.0&page=1" name="price" rel="16wanyixia" title="16万以下"> 25-30万 </a> 
						<a class="sx_child" href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=35.0&page=1" name="price" rel="20wanyixia" title="20万以下"> 30-35万 </a> 
						<a class="sx_child" href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=40.0&page=1" name="price" rel="20wanyishang" title="20万以上"> 35-40万 </a> 
						<a class="sx_child" href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=41.0&page=1" name="price" rel="20wanyishang" title="20万以上"> 40万以上 </a>
						<a class="sx_child" href="#" name="shop_price" rel="3wanyixia"
							title="3万以下"> 3万以下 </a> <a class="sx_child" href="#"
							name="shop_price" rel="3dao5wan" title="5万以下"> 3-5万 </a> <a
							class="sx_child" href="#" name="shop_price" rel="7wanyixia"
							title="7万以下"> 5-7万 </a> <a class="sx_child" href="#"
							name="shop_price" rel="9wanyixia" title="9万以下"> 7-9万 </a> <a
							class="sx_child" href="#" name="shop_price" rel="12wanyixia"
							title="12万以下"> 9-12万 </a> <a class="sx_child" href="#"
							name="shop_price" rel="16wanyixia" title="16万以下"> 12-16万 </a> <a
							class="sx_child" href="#" name="shop_price" rel="20wanyixia"
							title="20万以下"> 16-20万 </a> <a class="sx_child" href="#"
							name="shop_price" rel="20wanyishang" title="20万以上"> 20万以上 </a> <span
							class="input-box clearfix rangeFilter"> <label> <input
								type="text" value="" data-default-value="0" size="4"
								class="js-begin" maxlength="3" id="my_price_b" name="b"></label>
							<label><i class="input-line">-</i></label> <label> <input
								type="text" value="" data-default-value="999" size="4"
								class="js-end" maxlength="3" id="my_price_e" name="e"></label> <label
							class="input-unit">万</label> <label><a gjalog="" href="#"
								class="input-btn js-btn">筛选</a></label>
						</span>
					</dd>
				</dl> --%>
				<%-- <span class="span1"></span>
				<dl class="fliter-bd clearfix sx">
					<dt>车龄：</dt>
					<dd>
						<a data-role="filterItemAge" data-value="" class="on" href="#">不限</a>
						<a class="sx_child"
							href="${ pageContext.request.contextPath }/product_findByTime.action?carDate=2012-05-01&page=1"
							name="coty" rel="5nianyishang" title="5年以上"> 5年以上 </a> <a
							class="sx_child"
							href="${ pageContext.request.contextPath }/product_findByTime.action?carDate=2012-06-01&page=1"
							name="coty" rel="5niannei" title="3-5年 "> 3-5年 </a> <a
							class="sx_child"
							href="${ pageContext.request.contextPath }/product_findByTime.action?carDate=2014-06-01&page=1"
							name="coty" rel="3niannei" title="1-3年"> 1-3年</a> <a
							class="sx_child"
							href="${ pageContext.request.contextPath }/product_findByTime.action?carDate=2016-06-01&page=1"
							name="coty" rel="1niannei" title="1年以内">1年以内 </a>
							<a data-role="filterItemAge" data-value="" class="on" href="#">不限</a> 
        					<a  class="sx_child" href="#" name="carDate" rel="over-5-years" title="5年以上"> 5年以上 </a> 
        					<a class="sx_child" href="#" name="carDate" rel="3-5years" title="5年内"> 3-5年</a> 
        					<a  class="sx_child" href="#" name="carDate" rel="1-3years" title="3年内"> 1-3年 </a> 
        					<a  class="sx_child" href="#" name="carDate" rel="the-past-year" title="1年以内"> 1年以内 </a> 
					</dd>
				</dl> --%>
				<span class="span1"></span>
				<div class="moreitem clearfix">
					<span>更多：</span>
					<dl class="selecter sx">
						<dt>车型</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);">不限</a></li>
								<li><a class="sx_child" name="type" rel="compactcar"
									title="紧凑型车"> 紧凑型车 </a></li>
								<li><a class="sx_child" name="type" rel="minicar"
									title="小型车"> 小型车 </a></li>
								<li><a class="sx_child" name="type" rel="SUV" title="SUV">
										SUV </a></li>
								<li><a class="sx_child" name="type" rel="middlesizedcar"
									title="中型车"> 中型车 </a></li>
								<li><a class="sx_child" name="type" rel="largecar"
									title="大型车"> 大型车 </a></li>
								<li><a class="sx_child" name="type" rel="MPV" title="MPV">
										MPV </a></li>
							</ul>
						</dd>
					</dl>
					<%-- <span class="span1"></span>
					<dl class="selecter sx">
						<dt>行驶里程</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);">不限</a></li>
								<li><a class="sx_child" name="mileage" rel="1wangongli"
									title="1万公里内 " href="javascript:void(0);"> 1万公里内 </a></li>
								<li><a class="sx_child" name="mileage" rel="3wangongli"
									title="3万公里内" href="javascript:void(0);"> 3万公里内 </a></li>
								<li><a class="sx_child" name="mileage" rel="5wangonglinei"
									title="5万公里内" href="javascript:void(0);"> 5万公里内 </a></li>
								<li><a class="sx_child" name="mileage" title="5万公里以上"
									rel="5wangonglishang" href="javascript:void(0);"> 5万公里以上 </a></li>
							</ul>
						</dd>
					</dl> --%>
					<span class="span1"></span>
					<dl class="selecter sx">
						<dt>变速箱</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);">不限</a></li>
								<li><a class="sx_child" name="gearbox" rel="MT"
									title="手动" href="javascript:void(0);"> 手动 </a></li>
								<li><a class="sx_child" name="gearbox" rel="DCT"
									title="双离合" href="javascript:void(0);"> 双离合 </a></li>
								<li><a class="sx_child" name="gearbox" rel="AMT"
									title="手自一体" href="javascript:void(0);"> 手自一体 </a></li>
							</ul>
						</dd>
					</dl>
					<span class="span1"></span>
					<dl class="selecter sx">
						<dt>排量</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);">不限</a></li>
								<li><a class="sx_child" name="displacement" rel="low1.0"
									title="1.0" href="javascript:void(0);"> 1.0L以下 </a></li>
								<li><a class="sx_child" name="displacement" rel="1.0to1.6"
									title="1.0-1.6" href="javascript:void(0);"> 1.0-1.6L </a></li>
								<li><a class="sx_child" name="displacement" rel="1.6to2"
									title="1.6-2.0" href="javascript:void(0);"> 1.6-2.0L </a></li>
								<li><a class="sx_child" name="displacement" rel="2to3"
									title="2.0-3.0" href="javascript:void(0);"> 2.0-3.0L </a></li>
								<li><a class="sx_child" name="displacement" title="3.0L以上"
									rel="3.0high" href="javascript:void(0);"> 3.0L以上 </a></li>
							</ul>
						</dd>
					</dl>
					<%-- <span class="span1"></span>
					<dl class="selecter sx">
						<dt>排放标准</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);">不限</a></li>
								<li><a class="sx_child" name="discharge" rel="guoer"
									href="javascript:void(0);"> 国二及以上 </a></li>
								<li><a class="sx_child" name="discharge" rel="guosan"
									href="javascript:void(0);"> 国三及以上 </a></li>
								<li><a class="sx_child" name="discharge" rel="guosi"
									href="javascript:void(0);"> 国四及以上 </a></li>
								<li><a class="sx_child" name="discharge" rel="guowu"
									href="javascript:void(0);"> 国五 </a></li>
							</ul>
						</dd>
					</dl> --%>
					<%-- <span class="span1"></span>
					<dl class="selecter sx">
						<dt>燃油类型</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);">不限</a></li>
								<li><a class="sx_child" name="fuel" rel="gasoline"
									href="javascript:void(0);"> 汽油 </a></li>
								<li><a class="sx_child" name="fuel" rel="diesel"
									href="javascript:void(0);"> 柴油 </a></li>
								<li><a class="sx_child" name="fuel" rel="electric"
									href="javascript:void(0);"> 电动 </a></li>
								<li><a class="sx_child" name="fuel" rel="blend"
									href="javascript:void(0);"> 油电混合 </a></li>
								<li><a class="sx_child" name="fuel" rel="other"
									href="javascript:void(0);"> 其他 </a></li>
							</ul>
						</dd>
					</dl> --%>
					<span class="span1"></span>
					<dl class="selecter sx">
						<dt>颜色</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);">不限</a></li>
								<li><a class="sx_child" name="colour" rel="black"
									title="黑色" href="javascript:void(0);"> <i class="c-lump03"></i>黑色
								</a></li>
								<li><a class="sx_child" name="colour" rel="white"
									title="白色" href="javascript:void(0);"> <i class="c-lump04"></i>白色
								</a></li>
								<li><a class="sx_child" name="colour" rel="silver"
									title="银灰色" href="javascript:void(0);"> <i class="c-lump10"></i>银灰色
								</a></li>
								<li><a class="sx_child" name="colour" rel="red" title="红色"
									href="javascript:void(0);"> <i class="c-lump09"></i>红色
								</a></li>
								<li><a class="sx_child" name="colour" rel="grey"
									title="深灰色" href="javascript:void(0);"> <i class="c-lump15"></i>深灰色
								</a></li>
								<li><a class="sx_child" name="colour" rel="orange"
									title="橙色" href="javascript:void(0);"> <i class="c-lump11"></i>橙色
								</a></li>
								<li><a class="sx_child" name="colour" rel="green"
									title="绿色" href="javascript:void(0);"> <i class="c-lump02"></i>绿色
								</a></li>
								<li><a class="sx_child" name="colour" rel="blue" title="蓝色"
									href="javascript:void(0);"> <i class="c-lump05"></i>蓝色
								</a></li>
								<li><a class="sx_child" name="colour" rel="coffee"
									title="咖啡色" href="javascript:void(0);"> <i class="c-lump06"></i>咖啡色
								</a></li>
								<li><a class="sx_child" name="colour" rel="violet"
									title="紫色" href="javascript:void(0);"> <i class="c-lump07"></i>紫色
								</a></li>
								<li><a class="sx_child" name="colour" rel="champagne"
									title="香槟色" href="javascript:void(0);"> <i class="c-lump08"></i>香槟色
								</a></li>
								<li><a class="sx_child" name="colour" rel="multicolor"
									title="多彩色" href="javascript:void(0);"> <i class="c-lump12"></i>多彩色
								</a></li>
								<li><a class="sx_child" name="colour" rel="yellow"
									title="黄色" href="javascript:void(0);"> <i class="c-lump13"></i>黄色
								</a></li>
							</ul>
						</dd>
					</dl>
					<span class="span1"></span>
					<dl class="selecter sx">
						<dt>国别</dt>
						<dd>
							<ul>
								<li><a href="javascript:void(0);">不限</a></li>
								<li><a class="sx_child" name="country" rel="German"
									title="德系" href="javascript:void(0);"> 德系 </a></li>
								<li><a class="sx_child" name="country" rel="Japan"
									title="日系" href="javascript:void(0);"> 日系 </a></li>
								<li><a class="sx_child" name="country" rel="USA" title="美系"
									href="javascript:void(0);"> 美系 </a></li>
								<li><a class="sx_child" name="country" rel="France"
									title="法系" href="javascript:void(0);"> 法系 </a></li>
								<li><a class="sx_child" name="country" rel="Korean"
									title="韩系" href="javascript:void(0);"> 韩系 </a></li>
								<li><a class="sx_child" name="country" rel="China"
									title="国产" href="javascript:void(0);"> 国产 </a></li>
							</ul>
						</dd>
					</dl>
					<span class="span1"></span>
				</div>

			</div>
			<div class="sel-menu clearfix zj">
				<p class="sel-p">当前筛选&gt;</p>
				<a href="#" class=""></a><a href="#" class="sel-reset qcqb"> </a> <br />
				<p class="sel-p">
					共为您找到<b>
					<s:if test="pageBean.totalCount !=null"><s:property value="pageBean.totalCount" /></s:if>
					<s:else>0</s:else>
					</b>辆车
				</p>
			</div>
		</div>
		<!-- <div class="seqBox clearfix">
			<ul class="sequen">
				<li class="first"><a href="#">默认排序</a></li>
				<li><a href="#" title="">最新发布 </a></li>
				<li><a href="#" title="">价格<i class="up"></i>
				</a></li>
				<li><a href="#" title="">车龄<i class="up"></i>
				</a></li>
				<li><a href="#" title="">里程<i class="up"></i>
				</a></li>
			</ul>

		</div> -->
		<ul class="carList">
			<s:iterator var="p" value="pageBean.list">
				<li>
					<div class="list-infoBox">
						<a title="<s:property value="#p.pname"/>" target="_blank"
							class="imgtype"
							href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>">
							<img width="290" height="194"
							src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
							alt="<s:property value="#p.pname"/>"> <s:if
									test="#p.state == 4">
									<img src="images/soldout.png" alt=""
										style="width: 80px; height: 80px; position: absolute;top: 0; right: 0;" />
								</s:if>
						</a>
						<p class="infoBox">
							<a title="<s:property value="#p.pname"/>"
								href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
								target="_blank" class="info-title"><s:property
									value="#p.pname" /></a>
						</p>
						<p class="fc-gray">
							<span class="tag-gray"><s:property value="#p.city" /></span> <span
								class=""><s:property value="#p.carData" />上牌</span> <em
								class="shuxian">|</em> 行驶
							<s:property value="#p.mileage" />
						</p>
						<p class="priType-s">
							<em class="tag-red">急售</em> <em class="tag-green">准新车</em>
							<!-- <em class="tag-yellow">超值</em>
					   <em class="tag-blue">里程少</em> -->
							<span> <i class="fc-org priType"> <s:property
										value="#p.shop_price" />万
							</i>
							</span> <s><s:property value="#p.market_price" />万</s>
						</p>
					</div>
				</li>
			</s:iterator>
		</ul>
	</div>
	<!-- <div class="pages">
		<a class="on" href="#">1</a><a class="" href="#">2</a><a class=""
			href="#">3</a><a class="" href="#">4</a><a class="" href="#">5</a> <a
			href="#">6</a><a href="#">&gt;&gt;</a>
	</div> -->
	<div class="pagination">
		<div class="ppp">
			<span>第 <s:property value="pageBean.page" />/<s:property
					value="pageBean.totalPage" /> 页
			</span>
			<s:if test="cid != null">
				<s:if test="pageBean.page != 1">
					<a
						href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=1"
						class="firstPage">&nbsp;</a>
					<a
						href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page-1"/>"
						class="previousPage">&nbsp;</a>
				</s:if>

				<s:iterator var="i" begin="1" end="pageBean.totalPage">
					<s:if test="pageBean.page != #i">
						<a
							href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="#i"/>"><s:property
								value="#i" /></a>
					</s:if>
					<s:else>
						<span class="currentPage"><s:property value="#i" /></a> </span>
					</s:else>
				</s:iterator>

				<s:if test="pageBean.page != pageBean.totalPage">
					<a class="nextPage"
						href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
					<a class="lastPage"
						href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
				</s:if>
			</s:if>
			<s:elseif test="csid != null">
				<s:if test="pageBean.page != 1">
					<a
						href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=1"
						class="firstPage">&nbsp;</a>
					<a
						href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page-1"/>"
						class="previousPage">&nbsp;</a>
				</s:if>

				<s:iterator var="i" begin="1" end="pageBean.totalPage">
					<s:if test="pageBean.page != #i">
						<a
							href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="#i"/>"><s:property
								value="#i" /></a>
					</s:if>
					<s:else>
						<span class="currentPage"><s:property value="#i" /></span>
					</s:else>
				</s:iterator>

				<s:if test="pageBean.page != pageBean.totalPage">
					<a class="nextPage"
						href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
					<a class="lastPage"
						href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
				</s:if>
			</s:elseif>
			<s:elseif test="type != null">
				<s:if test="pageBean.page != 1">
					<a
						href="${ pageContext.request.contextPath }/product_findByType.action?type=<s:property value="type"/>&page=1"
						class="firstPage">&nbsp;</a>
					<a
						href="${ pageContext.request.contextPath }/product_findByType.action?type=<s:property value="type"/>&page=<s:property value="pageBean.page-1"/>"
						class="previousPage">&nbsp;</a>
				</s:if>

				<s:iterator var="i" begin="1" end="pageBean.totalPage">
					<s:if test="pageBean.page != #i">
						<a
							href="${ pageContext.request.contextPath }/product_findByType.action?type=<s:property value="type"/>&page=<s:property value="#i"/>"><s:property
								value="#i" /></a>
					</s:if>
					<s:else>
						<span class="currentPage"><s:property value="#i" /></span>
					</s:else>
				</s:iterator>

				<s:if test="pageBean.page != pageBean.totalPage">
					<a class="nextPage"
						href="${ pageContext.request.contextPath }/product_findByType.action?type=<s:property value="type"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
					<a class="lastPage"
						href="${ pageContext.request.contextPath }/product_findByType.action?type=<s:property value="type"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
				</s:if>
			</s:elseif>
			<s:elseif test="shop_price != null">
				<s:if test="pageBean.page != 1">
					<a
						href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=<s:property value="shop_price"/>&page=1"
						class="firstPage">&nbsp;</a>
					<a
						href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=<s:property value="shop_price"/>&page=<s:property value="pageBean.page-1"/>"
						class="previousPage">&nbsp;</a>
				</s:if>

				<s:iterator var="i" begin="1" end="pageBean.totalPage">
					<s:if test="pageBean.page != #i">
						<a
							href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=<s:property value="shop_price"/>&page=<s:property value="#i"/>"><s:property
								value="#i" /></a>
					</s:if>
					<s:else>
						<span class="currentPage"><s:property value="#i" /></span>
					</s:else>
				</s:iterator>

				<s:if test="pageBean.page != pageBean.totalPage">
					<a class="nextPage"
						href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=<s:property value="shop_price"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
					<a class="lastPage"
						href="${ pageContext.request.contextPath }/product_findByPrice.action?shop_price=<s:property value="shop_price"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
				</s:if>
			</s:elseif>
			<s:elseif test="pname != null">
				<s:if test="pageBean.page != 1">
					<a
						href="${ pageContext.request.contextPath }/product_searchCar.action?pname=<s:property value="pname"/>&page=1"
						class="firstPage">&nbsp;</a>
					<a
						href="${ pageContext.request.contextPath }/product_searchCar.action?pname=<s:property value="pname"/>&page=<s:property value="pageBean.page-1"/>"
						class="previousPage">&nbsp;</a>
				</s:if>

				<s:iterator var="i" begin="1" end="pageBean.totalPage">
					<s:if test="pageBean.page != #i">
						<a
							href="${ pageContext.request.contextPath }/product_searchCar.action?pname=<s:property value="pname"/>&page=<s:property value="#i"/>"><s:property
								value="#i" /></a>
					</s:if>
					<s:else>
						<span class="currentPage"><s:property value="#i" /></span>
					</s:else>
				</s:iterator>

				<s:if test="pageBean.page != pageBean.totalPage">
					<a class="nextPage"
						href="${ pageContext.request.contextPath }/product_searchCar.action?pname=<s:property value="pname"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
					<a class="lastPage"
						href="${ pageContext.request.contextPath }/product_searchCar.action?pname=<s:property value="pname"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
				</s:if>
			</s:elseif>
			
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
							<a href="abut.html">网站合作</a> <a href="about.html">关于我们</a> <a
								href="contact.html">联系我们</a>
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
							<h1>400-877-9288</h1>
							<p>周一至周日 8:00-18:00</p>
							<p>免费咨询(咨询、建议、投诉)</p>
							<a href="#" class="kf"><i class="kf-icon"></i>在线客服</a>
						</div>
						<div class="tel-mb">
							<p>
								<span>400-710-8886</span>周一至周日 8:00-18:00(仅收市话费)
							</p>
							<a href="#" class="kf"><i class="kf-icon"></i>在线客服</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<script type="text/javascript" src="script/3c-menu.js"></script>
	<script type="text/javascript" src="script/lg_reg.js"></script>
	<!--会员登录和注册弹出框开始-->
	<div id="popBox">
		<div class="popCont">
			<a class="p_closed">关闭</a>
			<div class="p-tab">
				<a>会员登录<i></i></a><a>会员注册<i></i></a>
			</div>
			<div class="p-detail">
				<div class="p-dl">
					<form onsubmit="return check();" enctype="multipart/form-data"
						method="post" name="form" id="form">
						<ul class="login-items">
							<li><label>用户名(手机号)</label> <input class="input" type="text"
								value="" maxlength="32" name="username" placeholder="请输入您的手机号"></li>
							<li><label>密码</label> <input class="input" type="password"
								value="" maxlength="16" name="password"></li>
						</ul>
						<div class="login-check">
							<input type="checkbox" name="checkbox" style=" width:auto;" /> <label>记住我</label>
							<a href="Meet/editPass">忘记登录密码？</a>
						</div>
						<div class="login-button">
							<input type="hidden" value="" name="carid" class="ordercarid" />
							<input type="hidden" value="" name="carstatus"
								class="orderstatus" /> <input type="button"
								value="登&nbsp;&nbsp;&nbsp;&nbsp;陆" class="fM"
								onclick="$('#form').submit()" />
						</div>
					</form>
				</div>
				<div class="p-dl">
					<form class="registForm" onsubmit="return regcheck();"
						enctype="multipart/form-data" method="post" name="reg" id="reg">
						<ul class="login-items">
							<li class="clearfix"><input class="input" name="mobile"
								id="mobile" type="text" value="" placeholder="手机号码（登录帐号）"></li>
							<li class="clearfix"><input class="input left" type="text"
								value="" name="verify" placeholder="输入验证码" style="width:100px;" />
								<div id="send">
									<a href="#" class="send_code right">获取验证码</a>
								</div></li>
							<li class="clearfix"><input class="input" type="text"
								value="" name="realname" placeholder="姓名"></li>
							<li class="clearfix sex"><input type="radio" checked=""
								name="gender" value="M" /> 男&nbsp;&nbsp;&nbsp;&nbsp; <input
								type="radio" name="gender" value="F" /> 女</li>
							<li class="clearfix"><input id="" class="input"
								type="password" name="password" value=""
								placeholder="输入密码（六位字符）"></li>
						</ul>
						<div class="login-button">
							<input type="hidden" value="" name="carid" class="ordercarid" />
							<input type="hidden" value="" name="carstatus"
								class="orderstatus" /> <input type="button" value="立即注册"
								class="fM" onclick="$('#reg').submit()" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--会员登录和注册弹出框结束-->
	<script>
		$(function() {
			var t = null, $this, i = 0;
			//品牌
			$(".brand-all").bind({
				mouseenter : function() {
					$(this).find(".otherbrand").show();
				},
				mouseleave : function() {
					$(this).find(".otherbrand").hide();
				}
			});

		});
	</script>
	<script type="text/javascript">
		$(".hoverWidget").each(function() {
			$(this).mouseenter(function() {
				$(this).addClass("active")
			}).mouseleave(function() {
				$(this).removeClass("active")
			})
		});
	</script>
	<div id="leftsead">
		<ul>
			<li><a id="top_btn"> <img src="images/foot03/ll06.png"
					width="47" height="49" class="hides" /> <img
					src="images/foot03/l06.png" width="47" height="49" class="shows" />
			</a></li>

			<li><a target="_blank"
				href="http://wpa.qq.com/msgrd?v=3&uin=550154736&site=qq&menu=yes">
					<img src="images/foot03/ll03.png" width="47" height="49"
					class="hides" /> <img src="images/foot03/l03.png" width="47"
					height="49" class="shows" />
			</a></li>

			<li><a href=""> <img src="images/foot03/ll02.png"
					width="166" height="49" class="hides" /> <img
					src="images/foot03/l04.png" width="47" height="49" class="shows" />
			</a></li>

			<li><a class="youhui"> <img src="images/foot03/l02.png"
					width="47" height="49" class="shows" /> <img src="images/f_wx.jpg"
					width="196" height="205" class="hides" usemap="#taklhtml" />
			</a></li>



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
	<script type="text/javascript">
		$(function() {
			$(".selecter").each(
					function() {
						var s = $(this);
						var z = parseInt(s.css("z-index"));
						var dt = $(this).children("dt");
						var dd = $(this).children("dd");
						var _show = function() {
							dd.slideDown(200);
							dt.addClass("cur");
							s.css("z-index", z + 1);
						}; //展开效果
						var _hide = function() {
							dd.slideUp(200);
							dt.removeClass("cur");
							s.css("z-index", z);
						}; //关闭效果
						dt.click(function() {
							dd.is(":hidden") ? _show() : _hide();
						});
						dd.find("a").click(function() {
							dt.html($(this).html());
							_hide();
						}); //选择效果（如需要传值，可自定义参数，在此处返回对应的“value”值 ）
						$("body").click(
								function(i) {
									!$(i.target).parents(".selecter").first()
											.is(s) ? _hide() : "";
								});
					})
		})
	</script>
	<script type="text/javascript">
		$('.sx').sx({
			nuv : ".zj",//筛选结果
			zi : "sx_child",//所有筛选范围内的子类
			qingchu : '.qcqb',//清除全部
			over : 'sel-a'//选中状态样式名称
		});
	</script>
	<%-- <script type="text/javascript">
	$(document).ready(
	function(){
	$("dd a").click(
	function(){
	alert(this.name +"="+ this.title)
	}
	)}
	);
</script> --%>

</body>
</html>