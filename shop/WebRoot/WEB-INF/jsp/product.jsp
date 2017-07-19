<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>汽车详情页</title>
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath}/css/base.css" />
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath}/css/home.css" />
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath}/city/city.css">
			<link rel="stylesheet" type="text/css"
				href="${pageContext.request.contextPath}/css/change.css">
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
					src="${pageContext.request.contextPath}/script/superslide.2.1.js"></script>
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

				<!--下拉导航关闭-->
				<script type="text/javascript">
					$(function() {
						$('.menu-mb i').click(function() {
							$(".navigation-mb-list").slideDown(300);
						});
						$('.navigation-mb-list .list-close-btn').click(
								function() {
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
						$(window).scroll(
								function() {
									if ($(window).scrollTop() > scroll_heitht
											&& isShow) {
										$('.stress-search-box').slideDown(200);
									} else {
										$('.stress-search-box').slideUp(200);
									}
								});
						$('.stress-close a').click(
								function() {
									isShow = false;
									$('.stress-search-box').slideUp(200)
											.unbind(window, aa);
								});
					});
				</script>
</head>
<body>
	<%@ include file="menu.jsp"%>

	<!--所在位置-->
	<div class="crumbp">
		<a href="${ pageContext.request.contextPath }/index.action">首页</a> <em>&gt;</em>
		<span>个人二手车</span>
	</div>
	<div class="mainbox">
		<!--车子概况头部-->
		<div class="car-top">
			<div class="row">
				<div class="mainpic">
					<img
						src="${ pageContext.request.contextPath }/<s:property value="model.image"/>"
						height="390"> <s:if test="model.state == 4">
							<img src="images/soldout.png" alt=""
								style="width: 80px; height: 80px; position: absolute;top: 0; right: 25px;" />
						</s:if><a href="#picture" class="showpic">查看图集</a>
				</div>
				<div class="carinfor">
					<h3 class="car-allname">
						<s:property value="model.pname" />
					</h3>
					<div class="price-box">
						<div class="price-infor">
							<p>
								<span class="nowprice"> 总价：<s:property
										value="model.market_price" />万元
								</span>
							</p>
						</div>

						<!--点击按钮-->

						<a href="javascript:void(0)" class="click_pop">详情</a>


						<!--遮罩层-->
						<div class="bgPop"></div>
						<!--弹出框-->
						<div class="pop">
							<p>分期付款详情</p>
							<table class="infoTable">
								<tr>
									<th class="infoTh">推荐金融方案</th>
									<th>首付</th>
									<th>月付</th>
									<th>尾款</th>
									<th>操作</th>
								</tr>
								<tr align="center">
									<td class="infoTd">首付30%产品</td>
									<td>29400元</td>
									<td>3000元/月×24期</td>
									<td>0元</td>
									<td><input class="btn" type="button" value="申请" /></td>
								</tr>
								<tr align="center">
									<td class="infoTd">首付30%产品</td>
									<td>30000元</td>
									<td>2000元/月×36期</td>
									<td>0元</td>
									<td><input class="btn" type="button" value="申请" /></td>
								</tr>
								<tr align="center">
									<td class="infoTd">低月供</td>
									<td>50000元</td>
									<td>1000元/月×36期</td>
									<td>50000元</td>
									<td><input class="btn" type="button" value="申请" /></td>
								</tr>
								<tr align="center">
									<td class="infoTd">无月供</td>
									<td>60000元</td>
									<td>0元</td>
									<td>65000元</td>
									<td><input class="btn" type="button" value="申请" /></td>
								</tr>
							</table>
							<p
								style="padding: 0 0 30px 40px;display: inline-block;width: 630px;">
								<span
									style="font-size: 14px;color: #333;line-height: 25px;display: block;">1、提供手机号、借记卡号、身份证即可申请</span>
								<span
									style="font-size: 14px;color: #333;line-height: 25px;display: block;">2、申请无户籍、房产、职业限制</span>
								<span
									style="font-size: 14px;color: #333;line-height: 25px;display: block;">3、首付最终价格以您通过信审后的实际价格为准</span>
								<span
									style="font-size: 14px;color: #333;line-height: 25px;display: block;">4、将严格保密用户隐私信息请放心填写</span>
							</p>
							<input type="button" value="Cancel" class="cancel" /> <input
								type="button" value="OK" class="ok" />
						</div>
						<script>
							$(function() {
								$('.click_pop').click(function() {
									$('.bgPop,.pop').show();

								});
								$('.cancel').click(function() {
									$('.bgPop,.pop').hide();
								});
								$('.ok').click(function() {
									$('.bgPop,.pop').hide();
								});
							})
						</script>
					</div>
					<div class="clear_fix"></div>
					<div class="item-box">
						<div class="itemlist rightline">
							<p class="text-muted">上牌城市</p>
							<p>
								<s:property value="model.city" />
							</p>
						</div>
						<div class="itemlist rightline">
							<p class="text-muted">上牌时间</p>
							<p>
								<s:date name="model.carDate" format="yyyy-MM-dd" />
							</p>
						</div>
						<div class="itemlist rightline">
							<p class="text-muted">表显里程</p>
							<p>
								<s:property value="model.mileage" />
							</p>
						</div>
						<div class="itemlist rightline">
							<p class="text-muted">排量</p>
							<p>
								<s:property value="model.displacement" />
							</p>
						</div>
						<div class="itemlist">
							<p class="text-muted">变速箱</p>
							<p>
								<s:property value="model.gearbox" />
							</p>
						</div>
					</div>
					<div class="row">
						<div class="tel-box">
							电话咨询 :<em>400-877-9388</em>
						</div>
						<!-- 提交预约看车信息 -->
						<form id="cartForm"
							action="${ pageContext.request.contextPath }/order_chatOrder.action"
							method="post">
							<div class="order_button">
								<input type="hidden" name="pid"
									value="<s:property value="model.pid"/>" /> <input
									class="wanttoprice orderbut" type="button" id="sendMESS"
									onclick="saveCart()" value="预约看车" />
							</div>
						</form>
						<script>
							function saveCart() {
								document.getElementById("cartForm").submit();
							}
						</script>
						<%-- 			<div class="order_button">
							<a href="#" class="shouchang" id="sendMESStx">收藏</a>
							<!--<a href="#" class="yshouchang">已收藏</a>-->
							<div id="fp">
								<ul style=" position:relative;">
									<li>
										<div class="fenxiang">分享</div>
										<div class="co-pan" width="240"
											style="top: 50%; margin-top: -34.5px; width: 0px;">
											<div style="width:212px;position:relative; ">
												<div
													style="border:1px solid #ddd;padding: 0px 10px;background:#fff;">
													<div
														style="border-bottom:1px solid #ddd; line-height:30px; color:#333; font-size:16px; text-align:left;">分享到：</div>
													<div>
														<div class="bdsharebuttonbox bdshare-button-style1-24"
															data-bd-bind="1479453771421">
															<a href="#" class="bds_qzone" data-cmd="qzone"
																title="分享到QQ空间"></a> <a href="#" class="bds_tsina"
																data-cmd="tsina" title="分享到新浪微博"></a> <a href="#"
																class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a> <a
																href="#" class="bds_renren" data-cmd="renren"
																title="分享到人人网"></a> <a href="#" class="bds_weixin"
																data-cmd="weixin" title="分享到微信"></a> <a href="#"
																class="bds_tqf" data-cmd="tqf" title="腾讯朋友"></a>
														</div>
														<script>
															window._bd_share_config = {
																common : {
																	"bdSnsKey" : {},
																	"bdText" : "",
																	"bdMini" : "2",
																	"bdMiniList" : false,
																	"bdPic" : "",
																	"bdStyle" : "1",
																	"bdSize" : "16"
																},
																share : [ {
																	"bdSize" : 24,
																} ],

																selectShare : [ {
																	"bdselectMiniList" : [
																			'qzone',
																			'tsina',
																			'tqq',
																			'renren',
																			'weixin',
																			'tqf' ]
																} ]
															}
															with (document)
																0[(getElementsByTagName('head')[0] || body)
																		.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='
																		+ ~(-new Date() / 36e5)];
														</script>
													</div>
												</div>
												<div class="co-pan-arr" style="right:-11px;"></div>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div> --%>
					</div>
					<!--优势-->
					<div class="advantage">
						<h3>已对该车辆进行检测，并将提供售后服务及保障。</h3>
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
		</div>
		<!--详细导航-->
		<!--<div class="cont-tips-outer" id="J_m_nav">
    <div class="cont-tips"> <a class="apt-btn fr" id="sendMESS">预约看车</a>
      <p class="fr check-tel"> <span class="f18"> <i>看车电话：</i> <b class="teltype">400-733-6622</b> </span> </p>
      <ul class="cont-tips-qh clearfix">
        <li class="active"><a href="#config" rel="nofollow">交易顾问</a></li>
        <li><a href="#base" rel="nofollow">基本信息</a></li>
        <li><a href="#picture" rel="nofollow">车辆图片</a></li>
        <li><a href="#report" rel="nofollow">检测报告</a></li>
        <li><a href="#luxian" rel="nofollow">看车路线</a></li>
      </ul>
    </div>
  </div>-->

		<!--认证 -->
		<div class="renzheng">
			<div class="bg_box">认证图片</div>
		</div>
		<div id="base">
			<!--基本信息-->
			<div class="titles">
				<h2>基本信息</h2>
			</div>
			<div class="ca-table">
				<table>
					<tbody>
						<tr>
							<td class="ca-td1">归属地：</td>
							<td><s:property value="model.city" /></td>
							<td class="ca-td1">车型：</td>
							<td><s:property value="model.type" /></td>
							<td class="ca-td1">颜色：</td>
							<td><s:property value="model.colour" /></td>
							<td class="ca-td1">排量：</td>
							<td><s:property value="model.displacement" /></td>
						</tr>
						<tr>
							<td class="ca-td1">变速箱：</td>
							<td><s:property value="model.gearbox" /></td>
							<td class="ca-td1">行驶里程：</td>
							<td><s:property value="model.mileage" /></td>
							<td class="ca-td1">国别：</td>
							<td><s:property value="model.country" /></td>
							<td class="ca-td1">上牌日期：</td>
							<td><s:date name="model.carDate" format="yyyy-MM-dd" /></td>
						</tr>
						<tr>
							<td class="ca-td1">燃油类型：</td>
							<td>汽油</td>
							<td class="ca-td1">排放标准：</td>
							<td>国4</td>
							<td class="ca-td1">年检到期：</td>
							<td><s:property value="model.annualInspection" /></td>
							<td class="ca-td1">保险到期：</td>
							<td><s:property value="model.carInsurance" /></td>
						</tr>
						
					</tbody>
				</table>
			</div>
		</div>
		<div id="picture">
			<!--车俩图片-->
			<div class="titles">
				<h2>车辆图片</h2>
			</div>
			<ul class="carpiclist">
				<li class="fl"><img
					src="${ pageContext.request.contextPath }/<s:property value="model.imageFront"/>"
					width="590" height="500" />
					<p class="top-banner">
						<span class="title">外观-发动机舱</span> <span class="desc">车身内饰干净整洁</span>
					</p></li>
				<li class="fl"><img
					src="${ pageContext.request.contextPath }/<s:property value="model.imageFront"/>"
					width="590" height="500" />
					<p class="top-banner">
						<span class="title">外观-车顶</span> <span class="desc">车身内饰干净整洁</span>
					</p></li>
				<li class="fl"><img
					src="${ pageContext.request.contextPath }/<s:property value="model.imageFront"/>"
					width="590" height="500" />
					<p class="top-banner">
						<span class="title">外观-后备箱</span> <span class="desc">车身内饰干净整洁</span>
					</p></li>
				<li class="fl"><img
					src="${ pageContext.request.contextPath }/<s:property value="model.imageFront"/>"
					width="590" height="500" />
					<p class="top-banner">
						<span class="title">外观-底盘</span> <span class="desc">车身内饰干净整洁</span>
					</p></li>
				<li class="fl"><img
					src="${ pageContext.request.contextPath }/<s:property value="model.imageFront"/>"
					width="590" height="500" />
					<p class="top-banner">
						<span class="title">外观-前</span> <span class="desc">车身内饰干净整洁</span>
					</p></li>
				<li class="fr"><img
					src="${ pageContext.request.contextPath }/<s:property value="model.imageBehind"/>"
					width="590" height="500" />
					<p class="top-banner">
						<span class="title">外观-后</span> <span class="desc">车身内饰干净整洁</span>
					</p></li>
				<li class="fl"><img
					src="${ pageContext.request.contextPath }/<s:property value="model.imageLeft"/>"
					width="590" height="500" />
					<p class="top-banner">
						<span class="title">外观-左</span> <span class="desc">车身内饰干净整洁</span>
					</p></li>
				<li class="fr"><img
					src="${ pageContext.request.contextPath }/<s:property value="model.imageRight"/>"
					width="590" height="500" />
					<p class="top-banner">
						<span class="title">外观-右</span> <span class="desc">车身内饰干净整洁</span>
					</p></li>
				<li class="fl"><img
					src="${ pageContext.request.contextPath }/<s:property value="model.imageInterior1"/>"
					width="590" height="500" />
					<p class="top-banner">
						<span class="title">前排内饰</span> <span class="desc">车身内饰干净整洁</span>
					</p></li>
				<li class="fr"><img
					src="${ pageContext.request.contextPath }/<s:property value="model.imageInterior2"/>"
					width="590" height="500" />
					<p class="top-banner">
						<span class="title">后排内饰</span> <span class="desc">车身内饰干净整洁</span>
					</p></li>
			</ul>
			<div class="clear_fix"></div>
			<!--车俩图片-->
			<div class="titles">
				<h2>查看更多细节</h2>
			</div>
			<div class="picMarquee-left1">
				<div class="hd">
					<a class="next"></a> <a class="prev"></a>
				</div>
				<div class="bd">
					<ul class="picList">
						<li>
							<div class="pic">
								<img
									src="${ pageContext.request.contextPath }/<s:property value="model.imageFront"/>" />
							</div>
						</li>
						<li>
							<div class="pic">
								<img
									src="${ pageContext.request.contextPath }/<s:property value="model.imageBehind"/>" />
							</div>
						</li>
						<li>
							<div class="pic">
								<img
									src="${ pageContext.request.contextPath }/<s:property value="model.imageLeft"/>" />
							</div>
						</li>
						<li>
							<div class="pic">
								<img
									src="${ pageContext.request.contextPath }/<s:property value="model.imageRight"/>" />
							</div>
						</li>
						<li>
							<div class="pic">
								<img
									src="${ pageContext.request.contextPath }/<s:property value="model.imageInterior1"/>" />
							</div>
						</li>
						<li>
							<div class="pic">
								<img
									src="${ pageContext.request.contextPath }/<s:property value="model.imageInterior2"/>" />
							</div>
						</li>
					</ul>
				</div>
			</div>
			<script type="text/javascript">
				jQuery(".picMarquee-left1").slide({
					titCell : ".hd ul",
					mainCell : ".bd ul",
					autoPage : true,
					effect : "left",
					autoPlay : false,
					vis : 4
				});
			</script>
		</div>
		<!--检测报告-->
		<div id="report">
			<div class="titles">
				<h2>检测报告</h2>
			</div>
			<div class="modbox1 combox">
				<div class="detecttitle">
					<h3 class="yahei f30">车辆检测报告</h3>
					<span>检测时间：<s:date name="model.pdate" format="yyyy-MM-dd"/></span> <span>车况描述：<s:property
							value="model.pdesc" /></span>
				</div>
				<div class="linetype"></div>
				<div class="headline-bd" id="accident">
					<span class="headline yahei">事故排查</span> <span class="f14">该车骨架完好，排除事故车，排除泡水车，排除火烧车。</span>
					<button type="button" class="accidentBtn">详情</button>
				</div>
				<script type="text/javascript">
					$(document).ready(function() {
						$(".accidentBtn").click(function() {
							$(".jctable").toggle();
						});
						$(".systemBtn").click(function() {
							$(".stepfont").toggle();
						});
					});
				</script>
				<div class="detectBox clearfix">
					<div class="bitside fl">
						<div class="bitbox">
							<p class="yahei f16 f-type04">排除重大碰撞</p>
							<ul class="jctable">
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左C柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右A柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左前翼子板内衬</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右C柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">后围板</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左前减震器座</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左B柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右前翼子板内衬</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右D柱</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">右B柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右前纵梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右前减震器座</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右前纵梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右前减震器座</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">右侧底座梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左前纵梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左车顶边梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左侧底边梁</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">左A柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">防火墙</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左右纵梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左后翼子板内衬</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左D柱</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">右后翼子板内衬</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右车顶边梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右后纵梁</span></li>
							</ul>
						</div>
						<div class="bitbox">
							<p class="yahei f16 f-type04">排除火烧</p>
							<ul class="jctable">
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机线束及橡胶制品</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">车辆覆盖件及驾驶舱</span></li>

							</ul>
						</div>
					</div>
					<div class="bitside fr">

						<div class="bitbox">
							<p class="yahei f16 f-type04">排除泡水</p>
							<ul class="jctable">
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机主线束</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">防火墙隔音棉</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">安全带底部</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">保鲜盒及ECU接口</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">车内线束</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">全车地胶地毯</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">全车座椅坐垫</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">后备箱边角及备胎箱</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">烟灰缸底座</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">底座滑轨及安装螺丝</span></li>
							</ul>
						</div>

					</div>
				</div>
				<div class="headline-bd" id="exterior_check">
					<span class="headline yahei">外观内饰检测</span> <span class="f14">该车有漆面修复痕迹，无钣金修复，覆盖件无更换，外观有轻微缺陷。&nbsp;该车安全系统无故障，灯光系统工作正常，设备正常，无加装，内饰整洁干净。</span>
				</div>
				<div class="detectBox clearfix"></div>
				<div class="headline-bd" id="other_check">
					<span class="headline yahei">系统设备检测</span> <span class="f14">该车机舱部件无破损变形，无渗漏痕迹，无拆卸痕迹，油液液面正常。该车悬架系统正常，底盘部分正常。</span>
					<button type="button" class="systemBtn">详情</button>
				</div>
				<div class="detectBox clearfix">
					<ul class="pilotstep">
						<li class="one">
							<h3 class="yahei f16">指示灯系统检测</h3>
							<div class="stepfont">
								<p>
									<span>近光灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>刹车灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>后转向灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>室内顶灯</span> <i class="via-icon04"></i>
								</p>
								<p>
									<span>近光灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>LED大灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>大灯高度可调</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>后雾灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>前雾灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>倒车灯</span> <i class="via-icon04"></i>
								</p>
								<p>
									<span>前转向灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>氙气大灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>自动头灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>大灯清洗</span> <i class="via-icon03"></i>
								</p>
							</div>
						</li>
						<li>
							<h3 class="yahei f16">刹车及发动机舱检测</h3>
							<div class="stepfont">
								<p>
									<span>发动机缸垫</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>冷凝器</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>机油液面</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>变速箱总裁</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>助力油壶</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>转向助力泵</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>制动油壶</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>电瓶（极柱）</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>发动机总成</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>水箱水管</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>防冻液液面</span> <i class="via-icon03"></i>
								</p>
							</div>
						</li>
						<li>
							<h3 class="yahei f16">随车工具检测</h3>
							<div class="stepfont">
								<p>
									<span>维修工具包</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>千斤顶</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>灭火器</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>备胎</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>三角警示标</span> <i class="via-icon03"></i>
								</p>
							</div>
						</li>
						<li>
							<h3 class="yahei f16">底盘悬挂检测</h3>
							<div class="stepfont">
								<p>
									<span>右后减震器</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>左前减震器</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>右前减震器</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>消音器（尾段）</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>左后减震器</span> <i class="via-icon03"></i>
								</p>
							</div>
						</li>
					</ul>
				</div>
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
	<script type="text/javascript">
		$(".appearance-det").each(function() {
			$(this).mouseenter(function() {
				$(this).addClass("active")
			}).mouseleave(function() {
				$(this).removeClass("active")
			})
		});
	</script>
	<!--提示弹窗 包含了成功 失败  提醒-->

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
	<!--预约看车-->
	<!--<div id="popBoxYzm" style="display:none">
  <div class="popForm">
    <div class="p-detail">
      <form action="" enctype="multipart/form-data" method="post" name="yzmcheck" id="yzmcheck">
        <p class="p-tit">客服将在30分钟内联系您看车，耐心等候~</p>
        
      </form>
    </div>
    <a class="closed">×</a> </div>
</div>
<script type="text/livescript">
$("#sendMESS").live("click",function(){
		$('#popBoxYzm').fadeIn();

});
</script> -->


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
	<script>
		$(function() {
			$("#fp ul li").hover(function() {
				$pan = $(this).find(".co-pan");
				var cwidth = $pan.attr('width');
				var cheight = $pan.height();
				$(this).find(".co-pan").not(".cf-item").css({
					"top" : "35px",
					"right" : "80px",
				});
				$pan.stop(true, false).animate({
					"width" : cwidth + "px"
				}, 300);
			}, function() {
				$pan = $(this).find(".co-pan");
				$pan.stop(true, false).animate({
					"width" : "0px"
				}, 300);
			});
		});
	</script>

</body>
</html>
