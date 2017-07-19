<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>汽车详情页</title>
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
	<script>
		function saveCart() {
			document.getElementById("cartForm").submit();
			/* alert(1111);
			$('#cartForm').submit(function(){
				alert($('#cartForm').serialize());
				return false; 
			});
				$.ajax({
							url : "${ pageContext.request.contextPath }/order_chatOrder.action",
							type : "post",
							dataType : "html",
							data : $('#cartForm').serialize(),
							processData : false,
							contentType : false,
							success : function(data) {
								console.log("over..");
							}
						}); */
			/* $("#cartForm").ajaxSubmit(function(message) { 
				// 对于表单提交成功后处理，message为提交页面saveReport.htm的返回内容 
				}); 

				return false; */
		}
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
</head>
<body>
	<%@ include file="menu.jsp"%>

	<div class="clear_fix"></div>
	<!--所在位置-->
	<div class="crumbp">
		<a href="http://10.3.3.44:8080/shop00/index.action">首页</a> <em>&gt;</em>
		<span>个人二手车</span>
	</div>
	<div class="mainbox">
		<!--车子概况头部-->
		<div class="car-top">
			<div class="row">
				<div class="mainpic">
					<img
						src="${ pageContext.request.contextPath }/<s:property value="model.image"/>"
						height="390"> <a href="#picture" class="showpic">查看图集</a>
				</div>
				<div class="carinfor">
					<h3 class="car-allname">
						<s:property value="model.pname" />
					</h3>
					<div class="price-box">
						<div class="price-infor">
							<p>
								<span class="nowprice"><s:property
										value="model.market_price" />万元</span>
							</p>
						</div>
						<!-- 点击详情弹出个钟分期信息 -->
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
								<s:property value="model.carData" />
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
							电话咨询 :<em>400-888-6666</em>
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


						<div class="order_button">
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
						</div>
					</div>
					<!--优势-->
					<div class="advantage">
						<h3>金鼎好车已对该车辆进行检测，并将提供售后服务及保障。</h3>
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
		<div class="cont-tips-outer" id="J_m_nav">
			<div class="cont-tips">
				<a class="apt-btn fr" id="sendMESS">预约看车</a>
				<p class="fr check-tel">
					<span class="f18"> <i>看车电话：</i> <b class="teltype">400-733-6622</b>
					</span>
				</p>
				<ul class="cont-tips-qh clearfix">
					<li class="active"><a href="#config" rel="nofollow">交易顾问</a></li>
					<li><a href="#base" rel="nofollow">基本信息</a></li>
					<li><a href="#picture" rel="nofollow">车辆图片</a></li>
					<li><a href="#report" rel="nofollow">检测报告</a></li>
					<li><a href="#luxian" rel="nofollow">看车路线</a></li>
				</ul>
			</div>
		</div>
		<!--交易顾问-->
		
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
							<td><s:property value="model.carData" /></td>
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
						<tr>
							<td colspan="8"><p>爱车外观设计大气，顺畅的线条，银色的车身颜色，爱车现在开出去也不会觉得过时。内饰精致实用，干净整洁，基本功能齐全，空
									间可以满足家庭用车需求，后排乘坐三个成年人也不会觉得很压抑。主要家用，偶尔长途，接送小孩，上下班代步，4S店定期保养，
									现因个人原因出手爱车，有喜欢的朋友可提前打电话预约试车。</p></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div id="picture">
			<!--车俩图片-->
			<div class="titles">
				<h2>车俩图片</h2>
			</div>
			<ul class="carpiclist">
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
					<h3 class="yahei f30">金鼎好车车辆检测报告</h3>
					<span>检测时间：<s:property value="model.pdate" /></span> <span>检测车型：<s:property
							value="model.pdesc" /></span>
				</div>
				<div class="linetype"></div>
				<div class="headline-bd" id="accident">
					<span class="headline yahei">事故排查</span> <span class="f14">该车骨架完好，排除事故车，排除泡水车，排除火烧车。</span>
				</div>
				<div class="detectBox clearfix">
					<div class="bitside fl">
						<div class="bitpic">
							<img src="images/car-detection-new-2.png">
						</div>
						<div class="bitbox">
							<p class="yahei f16 f-type04">排除火烧</p>
							<ul class="jctable">
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">舱内保险丝盒无火烧熏黑痕迹</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">车辆覆盖件无火烧痕迹</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机线束无火烧痕迹</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">防火墙有无火烧或熏黑痕迹</span></li>
							</ul>
						</div>
					</div>
					<div class="bitside fr">
						<div class="bitbox">
							<p class="yahei f16 f-type04">排除重大碰撞</p>
							<ul class="jctable">
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左A柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左B柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左C柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左前纵梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左后纵梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左前减震器悬挂部位</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左后减震器悬挂部位</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">防火墙</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右A柱</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">右B柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右C柱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右前纵梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右后纵梁</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右前减震器悬挂部位</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">右后减震器悬挂部位</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">后备箱底板</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">车身左右对称性</span></li>
							</ul>
						</div>
						<div class="bitbox">
							<p class="yahei f16 f-type04">排除泡水</p>
							<ul class="jctable">
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机缸盖无发霉点</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">保险盒无泥沙</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">散热片及擎旁零件无有异味、泥沙</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">水箱及水箱前板无异味、泥沙</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">安全带根部无异味、泥沙</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">座椅弹簧和内套绒布无异味、泥沙</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">仪表台座内电线和接头无异味、泥沙</span></li>
							</ul>
						</div>

					</div>
				</div>
				<div class="headline-bd" id="exterior_check">
					<span class="headline yahei">外观内饰检测</span> <span class="f14">该车有漆面修复痕迹，无钣金修复，覆盖件无更换，外观有轻微缺陷。&nbsp;该车安全系统无故障，灯光系统工作正常，设备正常，无加装，内饰整洁干净。</span>
				</div>
				<div class="detectBox clearfix">
					<div class="outward fl">
						<div class="appearance-img">
							<!--原厂漆li标签后面class的后缀为_0,漆面修复li标签后面class的后缀为_1,钣金修复li标签后面class的后缀为_2，外观件更换li标签后面class的后缀为_3。-->
							<div class="caption-bd">
								<span><i class="gray-rd"></i>原厂漆</span> <span><i
									class="gray-rd2"></i>漆面修复</span> <span><i class="blue-rd"></i>钣金修复</span>
								<span><i class="red-rd"></i>外观件更换</span> <span><i
									class="n-rd"></i>查看缺陷照片</span>
							</div>
							<div class="appearance-con clueEvaluate">
								<img src="images/car-appearance-2.png"> <!--此块区域样式为车身颜色变化区域 0代表原厂漆 1代表漆面修复 2代表钣金修复 3代表外观件更换-->
									<ul class="areabox">
										<!--右前翼子板-->
										<li class="fender_fr-2"></li>
										<!--右后翼子板-->
										<li class="fender_rr-3"></li>
										<!--左前翼子板-->
										<li class="fender_fl-2"></li>
										<!--左后翼子板-->
										<li class="fender_rl-3"></li>
										<!--右前车门-->
										<li class="door_fr-1"></li>
										<!--右后车门-->
										<li class="door_rr-3"></li>
										<!--左前车门-->
										<li class="door_fl-0"></li>
										<!--左后车门-->
										<li class="door_rl-2"></li>
										<!--后备箱盖-->
										<li class="trunk_lid-2"></li>
										<!--前保险杠-->
										<li class="head_save-1"></li>
										<!--后保险杠-->
										<li class="foot_save-0"></li>
										<!--发动机舱盖表面-->
										<li class="hood-3"></li>
									</ul> <!--此块区域为 右前翼子板 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12 -->
									<div class="appearance-det">
										<i class="appear-point carerror1">1</i>
										<div data-role="showImage" class="appear-mat appear_pic1">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">1</i>划痕
												</p>
												<div class="appear-pic">
													<img src="images/b08a55b4a66665b868bbe77bdc6f9365.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 右后翼子板 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12 -->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror2">2</i>
										<div data-role="showImage" class="appear-mat appear_pic2">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">2</i>凹陷
												</p>
												<div class="appear-pic">
													<img src="images/f68cd7126e75539795c320c7ead878e1.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 左前翼子板 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12 -->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror3">3</i>
										<div data-role="showImage" class="appear-mat appear_pic3">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">3</i>划痕
												</p>
												<div class="appear-pic">
													<img src="images/78df7802b5b5ee3da5a3b3f55b69071c.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 左后翼子板 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12-->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror4">4</i>
										<div data-role="showImage" class="appear-mat appear_pic4">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">4</i>划痕
												</p>
												<div class="appear-pic">
													<img src="images/7ad17ef85c68a4efc22758db732d0dba.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 右前车门 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12-->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror5">5</i>
										<div data-role="showImage" class="appear-mat appear_pic5">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">5</i>凹陷
												</p>
												<div class="appear-pic">
													<img src="images/f68cd7126e75539795c320c7ead878e1.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 右后车门 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12-->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror6">6</i>
										<div data-role="showImage" class="appear-mat appear_pic6">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">6</i>凹陷
												</p>
												<div class="appear-pic">
													<img src="images/f68cd7126e75539795c320c7ead878e1.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 左前车门 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12-->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror7">7</i>
										<div data-role="showImage" class="appear-mat appear_pic7">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">7</i>划痕
												</p>
												<div class="appear-pic">
													<img src="images/ea1da5d2d8bb317d151141a42bc882fd.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 左后车门 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12-->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror8">8</i>
										<div data-role="showImage" class="appear-mat appear_pic8">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">8</i>划痕
												</p>
												<div class="appear-pic">
													<img src="images/ea1da5d2d8bb317d151141a42bc882fd.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 后备箱盖 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12-->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror9">9</i>
										<div data-role="showImage" class="appear-mat appear_pic9">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">9</i>划痕
												</p>
												<div class="appear-pic">
													<img src="images/ea1da5d2d8bb317d151141a42bc882fd.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 前保险杠 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12-->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror10">10</i>
										<div data-role="showImage" class="appear-mat appear_pic10">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">10</i>划痕
												</p>
												<div class="appear-pic">
													<img src="images/ea1da5d2d8bb317d151141a42bc882fd.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 右保险杠 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12-->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror11">11</i>
										<div data-role="showImage" class="appear-mat appear_pic11">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">11</i>划痕
												</p>
												<div class="appear-pic">
													<img src="images/ea1da5d2d8bb317d151141a42bc882fd.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div> <!--此块区域为 发动机舱盖表面 缺陷说明及缺陷图片区域 carerror1-12,appear_pic1-12-->
									<div class="appearance-det">
										<i data-role="point" class="appear-point carerror12">12</i>
										<div data-role="showImage" class="appear-mat appear_pic12">
											<span class="appear-dire"></span>
											<div class="appear-ct">
												<p>
													<i class="appear-point">12</i>划痕
												</p>
												<div class="appear-pic">
													<img src="images/ea1da5d2d8bb317d151141a42bc882fd.jpg"
														width="360" height="240">
												</div>
											</div>
										</div>
									</div>
							</div>
						</div>
					</div>
					<div class="outward fr">
						<div class="exterior-img exterior-img-2">
							<img src="images/car-exterior-2.jpg">
								<div class="appearance-det clueEvaluate"></div>
						</div>
					</div>
				</div>
				<div class="headline-bd" id="engine_check">
					<span class="headline yahei">核心部件检测</span> <span class="f14">该车机械部件工作正常，无渗漏痕迹，油液液面正常。&nbsp;该车悬架系统正常，底盘部件正常。</span>
				</div>
				<div class="detectBox clearfix">
					<div class="fl clearfix">
						<div class="bitbox">
							<p class="yahei f16 f-type04">发动机舱</p>
							<ul class="jctable">
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">助力泵</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">制动液</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">仪器检测电瓶发电量</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">蓄电池</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">涡轮增压系统</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">水箱框架</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">水箱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">水泵</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">皮带张紧轮</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">皮带</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">空调压缩机</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">节气门</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">机油</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">缸盖/缸体/缸垫</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">防冻液</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机舱盖装饰件</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机舱盖液压撑杆</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发电机</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">电子扇</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">玻璃水壶</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">ABS泵</span></li>
							</ul>
						</div>
						<div class="bitbox">
							<p class="yahei f16 f-type04">悬挂系统</p>
							<ul class="jctable">
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">前后平衡杆</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">前后控制臂</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">右前减震器</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左后减震器</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">右后减震器</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">减震器/减震器簧</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">左前减震器</span></li>
							</ul>
						</div>
					</div>
					<div class="fr clearfix">
						<div class="bitbox">
							<p class="yahei f16 f-type04">底盘</p>
							<ul class="jctable">
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">制动总泵</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">制动卡钳</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">制动分泵</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">水管</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">三元催化</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">排气管</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">离合器总泵</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">冷却系统</span></li>
								<li><span class="tytd1"><i class="via-icon04"></i></span><span
									class="tytd2">冷凝器</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">空调高低压管</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">进油管</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">机油滤芯外观</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">回油管</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">分动器</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机油底壳</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机下护板</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机下部</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机机爪</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">发动机变速箱结合处</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">传动轴/十字轴</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">车轮轴承</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">刹车油管</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">变速箱</span></li>
								<li><span class="tytd1"><i class="via-icon03"></i></span><span
									class="tytd2">半轴</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="headline-bd" id="other_check">
					<span class="headline yahei">常用功能检测</span> <span class="f14">该车发动机运转正常，变速箱挂档平顺，转向正常，空调工作正常。</span>
				</div>
				<div class="detectBox clearfix">
					<ul class="pilotstep">
						<li class="one">
							<h3 class="yahei f16">电子控制系统</h3>
							<div class="stepfont">
								<p>
									<span>安全带报警功能</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>空调出风系统</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>空调制热系统</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>空调制冷系统</span> <i class="via-icon04"></i>
								</p>
								<p>
									<span>空调内外循环系统</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>多媒体</span> <i class="via-icon03"></i>
								</p>
							</div>
						</li>
						<li>
							<h3 class="yahei f16">轮胎轮毂</h3>
							<div class="stepfont">
								<p>
									<span>刹车盘</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>刹车片</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>右后轮毂</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>右前轮毂</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>左后轮毂</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>左前轮毂</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>右后轮胎</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>右前轮胎</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>左后轮胎</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>左前轮胎</span> <i class="via-icon03"></i>
								</p>
							</div>
						</li>
						<li>
							<h3 class="yahei f16">常用功能开关</h3>
							<div class="stepfont">
								<p>
									<span>后备箱液压支撑杆</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>儿童锁</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>车内中控锁</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>遮阳帘闭合</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>敞篷闭合</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>油箱盖</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>玻璃升降</span> <i class="via-icon04"></i>
								</p>
								<p>
									<span>前雨刮器</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>后雨刮器</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>点烟器</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>方向盘调节</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>方向盘按键</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>车内喇叭</span> <i class="via-icon03"></i>
								</p>
							</div>
						</li>
						<li>
							<h3 class="yahei f16">灯光系统</h3>
							<div class="stepfont">
								<p>
									<span>室内灯调节功能</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>右前大灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>前雾灯/转向灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>左前大灯</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>后尾灯</span> <i class="via-icon03"></i>
								</p>
							</div>
						</li>
						<li>
							<h3 class="yahei f16">玻璃后视镜</h3>
							<div class="stepfont">
								<p>
									<span>外后视镜</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>左后视镜</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>右后视镜</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>车内后视镜</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>天窗</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>右后车门玻璃</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>右前车门玻璃</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>左后车门玻璃</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>左前车门玻璃</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>前挡风玻璃</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>后挡风玻璃</span> <i class="via-icon03"></i>
								</p>
							</div>
						</li>
						<li>
							<h3 class="yahei f16">随车附件</h3>
							<div class="stepfont">
								<p>
									<span>遥控钥匙</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>千斤顶</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>随车工具</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>三角警示牌</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>灭火器</span> <i class="via-icon03"></i>
								</p>
								<p>
									<span>备胎</span> <i class="via-icon03"></i>
								</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="luxian">
			<!--看车路线-->
			<div class="titles">
				<h2>看车路线</h2>
			</div>
			<div class="ban-content" style=" padding:40px; position:relative; ">
				<div id="lumap">
					<!--引用百度地图API-->
					<style type="text/css">
html,body {
	margin: 0;
	padding: 0;
}

.iw_poi_title {
	color: #CC5522;
	font-size: 14px;
	font-weight: bold;
	overflow: hidden;
	padding-right: 13px;
	white-space: nowrap
}

.iw_poi_content {
	font: 12px arial, sans-serif;
	overflow: visible;
	padding-top: 4px;
	white-space: -moz-pre-wrap;
	word-wrap: break-word
}
</style>
					<script type="text/javascript"
						src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>

					<!--百度地图容器-->
					<div style="width:680px;height:300px;" id="dituContent"></div>
					<script type="text/javascript">
						//创建和初始化地图函数：
						function initMap() {
							createMap();//创建地图
							setMapEvent();//设置地图事件
							addMapControl();//向地图添加控件
							addMarker();//向地图中添加marker
						}

						//创建地图函数：
						function createMap() {
							var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
							var point = new BMap.Point(117.27254, 31.885679);//定义一个中心点坐标
							map.centerAndZoom(point, 18);//设定地图的中心点和坐标并将地图显示在地图容器中
							window.map = map;//将map变量存储在全局
						}

						//地图事件设置函数：
						function setMapEvent() {
							map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
							map.enableScrollWheelZoom();//启用地图滚轮放大缩小
							map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
							map.enableKeyboard();//启用键盘上下左右键移动地图
						}

						//地图控件添加函数：
						function addMapControl() {
							//向地图中添加缩放控件
							var ctrl_nav = new BMap.NavigationControl({
								anchor : BMAP_ANCHOR_TOP_LEFT,
								type : BMAP_NAVIGATION_CONTROL_LARGE
							});
							map.addControl(ctrl_nav);
							//向地图中添加缩略图控件
							var ctrl_ove = new BMap.OverviewMapControl({
								anchor : BMAP_ANCHOR_BOTTOM_RIGHT,
								isOpen : 1
							});
							map.addControl(ctrl_ove);
							//向地图中添加比例尺控件
							var ctrl_sca = new BMap.ScaleControl({
								anchor : BMAP_ANCHOR_BOTTOM_LEFT
							});
							map.addControl(ctrl_sca);
						}

						//标注点数组
						var markerArr = [ {
							title : "安徽省众隆在线投资管理有限公司",
							content : "地址：安徽省合肥市庐阳区北一环祥源广场B座12F<br/>全国服务热线：400-090-1268<br/>联系电话：0551-63772628",
							point : "117.272005|31.885464",
							isOpen : 1,
							icon : {
								w : 23,
								h : 25,
								l : 46,
								t : 21,
								x : 9,
								lb : 12
							}
						} ];
						//创建marker
						function addMarker() {
							for (var i = 0; i < markerArr.length; i++) {
								var json = markerArr[i];
								var p0 = json.point.split("|")[0];
								var p1 = json.point.split("|")[1];
								var point = new BMap.Point(p0, p1);
								var iconImg = createIcon(json.icon);
								var marker = new BMap.Marker(point, {
									icon : iconImg
								});
								var iw = createInfoWindow(i);
								var label = new BMap.Label(json.title, {
									"offset" : new BMap.Size(json.icon.lb
											- json.icon.x + 10, -20)
								});
								marker.setLabel(label);
								map.addOverlay(marker);
								label.setStyle({
									borderColor : "#808080",
									color : "#333",
									cursor : "pointer"
								});

								(function() {
									var index = i;
									var _iw = createInfoWindow(i);
									var _marker = marker;
									_marker.addEventListener("click",
											function() {
												this.openInfoWindow(_iw);
											});
									_iw.addEventListener("open", function() {
										_marker.getLabel().hide();
									})
									_iw.addEventListener("close", function() {
										_marker.getLabel().show();
									})
									label.addEventListener("click", function() {
										_marker.openInfoWindow(_iw);
									})
									if (!!json.isOpen) {
										label.hide();
										_marker.openInfoWindow(_iw);
									}
								})()
							}
						}
						//创建InfoWindow
						function createInfoWindow(i) {
							var json = markerArr[i];
							var iw = new BMap.InfoWindow(
									"<b class='iw_poi_title' title='" + json.title + "'>"
											+ json.title
											+ "</b><div class='iw_poi_content'>"
											+ json.content + "</div>");
							return iw;
						}
						//创建一个Icon
						function createIcon(json) {
							var icon = new BMap.Icon(
									"http://app.baidu.com/map/images/us_mk_icon.png",
									new BMap.Size(json.w, json.h), {
										imageOffset : new BMap.Size(-json.l,
												-json.t),
										infoWindowOffset : new BMap.Size(
												json.lb + 5, 1),
										offset : new BMap.Size(json.x, json.h)
									})
							return icon;
						}

						initMap();//创建和初始化地图
					</script>
				</div>
				<div class="lumap-right">
					<div style="color:#000; font-size:24px;">
						<a target="_blank" href="#">合肥清溪服务中心</a>
					</div>
					<div>
						门店电话：<span style="color:#ee7800; font-size:18px;">400-068-5858&nbsp;&nbsp;转&nbsp;&nbsp;186409</span>
					</div>
					<div>
						门店地址：<span style="color:#202020; font-size:16px;">肥市蜀山区清溪路10号黎阳嘉苑7#商102
							（大润发往西300米）</span>
					</div>
					<div style="margin-top:20px;">
						<img src="images/store-map-22.jpg">
					</div>
				</div>
			</div>
		</div>
		<!--猜你喜欢-->
		<div class="titles">
			<h2>猜你喜欢</h2>
		</div>
		<ul class="carList">
			<li>
				<div class="list-infoBox">
					<a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank"
						class="imgtype" href="#"> <img width="290" height="194"
						src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"></a>
					<p class="infoBox">
						<a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="#" target="_blank"
							class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a>
					</p>
					<p class="fc-gray">
						<span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span>
						<em class="shuxian">|</em> 行驶2.4万公里
					</p>
					<p class="priType-s">
						<span> <i class="fc-org priType"> 2.10万 </i>
						</span> <s>3.40万</s>
					</p>
				</div>
			</li>
			<li>
				<div class="list-infoBox">
					<a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank"
						class="imgtype" href="#"> <img width="290" height="194"
						src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"></a>
					<p class="infoBox">
						<a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="#" target="_blank"
							class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a>
					</p>
					<p class="fc-gray">
						<span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span>
						<em class="shuxian">|</em> 行驶2.4万公里
					</p>
					<p class="priType-s">
						<span> <i class="fc-org priType"> 2.10万 </i>
						</span> <s>3.40万</s>
					</p>
				</div>
			</li>
			<li>
				<div class="list-infoBox">
					<a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank"
						class="imgtype" href="#"> <img width="290" height="194"
						src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"><i
							class="sup-yellow"> <em></em> 急降<br> 200元 </i></a>
					<p class="infoBox">
						<a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="#" target="_blank"
							class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a>
					</p>
					<p class="fc-gray">
						<span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span>
						<em class="shuxian">|</em> 行驶2.4万公里
					</p>
					<p class="priType-s">
						<em class="tag-blue">里程少</em> <span> <i
							class="fc-org priType"> 2.10万 </i>
						</span> <s>3.40万</s>
					</p>
				</div>
			</li>
			<li>
				<div class="list-infoBox">
					<a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" target="_blank"
						class="imgtype" href="#"> <img width="290" height="194"
						src="images/carimg.jpg" alt="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版"></a>
					<p class="infoBox">
						<a title="奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版" href="#" target="_blank"
							class="info-title">奇瑞QQ3 2012款 QQ3 0.8 手动 梦想版</a>
					</p>
					<p class="fc-gray">
						<span class="tag-gray">石家庄</span> <span class="">2014年11月上牌</span>
						<em class="shuxian">|</em> 行驶2.4万公里
					</p>
					<p class="priType-s">
						<em class="tag-red">急售</em> <em class="tag-green">准新车</em> <em
							class="tag-yellow">超值</em> <span> <i
							class="fc-org priType"> 9.45万 </i>
						</span> <s>13.00万</s>
					</p>
				</div>
			</li>
		</ul>
		<div class="clear_fix"></div>
		<!--购车流程-->
		<div class="how-deal">
			<p class="deal-tit">购车流程</p>
			<div class="icon-deal"></div>
		</div>
	</div>
	<!--<div class="foot-a1">
      <ul class="clearfix">
        <li> <img src="images/db1.png">
          <p>一年/两万公里质保</p>
        </li>
        <li> <img src="images/db2.png">
          <p>全面检测</p>
        </li>
        <li> <img src="images/db3.png">
          <p>14天可退</p>
        </li>
        <li> <img src="images/db4.png">
          <p>100%个人车源</p>
        </li>
        <li> <img src="images/db5.png">
          <p>一站式服务</p>
        </li>
      </ul>
  </div>-->

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
							<h1>400-888-6666</h1>
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
		<div class="copyright">
			<div class="cent">Copyright © 2016-2017, snncar.com,All Rights
				Reserved 皖ICP备16022456号-1</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/script/3c-menu.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/script/lg_reg.js"></script>

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
	<!-- <div id="popBoxYzmtx" style="display:block; z-index:999999999999">
  <div class="popForm">
  <div class="wxts">温馨提示</div>
    <div class="p-detail">
      <form action="" enctype="multipart/form-data" method="post" name="yzmcheck" id="yzmcheck">
        
        <ul class="login-items" style="width:100%">
         <li class="tip-item">
         成功按钮
         <i class="icon-ok"></i>
         失败按钮
        <i class="icon-flase"></i>
         提醒按钮
        <i class="icon-no"></i>
      </li>
      <li class="p-tips">填写手机，金鼎客服将在30分钟内联系您看车。</li>
        </ul>
        <div class="login-button">
          <input type="button"  value="确定" class="fM" onclick="sendtosend()" style="line-height:20px" />
        </div>
      </form>
    </div>
    <a class="yz_close">×</a> </div>
</div>
<script type="text/livescript">
$("#sendMESStx").live("click",function(){
		$('#popBoxYzmtx').fadeIn();

});
</script> -->


	<div id="popBoxYzm" style="display:none">
		<div class="popForm">
			<div class="p-detail">
				<form action="" enctype="multipart/form-data" method="post"
					name="yzmcheck" id="yzmcheck">
					<p class="p-tit">填写手机，金鼎客服将在30分钟内联系您看车。</p>
					<ul class="login-items" style="width:100%">
						<li><label>手机号</label> <input type="text" value=""
							maxlength="32" name="mobile" id="shoujihao"></li>
					</ul>
					<div class="login-button">
						<input type="button" value="立即提交" class="fM"
							onclick="sendtosend()" style="line-height:20px" />
					</div>
				</form>
			</div>
			<a class="closed">×</a>
		</div>
	</div>
	<script type="text/livescript">
		
		
$("#sendMESS").live("click",function(){
		$('#popBoxYzm').fadeIn();

});

	
	</script>
	<!-- <script type="text/livescript">
$("#sendprice").live("click",function(){
		$('#popBoxprice').fadeIn();

});
</script>
<div id="popBoxprice" style="display:block;">
  <div class="popForm">
    <div class="p-detail">
      <form action="" enctype="multipart/form-data" method="post" name="yzmcheck" id="yzmcheck">
        <div style="text-align: center; padding:6px; color:#fd8000; font-size:16px;">小刀一下，试试能不能少点</div>
        <ul>
          <li class="first-li">
            <div class="kj-p">原 价</div>
            <div class="n-price">4.50万</div>
          </li>
          <li>
            <div class="kj-p">心理价</div>
            <div class="kj-it">
              <input type="text" class="kj-input" name="heart_price" placeholder="请输入您的心理价">
              <div class="kj-error price-tip">心理价最多3位整数，2位小数哦～</div>
              <em>万</em> </div>
          </li>
          <li>
            <div class="kj-p">手机号</div>
            <div class="kj-it">
              <input type="text" class="kj-input" name="phone" placeholder="请输入您的手机号码">
              <div class="kj-error phone-tip">请填写正确的手机号</div>
              <button class="kj-get-code js-appoint-get-code">获取验证码</button>
            </div>
          </li>
          <li>
            <div class="kj-p">验证码</div>
            <div class="kj-it">
              <input type="text" class="kj-input" placeholder="请输入您的验证码" name="code">
              <div class="kj-error code_error">请填写正确的验证码</div>
            </div>
          </li>
        </ul>
        <div class="login-button">
          <input type="button"  value="立即提交" class="fM" onclick="sendtosend()" style="line-height:20px" />
        </div>
      </form>
    </div>
    <a class="closeds">×</a> </div>
</div> -->
	<script type='text/javascript'>
		var nt = !1;
		$(window).bind("scroll", function() {
			var st = $(document).scrollTop();//往下滚的高度
			nt = nt ? nt : $("#J_m_nav").offset().top;
			var sel = $("#J_m_nav");
			if (nt < st) {
				sel.addClass("nav_fixeds");
			} else {
				sel.removeClass("nav_fixeds");
			}
		});
	</script>
	<script type="text/javascript">
		$(function() {
			$(".cont-tips-qh li").click(function() {
				$(this).siblings('li').removeClass('active'); // 删除其他兄弟元素的样式
				$(this).addClass('active'); // 添加当前元素的样式
			});
		});
	</script>
	<div id="leftsead">
		<ul>
			<li><a id="top_btn"> <img src="images/foot03/ll06.png"
					width="47" height="49" class="hides" /> <img
					src="images/foot03/l06.png" width="47" height="49" class="shows" />
			</a></li>
			<li><a href=""> <img src="images/foot03/ll03.png" width="47"
					height="49" class="hides" /> <img src="images/foot03/l03.png"
					width="47" height="49" class="shows" />
			</a></li>
			<li><a href=""> <img src="images/foot03/ll02.png"
					width="166" height="49" class="hides" /> <img
					src="images/foot03/l04.png" width="47" height="49" class="shows" />
			</a></li>
			<li><a class="youhui"> <img src="images/foot03/l02.png"
					width="47" height="49" class="shows" /> <img
					src="images/foot03/zfew.jpg" width="196" height="205" class="hides"
					usemap="#taklhtml" />
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