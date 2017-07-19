<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="egc-top">
	<div class="nav-cent">
		<div class="top-r">
			<s:if test="#session.existUser == null">
				<a
					href="${ pageContext.request.contextPath }/user_registPage.action"
					id="b-regist">注册</a>|
				<a href="${ pageContext.request.contextPath }/user_loginPage.action"
					id="b-login" class="b-login">登陆</a>
			</s:if>
			<s:else>
				<s:property value="#session.existUser.name" /> |
			<a href="${ pageContext.request.contextPath }/user_quit.action">退出</a>
			</s:else>
		</div>
		<div class="top-l">全国统一客服热线：400-888-6666</div>
		<div class="clear_fix"></div>
	</div>
</div>

<div class="navigation">
	<div class="nav-cent">
		<div class="logo">
			<a href="index.html"><img
				src="${pageContext.request.contextPath}/images/logo.png" width="240"
				alt="金鼎好车" /></a>
		</div>
		<div class="city">
			<span id="DY_site_name" class="red city-name Left">无锡站</span>
			<div id="JS_hide_city_menu_11" class="city-select cut_handdler Left">
				<a href="javascript:void(0);" class="common-bg selector">切换城市</a>
				<div id="JS_header_city_bar_box" class="hide_city_group">
					<div class="hideMap">
						<div class="showPanel clearfix">
							<div class="Left mycity">
								<div id="JS_current_city_box">
									当前城市：<strong id="JS_city_current_city">无锡</strong>
								</div>
								<div id="JS_default_city_delete" style="display: none;"></div>
							</div>
						</div>
						<div class="showPanel showPanel2 clearfix">
							<div class="hot_city" id="JS_header_city_hot"></div>
							<div class="city_words mt10" id="JS_header_city_char"></div>
						</div>
						<div class="scrollBody">
							<div class="cityMap clearfix">
								<table id="JS_header_city_list" class="city_list"
									style="margin-top: 0px;">
									<tbody>
									</tbody>
								</table>
							</div>
							<div class="scrollBar">
								<span id="JS_header_city_bar" style="margin-top: 0px;"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<span class="common-bg city-logo"></span>
		</div>
		<div class="sea">
			<div class="egc-sea-box">
				<input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车" name="pname" id="inputCar" /> 
					<input type="button" class="search-btn" id="searchCar" onclick="search(this)"  value="搜  索" />
			</div>
		</div>
		<div class="hot-phone">
			<i></i> <span class="js-change-phone">400-888-6666</span>
		</div>
	</div>
</div>
<ul class="navmenu">
	<li class="active"><a
		href="${ pageContext.request.contextPath }/index.action">首页</a><span></span></li>
	<li><a href="${pageContext.request.contextPath}/product_findAll.action?page=1">我要买车</a><span></span></li>
	<!-- <li><a href="wymc.html">我要咨询</a><span></span></li> -->
</ul>
<div class="clear_fix"></div>

<div class="stress-search-box row">
	<div class="stress-close">
		<a href="javascript:;"></a>
	</div>
	<div class="nav-cents">
		<ul>
			<li class="logo"><a href="index.html"><img
					src="images/logo.png" width="180" /></a></li>
			<li><a href="${ pageContext.request.contextPath }/index.action">首页</a></li>
			<li><a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=10&page=1">我要买车</a></li>
		</ul>
		<div class="seas">
			<div class="egc-sea-box">
				<input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车" name="pname" id="inputCar2">
				<input type="button" class="search-btn" id="searchCar2" onclick="search2(this)" value="搜    索" />
			</div>
		</div>
		<!-- </form> -->
	</div>
</div>
<script type="text/javascript">
	//鼠标点击事件
	function search(ah){
		console.log($(ah).siblings());
		var value = $(ah).siblings().val();
		console.log(value);
		 $.ajax({

			url:"${ pageContext.request.contextPath }/product_searchCar.action",
			type:"get",
			data:{inputCar:value},
			dataType:"html",
			cache:false,
			complete:function(){
			location.href = "${ pageContext.request.contextPath }/product_searchCar.action?pname=" + value + "&page=1";
			}
		}); 
	}
	function search2(ah){
		console.log($(ah).siblings());
		var value = $(ah).siblings().val();
		console.log(value);
		 $.ajax({

			url:"${ pageContext.request.contextPath }/product_searchCar.action",
			type:"get",
			data:{inputCar2:value},
			dataType:"html",
			cache:false,
			complete:function(){
			location.href = "${ pageContext.request.contextPath }/product_searchCar.action?pname=" + value + "&page=1";
			}
		}); 
	}
	//监听回车事件
	 $(".sea-ipt-txt").keydown(function(event) {  
         if (event.keyCode == 13) { 
        	 var info = $("#inputCar").val();
        	 $.ajax({

        			url:"${ pageContext.request.contextPath }/product_searchCar.action",
        			type:"get",
        			data:{inputCar:info},
        			dataType:"html",
        			cache:false,
        			complete:function(){
        			location.href = "${ pageContext.request.contextPath }/product_searchCar.action?pname=" + info + "&page=1";
        			}
        			});
         }  
     })  
      $("#inputCar2").keydown(function(event) {  
         if (event.keyCode == 13) { 
        	 var info = $("#inputCar2").val();
        	 $.ajax({

        			url:"${ pageContext.request.contextPath }/product_searchCar.action",
        			type:"get",
        			data:{inputCar2:info},
        			dataType:"html",
        			cache:false,
        			complete:function(){
        			location.href = "${ pageContext.request.contextPath }/product_searchCar.action?pname=" + info + "&page=1";
        			}
        			});
         }  
     })  
</script>
