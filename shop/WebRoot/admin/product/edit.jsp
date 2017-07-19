<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath}/css/Style1.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/mydate.js"></script>
</HEAD>

<body>
	<!--  -->
	<form id="userAction_save_do" name="Form1"
		action="${pageContext.request.contextPath}/adminProduct_update.action"
		method="post" enctype="multipart/form-data">
		<input type="hidden" name="pid" value="<s:property value="model.pid"/>">
		 <input type="hidden" name="image" value="<s:property value="model.image"/>"> <input
			type="hidden" name="imageFront"
			value="<s:property value="model.imageFront"/>"> <input
			type="hidden" name="imageBehind"
			value="<s:property value="model.imageBehind"/>"> <input
			type="hidden" name="imageLeft"
			value="<s:property value="model.imageLeft"/>"> <input
			type="hidden" name="imageRight"
			value="<s:property value="model.imageRight"/>"> <input
			type="hidden" name="imageInterior1"
			value="<s:property value="model.imageInterior1"/>"> <input
			type="hidden" name="imageInterior2"
			value="<s:property value="model.imageInterior2"/>"> <input
			type="hidden" name="imageInterior2"
			value="<s:property value="model.imageEngine_compartment"/>">
		<input type="hidden" name="imageInterior2"
			value="<s:property value="model.imageRoof"/>"> <input
			type="hidden" name="imageInterior2"
			value="<s:property value="model.imageTrunk"/>"> <input
			type="hidden" name="imageInterior2"
			value="<s:property value="model.imageChassis"/>"> &nbsp;
		<table cellSpacing="1" cellPadding="5" width="100%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>编辑商品</STRONG> </strong></td>
			</tr>

			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					商品名称：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="pname" value="<s:property value="model.pname"/>"
					id="userAction_save_do_logonName" class="bg" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					是否热门：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="is_hot">
						<option value="1" <s:if test="model.is_hot==1">selected</s:if>>是</option>
						<option value="0" <s:if test="model.is_hot==0">selected</s:if>>否</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					购入价格：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="market_price"
					value="<s:property value="model.market_price"/>"
					id="userAction_save_do_logonName" class="bg" />万元</td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					商城价格：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="shop_price" value="<s:property value="model.shop_price"/>"
					id="userAction_save_do_logonName" class="bg" />万元</td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					商品图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					国别：</td>
					<td class="ta_01" bgColor="#ffffff"><select name="country">
						<option value="法系" <s:if test="model.country==法系">selected</s:if>>法系</option>
						<option value="日系" <s:if test="model.country==日系">selected</s:if>>日系</option>
						<option value="德系" <s:if test="model.country==德系">selected</s:if>>德系</option>
						<option value="美系" <s:if test="model.country==美系">selected</s:if>>美系</option>
						<option value="国产" <s:if test="model.country==国产">selected</s:if>>国产</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					所属的二级分类：</td>
				<td class="ta_01" bgColor="#ffffff"><select
					name="categorySecond.csid">
						<s:iterator var="cs" value="csList">
							<option value="<s:property value="#cs.csid"/>"
								<s:if test="#cs.csid == model.categorySecond.csid">selected</s:if>><s:property
									value="#cs.csname" /></option>
						</s:iterator>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					汽车类型：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="type">
						<option value="小型车" <s:if test="model.type=='小型车'">selected</s:if>>小型车</option>
						<option value="紧凑型车"
							<s:if test="model.type=='紧凑型车'">selected</s:if>>紧凑型车</option>
						<option value="中型车" <s:if test="model.type=='中型车'">selected</s:if>>中型车</option>
						<option value="大型车" <s:if test="model.type=='大型车'">selected</s:if>>大型车</option>
						<option value="SUV" <s:if test="model.type=='SUV'">selected</s:if>>SUV</option>
						<option value="MPV" <s:if test="model.type=='MPV'">selected</s:if>>MPV</option>
						<option value="跑车" <s:if test="model.type=='跑车'">selected</s:if>>跑车</option>
				</select></td>
			</tr>
			<!-------------------------------------------------------------------------------------  -->
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					汽车颜色：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="colour" value="<s:property value="model.colour"/>"
					id="userAction_save_do_logonName" class="bg" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					上牌城市：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="city" value="<s:property value="model.city"/>"
					id="userAction_save_do_logonName" class="bg" /></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					上牌时间：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="date" onfocus="MyCalendar.SetDate(this)"
					name="carData" value="<s:date name="model.carData" format="yyyy-MM-dd"/>"
					id="userAction_save_do_logonName" class="bg" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					行驶里程：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="mileage" value="<s:property value="model.mileage"/>"
					id="userAction_save_do_logonName" class="bg" />万公里</td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					汽车排量：</td>
					<td class="ta_01" bgColor="#ffffff"><select name="displacement">
						<option value="1.0T" <s:if test="model.displacement=='1.0T'">selected</s:if>>1.0T</option>
						<option value="1.5t" <s:if test="model.displacement=='1.5T'">selected</s:if>>1.5T</option>
						<option value="2.0T" <s:if test="model.displacement=='2.0T'">selected</s:if>>2.0T</option>
						<option value="3.0T" <s:if test="model.displacement=='3.0T'">selected</s:if>>3.0T</option>
						<option value="1.4L" <s:if test="model.displacement=='1.4L'">selected</s:if>>1.4L</option>
						<option value="1.6L" <s:if test="model.displacement=='1.6L'">selected</s:if>>1.6L</option>
						<option value="2.0L" <s:if test="model.displacement=='2.0L'">selected</s:if>>2.0L</option>
						<option value="2.5L" <s:if test="model.displacement=='2.5L'">selected</s:if>>2.5L</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					变速箱信息：</td>
					<td class="ta_01" bgColor="#ffffff"><select name="gearbox">
						<option value="双离合" <s:if test="model.gearbox=='双离合'">selected</s:if>>双离合</option>
						<option value="9速手自一体" <s:if test="model.gearbox=='9速手自一体'">selected</s:if>>9速手自一体</option>
						<option value="6速手自一体" <s:if test="model.gearbox=='6速手自一体'">selected</s:if>>6速手自一体</option>
						<option value="手动" <s:if test="model.gearbox=='手动'">selected</s:if>>手动</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					年检到期：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="date" onfocus="MyCalendar.SetDate(this)"
					name="annualInspection"
					value="<s:date name="model.annualInspection" format="yyyy-MM-dd"/>"
					id="userAction_save_do_logonName" class="bg" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					保险到期：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="date" onfocus="MyCalendar.SetDate(this)"
					name="carInsurance"
					value="<s:date name="model.carInsurance" format="yyyy-MM-dd"/>"
					id="userAction_save_do_logonName" class="bg" /></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆前方图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆后方图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆左边图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆右边图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆前排内饰图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆后排内饰图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
			</tr>
			<!--  2017-6-21:添加的汽车检测细节图片------begin-->
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆发动机舱图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆后备箱图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆车顶图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆底盘图片：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="file"
					name="upload" /></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					汽车车型：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="carSeries"
					value="<s:property value="model.carSeries"/>"
					id="userAction_save_do_logonName" class="bg" /></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					汽车品牌：</td>
				<td class="ta_01" bgColor="#ffffff"><select
					name="brand">
						<s:iterator var="cs" value="csList">
							<option value="<s:property value="#cs.csname"/>"
								<s:if test="#cs.csid == model.categorySecond.csid">selected</s:if>>
								<s:property value="#cs.csname" /></option>
						</s:iterator>
				</select></td>
			</tr>
			<!------end-------------------------------------------------------------------------------  -->

			
			<!-- 2017-6-21：添加的汽车检测项目,begin -------------------------------------------------------->
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					<font size="3" color="#10acea">事故排查：</font></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车况描述：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><textarea
						name="pdesc" rows="5" cols="30"><s:property
							value="model.pdesc" /></textarea></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					<font size="2" color="red">1.排除泡水：</font></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					发动机主线束：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Main_engine_bundle">
						<option value="2" <s:if test="model.Main_engine_bundle==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Main_engine_bundle==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Main_engine_bundle==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					防火墙隔音棉：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Firewall_insulation_cotton">
						<option value="2" <s:if test="model.is_hot==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.is_hot==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.is_hot==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					安全带底部：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Seat_belt">
						<option value="2" <s:if test="model.is_hot==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.is_hot==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.is_hot==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					保险盒及ECU接口：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Insurance_box_and_ECU_interface">
						<option value="2" <s:if test="model.is_hot==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.is_hot==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.is_hot==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车内线束：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="vehicle_wiring_harness">
						<option value="2" <s:if test="model.is_hot==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.is_hot==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.is_hot==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					全车地胶地毯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="footmat">
						<option value="2" <s:if test="model.footmat==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.footmat==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.footmat==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					全车座椅坐垫：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="seat">
						<option value="2" <s:if test="model.seat==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.seat==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.seat==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					后备箱边角及备胎槽：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="trunk">
						<option value="2" <s:if test="model.trunk==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.trunk==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.trunk==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					烟灰缸底座：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="ashtray">
						<option value="2" <s:if test="model.ashtray==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.ashtray==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.ashtray==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					座椅滑轨及安装螺丝：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="slide_and_installation_screw">
						<option value="2" <s:if test="model.slide_and_installation_screw==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.slide_and_installation_screw==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.slide_and_installation_screw==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					<font size="2" color="red">2.排除火烧：</font></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					发动机线束及橡胶制品：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Engine_wire_and_rubber_products">
						<option value="2" <s:if test="model.Engine_wire_and_rubber_products==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Engine_wire_and_rubber_products==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Engine_wire_and_rubber_products==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					车辆覆盖件及驾驶舱：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Vehicle_cover_and_cockpit">
						<option value="2" <s:if test="model.Vehicle_cover_and_cockpit==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Vehicle_cover_and_cockpit==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Vehicle_cover_and_cockpit==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					<font size="2" color="red">3.排除重大碰撞：</font></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左A柱：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="A_PILLAR_LH">
						<option value="2" <s:if test="model.A_PILLAR_LH==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.A_PILLAR_LH==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.A_PILLAR_LH==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右A柱：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="A_PILLAR_RH">
						<option value="2" <s:if test="model.A_PILLAR_RH==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.A_PILLAR_RH==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.A_PILLAR_RH==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左B柱：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="B_PILLAR_LH">
						<option value="2" <s:if test="model.B_PILLAR_LH==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.B_PILLAR_LH==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.B_PILLAR_LH==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右B柱：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="B_PILLAR_RH">
						<option value="2" <s:if test="model.B_PILLAR_RH==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.B_PILLAR_RH==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.B_PILLAR_RH==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左C柱：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="C_PILLAR_LH">
						<option value="2" <s:if test="model.C_PILLAR_LH==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.C_PILLAR_LH==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.C_PILLAR_LH==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右C柱：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="C_PILLAR_RH">
						<option value="2" <s:if test="model.C_PILLAR_RH==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.C_PILLAR_RH==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.C_PILLAR_RH==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左D柱：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="D_PILLAR_LH">
						<option value="2" <s:if test="model.D_PILLAR_LH==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.D_PILLAR_LH==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.D_PILLAR_LH==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右D柱：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="D_PILLAR_RH">
						<option value="2" <s:if test="model.D_PILLAR_RH==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.D_PILLAR_RH==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.D_PILLAR_RH==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左前翼子板内村：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Left_front_wing_subboard_village">
						<option value="2" <s:if test="model.Left_front_wing_subboard_village==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Left_front_wing_subboard_village==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Left_front_wing_subboard_village==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右前翼子板内衬：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Right_wing_front_lining">
						<option value="2" <s:if test="model.Right_wing_front_lining==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Right_wing_front_lining==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Right_wing_front_lining==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左前减震器座：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Left_front_shock_absorber_seat">
						<option value="2" <s:if test="model.Left_front_shock_absorber_seat==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Left_front_shock_absorber_seat==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Left_front_shock_absorber_seat==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右前减震器座：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Right_front_shock_absorber_seat">
						<option value="2" <s:if test="model.Right_front_shock_absorber_seat==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Right_front_shock_absorber_seat==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Right_front_shock_absorber_seat==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左后翼子板内衬：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Left_rear_wing_subplate_lining">
						<option value="2" <s:if test="model.Left_rear_wing_subplate_lining==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Left_rear_wing_subplate_lining==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Left_rear_wing_subplate_lining==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右后翼子板内衬：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Right_rear_wing_subplate_lining">
						<option value="2" <s:if test="model.Right_rear_wing_subplate_lining==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Right_rear_wing_subplate_lining==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Right_rear_wing_subplate_lining==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左侧底边梁：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Left_hand_side_beam">
						<option value="2" <s:if test="model.Left_hand_side_beam==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Left_hand_side_beam==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Left_hand_side_beam==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右侧底边梁：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Right_hand_side_beam">
						<option value="2" <s:if test="model.Right_hand_side_beam==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Right_hand_side_beam==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Right_hand_side_beam==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左前纵梁：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Left_front_longeron">
						<option value="2" <s:if test="model.Left_front_longeron==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Left_front_longeron==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Left_front_longeron==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右前纵梁：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Right_front_longeron">
						<option value="2" <s:if test="model.Right_front_longeron==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Right_front_longeron==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Right_front_longeron==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左车顶边梁：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Left_roof_edge_girder">
						<option value="2" <s:if test="model.Left_roof_edge_girder==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Left_roof_edge_girder==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Left_roof_edge_girder==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右车顶边梁：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Right_roof_edge_girder">
						<option value="2" <s:if test="model.Right_roof_edge_girder==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Right_roof_edge_girder==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Right_roof_edge_girder==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左后纵梁：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Left_rear_rail">
						<option value="2" <s:if test="model.Left_rear_rail==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Left_rear_rail==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Left_rear_rail==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右后纵梁：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Right_rear_rail">
						<option value="2" <s:if test="model.Right_rear_rail==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Right_rear_rail==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Right_rear_rail==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					后围板：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="back_panel">
						<option value="2" <s:if test="model.back_panel==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.back_panel==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.back_panel==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					防火墙：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="firewall">
						<option value="2" <s:if test="model.firewall==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.firewall==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.firewall==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					<font size="3" color="#10acea">车况系统检测：</font></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					<font size="2" color="red">1.指示灯系统检测：</font></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					近光灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Dipped_headlight">
						<option value="2" <s:if test="model.Dipped_headlight==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Dipped_headlight==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Dipped_headlight==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					远光灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="High_beam">
						<option value="2" <s:if test="model.High_beam==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.High_beam==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.High_beam==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					前雾灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="front_fog_lamp">
						<option value="2" <s:if test="model.front_fog_lamp==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.front_fog_lamp==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.front_fog_lamp==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					后雾灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="rear_fog_lamp">
						<option value="2" <s:if test="model.rear_fog_lamp==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.rear_fog_lamp==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.rear_fog_lamp==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					刹车灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="stop_lamp">
						<option value="2" <s:if test="model.stop_lamp==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.stop_lamp==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.stop_lamp==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					倒车灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="backup_light">
						<option value="2" <s:if test="model.backup_light==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.backup_light==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.backup_light==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					前转向灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="front_signal">
						<option value="2" <s:if test="model.front_signal==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.front_signal==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.front_signal==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					后转向灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="back_signal">
						<option value="2" <s:if test="model.back_signal==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.back_signal==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.back_signal==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					室内顶灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Indoor_dome_light">
						<option value="2" <s:if test="model.Indoor_dome_light==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Indoor_dome_light==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Indoor_dome_light==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					疝气大灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Car_hernias_headlight">
						<option value="2" <s:if test="model.Car_hernias_headlight==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Car_hernias_headlight==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Car_hernias_headlight==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					LED大灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="LED_headlight">
						<option value="2" <s:if test="model.LED_headlight==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.LED_headlight==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.LED_headlight==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					卤素大灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Halogen_lamps">
						<option value="2" <s:if test="model.Halogen_lamps==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Halogen_lamps==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Halogen_lamps==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					大灯高度可调：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Headlight_height_adjustable">
						<option value="2" <s:if test="model.Headlight_height_adjustable==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Headlight_height_adjustable==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Headlight_height_adjustable==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					大灯清洗：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Headlight_cleaning">
						<option value="2" <s:if test="model.Headlight_cleaning==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Headlight_cleaning==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Headlight_cleaning==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					自动头灯：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Automatic_headlamp">
						<option value="2" <s:if test="model.Automatic_headlamp==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Automatic_headlamp==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Automatic_headlamp==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					<font size="2" color="red">2.随车工具检测：</font></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					维修工具包：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Maintenance_Kit">
						<option value="2" <s:if test="model.Maintenance_Kit==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Maintenance_Kit==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.is_hot==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					备胎：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="spare_tire">
						<option value="2" <s:if test="model.spare_tire==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.spare_tire==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.spare_tire==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					千斤顶：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Lifting_jack">
						<option value="2" <s:if test="model.Lifting_jack==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Lifting_jack==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Lifting_jack==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					三角警示标：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Triangle_warning_sign">
						<option value="2" <s:if test="model.Triangle_warning_sign==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Triangle_warning_sign==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Triangle_warning_sign==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					灭火器：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Fire_Extinguisher">
						<option value="2" <s:if test="model.Fire_Extinguisher==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Fire_Extinguisher==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Fire_Extinguisher==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						<font size="2" color="red"> 3.底盘悬挂项检测：</font></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左前减震器：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Left_front_shock_absorber">
						<option value="2" <s:if test="model.Left_front_shock_absorber==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Left_front_shock_absorber==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Left_front_shock_absorber==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右前减震器：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Right_front_shock_absorber">
						<option value="2" <s:if test="model.Right_front_shock_absorber==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Right_front_shock_absorber==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Right_front_shock_absorber==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					左后减震器：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Left_rear_shock_absorber">
						<option value="2" <s:if test="model.Left_rear_shock_absorber==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Left_rear_shock_absorber==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Left_rear_shock_absorber==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					右后减震器：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Rear_right_shock_absorber">
						<option value="2" <s:if test="model.Rear_right_shock_absorber==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Rear_right_shock_absorber==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Rear_right_shock_absorber==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					消音器（尾段）：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Silencer">
						<option value="2" <s:if test="model.Silencer==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Silencer==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Silencer==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					<font size="2" color="red">  4.刹车及发动机舱检测：</font></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					发动机缸垫：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Engine_cylinder_gasket">
						<option value="2" <s:if test="model.Engine_cylinder_gasket==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Engine_cylinder_gasket==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Engine_cylinder_gasket==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					制动油壶：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Brake_oiler">
						<option value="2" <s:if test="model.Brake_oiler==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Brake_oiler==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Brake_oiler==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					冷凝器：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="condenser">
						<option value="2" <s:if test="model.condenser==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.condenser==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.condenser==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					电瓶（极柱）：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Battery">
						<option value="2" <s:if test="model.Battery==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Battery==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Battery==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					机油液面：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Oil_level">
						<option value="2" <s:if test="model.Oil_level==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Oil_level==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Oil_level==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					发动机总成：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Engine_assembly">
						<option value="2" <s:if test="model.Engine_assembly==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Engine_assembly==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Engine_assembly==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					变速箱总成：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Transmission_assembly">
						<option value="2" <s:if test="model.Transmission_assembly==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Transmission_assembly==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Transmission_assembly==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					水箱水管：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Water_pipe">
						<option value="2" <s:if test="model.Water_pipe==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Water_pipe==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Water_pipe==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					助力油壶：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Oiler">
						<option value="2" <s:if test="model.Oiler==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Oiler==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Oiler==0">selected</s:if>>异常</option>
				</select></td>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					防冻液液面：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Antifreeze_level">
						<option value="2" <s:if test="model.Antifreeze_level==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Antifreeze_level==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Antifreeze_level==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
				<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
					转向助力泵：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="Power_Steering_Pump">
						<option value="2" <s:if test="model.Power_Steering_Pump==2">selected</s:if>>无此项目（功能）</option>
						<option value="1" <s:if test="model.Power_Steering_Pump==1">selected</s:if>>正常</option>
						<option value="0" <s:if test="model.Power_Steering_Pump==0">selected</s:if>>异常</option>
				</select></td>
			</tr>
			<tr>
			
			<!-- end -->
			<tr>
				<td class="ta_01" style="WIDTH: 100%" align="center"
					bgColor="#f5fafe" colSpan="4">
					<s:if test="#session.existAdminUser.state == 1">
					<button type="submit" id="userAction_save_do_submit" value="确定"
						class="button_ok">&#30830;&#23450;</button> <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
					<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

					<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <INPUT
					class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
					<span id="Label1"></span>
					</s:if>
					<s:if test="#session.existAdminUser.state == 4">
					<button type="submit" id="userAction_save_do_submit" value="确定"
						class="button_ok" onclick="history.go(-1)">&#30830;&#23450;</button> <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
					<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

					<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> 
					<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
					<span id="Label1"></span>
					</s:if>
				</td>
			</tr>
		</table>
	</form>
</body>
</HTML>