$.fn.sx = function(can) {
	can = $.extend({
		nuv : ".zj",// 筛选结果
		zi : "sx_child",// 所有筛选范围内的子类
		qingchu : '.qcqb',// 清除全部
		over : 'on'// 选中状态样式名称
	}, can || {});
	/* 删选过程 */
	var tmp = [];
	var str = "";
	$(this)
			.find('a')
			.click(
					function() {
						var url = window.location.href;

						var id = $(this).attr('rel');

						var id2 = $(this).attr('name');
						var title = $(this).attr('title');
//						str = str + "&" + id2 + "=" + id;
//						alert("click:" + str)
						var index = $(this).index();
						var num = $(this).parent().find('a').length;
						var num2 = $(this).parents(can).length;
						if ($(this).attr('class').replace(can.zi, '').replace(
								/ /g, '') == "on") {

							var url = window.location.href;
							var pddq = $(this).attr('name') + "="
									+ $(this).attr('rel');
							if (url.split('&').length < 2) {
								url = url.replace('?' + pddq, '')
							} else {
								if (url.split(pddq)[0].split('&').length < 2) {
									url = url.replace(pddq + '&', '')
								} else {
									url = url.replace('&' + pddq, '')
								}
							}

						} else {
							if (url.split('?').length < 2) {
								url = url + "?" + id2 + "=" + id
							} else {
								if (url.split('&').length < 2) {
									if (url.split('?')[1].split('=')[0] == id2) {
										url = url.replace(url.split('?')[1],
												id2 + "=" + id)
									} else {
										url = url + "&" + id2 + "=" + id
									}
								} else {
									if (url.split(id2).length > 1) {
										if (url.split(id2)[0].split('&').length < 2) {
											url = url.replace(url.split(id2)[1]
													.split('&')[0], "=" + id)
										} else {
											if (url.split(id2)[1].split('&').length < 2) {
												url = url.replace(id2
														+ url.split(id2)[1],
														id2 + "=" + id)
											} else {
												url = url.replace(id2
														+ url.split(id2)[1]
																.split('&')[0],
														id2 + "=" + id)
											}
										}
									} else {
										url = url + "&" + id2 + "=" + id
									}
								}
							}
						}
						console.log("欢迎来到德莱联盟");
//						alert(url);
						window.location.href = url;
						var str_after = url.split("page")[1]; 
						window.location.href = '../shopPC/product_findByMany.action?page'+ str_after;

					})
	window.onload = function() {
		/* 选中 */

		$("." + can.zi)
				.each(
						function() {
							var url = window.location.href;
							var pddq = $(this).attr('name') + "="
									+ $(this).attr('rel');
							if (url.split(pddq).length > 1) {
								var name = $(this)[0].name;
								var title = $(this)[0].title
								var rel = $(this)[0].rel
//								str = str + "&" + name + "=" + rel;

								$(this).addClass('on');
								$(can.nuv).find(can.qingchu).before(
										"<a rel="
												+ $(this).attr('rel')
												+ " class='sel-a' name="
												+ $(this).attr('name')
												+ " href='javascript:;'>"
												+ $(this).siblings('span1')
														.text()
												+ $(this).text() + "</a> ")
							} else {
								$(this).removeClass('on')
							}
						})

//		alert("str:" + str);
		// alert("tmp:"+tmp);
		// alert("valuemany:"+valuemany);

		/* 清除全部按钮是否显示 */
		var url = window.location.href;
		if (url.split('?').length > 1) {
			$(can.qingchu).show();
		} else {
			$(can.qingchu).hide();
		}
		/* 点击清除 */
		$(can.nuv).find('a').click(function() {
			var url = window.location.href;
			var pddq = $(this).attr('name') + "=" + $(this).attr('rel');
			if (url.split('&').length < 2) {
				url = url.replace('?' + pddq, '')
			} else {
				if (url.split(pddq)[0].split('&').length < 2) {
					url = url.replace(pddq + '&', '')
				} else {
					url = url.replace('&' + pddq, '')
				}
			}
			window.location.href = url;
		})
		/* 清除全部 */
		$(can.qingchu).click(function() {
			var url = window.location.href;
			url = url.split('&')[0];
			window.location.href = url;
		})
	}
}