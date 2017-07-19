var words = 'ABCDEFGHJKLMNPQRSTWXYZ';
	var hot = ['全国','北京','上海','广州','深圳','成都','西安','天津','武汉','重庆','南京'];
    var data = [
    	['鞍山','安庆','安阳','安康'],
    	['北京','保定','包头','巴彦淖尔盟','本溪','蚌埠','亳州','滨州','宝鸡','巴音郭楞'],
    	['承德','沧州','长治','赤峰','长春','常州','滁州','长沙','常德','郴州','重庆','成都','慈溪','常熟'],
    	['大同','大连','丹东','大庆','东营','德州','东莞','德阳','达州','儋州','定州'],
    	['鄂州','恩施'],
    	['抚顺','阜阳','福州','佛山','富阳'],
    	['赣州','广州','桂林','贵港','广元','贵阳','公主岭'],
    	['邯郸','衡水','侯马','呼和浩特','呼伦贝尔','哈尔滨','淮安','杭州','湖州','合肥','淮南','淮北','鹤壁','黄石','衡阳','怀化','惠州','海口','汉中','葫芦岛','菏泽','海城','河津'],
    	['晋城','晋中','锦州','吉林','佳木斯','嘉兴','金华','九江','吉安','济南','济宁','焦作','荆州','荆门','江门','嘉峪关','胶州','江阴','靖江','金坛','济源','句容'] ,
    	['昆明','昆山'], 
    	['廊坊','临汾','吕梁','辽阳','连云港','丽水','六安','龙岩','莱芜','临沂','聊城','洛阳','漯河','娄底','柳州','泸州','乐山','六盘水','兰州','临海','莱西','临安','浏阳','灵武'],
    	['牡丹江','马鞍山','绵阳','眉山','弥勒'], 
    	['南京','南通','宁波','南昌','南阳','南宁','内江','南充'], 
    	['盘锦','莆田','萍乡','平顶山','濮阳'], 
    	['秦皇岛','齐齐哈尔','衢州','泉州','青岛','清远','钦州','曲靖','庆阳','琼海','青州'], 
    	['日照','如皋','任丘'], 
    	['石家庄','沈阳','四平','松原','上海','苏州','宿迁','绍兴','宿州','上饶','三门峡','商丘','十堰','随州','邵阳','深圳','汕头','遂宁','上虞','双城市'], 
    	['天津','唐山','太原','通辽','铁岭','泰州','台州','铜陵','泰安','太仓','泰兴','桐庐','桐乡'], 
    	['无锡','温州','芜湖','潍坊','威海','武汉','渭南','乌鲁木齐'], 
    	['邢台','徐州','厦门','新余','新乡','许昌','信阳','襄阳','孝感','咸宁','湘潭','西安','咸阳','西宁','孝义','仙桃','兴化'], 
    	['运城','营口','盐城','扬州','宜春','烟台','宜昌','岳阳','益阳','永州','玉林','宜宾','银川','义乌','永康','宜兴','余姚','延吉','伊宁'], 
    	['张家口','镇江','舟山','漳州','淄博','枣庄','郑州','周口','驻马店','株洲','珠海','湛江','肇庆','中山','自贡','资阳','遵义','昭通','诸城','张家港','诸暨','枣阳']
    ];
    var TIP = '输入城市名';
    jQuery (function ($)
    {
    	var search = $(':text#JS_search_city_input_header');
    	search.focus(function () 
    	{
    		$(this).val('');
    	});
    	
    	var box = $('div#JS_header_city_bar_box');
    	var choose = $('a.common-bg.selector');
    	var menu = $('div#JS_hide_city_menu_11');
    	choose.hover (function ()
    	{
    		box.show ();
    		menu.addClass('hover');
    		search.val (TIP);
    	}, function () 
    	{
    		box.hide ();
    		menu.removeClass('hover');
    	});
    	
    	box.hover (function ()
    	{
    		box.show ();
    		menu.addClass('hover');
    	}, function ()
    	{
    		box.hide ();
    		menu.removeClass('hover');
    	});
    	
    	var elem = !$.browser.chrome ? document.documentElement : document.body;
    	var doc = $(document);
    	var scrollBar = $('div.scrollBar');
    	var tableList = $('table#JS_header_city_list');
    	var bar = $('span#JS_header_city_bar');
    	var bargap = scrollBar.height() - bar.height();
    	var dh = 191 + bar.height()/2 + elem.scrollTop - parseFloat (bar.css ('margin-top'));
    	var citychar = $('div#JS_header_city_char');
		var chars = $(words.split('')), len = chars.length - 3;
		var citylist = tableList.find('tbody');
		var tablegap = 0;
    	scrollBar.click (function (e) 
    	{
    		e = e || window.event;
    		if (tablegap == 0)
            {
				for ( var i = 0; i < len; i++)
		        {
			        tablegap += tableList.find('tr:eq('+i+')').height();
	        	}
            }
    		var offsetY = e.clientY + elem.scrollTop - dh;
		    offsetY = offsetY < 0 ? 0 : offsetY;
	    	offsetY = offsetY > bargap ? bargap : offsetY;
	    	bar.css ('margin-top', offsetY + 'px');
	    	tableList.css ('margin-top', -tablegap * offsetY / bargap + 'px');
			INDEX = len * offsetY / bargap;
		    return destroy (e);
    	});
    	doc.mousedown (function (e)
    	{
    		e = e || window.event;
    		var target = e.target;
    		if (target !== choose[0] && box.find($(target)).length === 0 && box.is(':visible'))
            {
	            box.hide();
            }
    	}).mouseup (function (e) 
    	{
    		e = e || window.event;
    		$(this).unbind('mousemove');
    		return destroy (e);
    	});
    	var hotcity = $(hot);
	    var city = $('div#JS_header_city_hot');
	    var currentCity = $('#JS_city_current_city'), siteName = $('span#DY_site_name');
		hotcity.each (function (i, eleDom)
	    {
		    var a = $ ('<a href="#"></a>');
		    a.click (function ()
		    {
		    	var txt = $(this).text();
		    	currentCity.text (txt);
		    	siteName.text (txt + '站');
		    });
		    if (i == 0)
		    {
			    a.html ('<strong>' + eleDom + '</strong>');
		    }
		    else
		    {
			    a.text (eleDom);
		    }
		    city.append(a);
	    });
		
		bar.mousedown (function (e) 
		{
			e = e || window.event;
			if (tablegap == 0)
            {
				for ( var i = 0; i < len; i++)
		        {
			        tablegap += tableList.find('tr:eq('+i+')').height();
	        	}
            }
			var me = $(this);
			var delta = e.clientY - elem.scrollTop - parseFloat (me.css('margin-top'));
			doc.mousemove (function (evt) 
			{
				evt = evt || window.event;
				var y = evt.clientY - elem.scrollTop - delta;
				y = y < 0 ? 0 : y;
				y = y > bargap ? bargap : y;
				me.css ('margin-top', y + 'px');
				tableList.css ('margin-top', -tablegap * y / bargap + 'px');
				INDEX = len * y / bargap;
				return destroy (evt);
			});
			return destroy (e);
		});
		
		chars.each (function (i, dom)
		{
			var a = $('<a href="#"></a>');
			a.mouseover (function ()
			{ 
				var h = 0;
				var index = $(this).index ('div#JS_header_city_char a');
				INDEX = index = index > len ? len : index;
				for ( var i = 0; i < index; i++)
                {
	                h += tableList.find('tr:eq('+i+')').height();
                }
				tableList.animate(
				{
					'margin-top': -h + 7 + 'px'
				}, 'slow');
				
				bar.animate (
				{
					'margin-top': index * bargap / len + 'px'
				}, 'slow');
			}).mouseout(function ()
			{
				tableList.stop();
				bar.stop();
				INDEX = parseFloat (bar.css('margin-top')) * len / bargap;
			});
			a.text (dom);
			citychar.append(a);
			
			var tr = $('<tr><th><div>' + dom + '</div></th><td></td></tr>');
			var td = tr.children('td');
			var d = $(data[i]);
			d.each (function (j, eleDom)
			{
				var a = $('<a href="#">' + eleDom + '</a>');
				a.click (function ()
				{
					var txt = $(this).text();
			    	currentCity.text (txt);
			    	siteName.text (txt + '站');
				});
				td.append(a);
			});
			citylist.append (tr);
		});
		var scrollBody = $('div.scrollBody')[0];
		if (!$.browser.mozilla)
        {
			scrollBody.onmousewheel = function (e) { mouseWheel (e, false, tableList, bar, len, bargap); };
        }
	    else
	    {
	    	scrollBody.addEventListener ('DOMMouseScroll', function (e) { mouseWheel (e, true, tableList, bar, len, bargap) }, false); 
		}
    });
    
    var INDEX = 0;
    function mouseWheel (e, isMozilla, tableList, bar, len, bargap)
	{
		e = e || window.event;
		var h = 0;
		for ( var i = 0; i < INDEX; i++)
        {
            h += tableList.find('tr:eq('+i+')').height();
        }
		tableList.css('margin-top', -h + 7 + 'px');
		bar.css('margin-top', INDEX * bargap / len + 'px')
     	if (isMozilla)
        {
     		if (e.detail < 0)
            {
     			INDEX--;
     			INDEX = INDEX < 0 ? 0 : INDEX;
            }
        	else 
        	{
        		// down
        		INDEX++;
     			INDEX = INDEX > len ? len : INDEX;
    		}
        }
     	else 
     	{
     		//down
     		if (e.wheelDelta < 0)
            {
     			INDEX++;
     			INDEX = INDEX > len ? len : INDEX;
            }
	    	else
	    	{
	    		INDEX--;
     			INDEX = INDEX < 0 ? 0 : INDEX;
			}	
		}
    	return destroy (e);
	}
    var destroy = function (event)
    {
	    if (!!$.browser.msie)
	    {
		    event.returnValue = false;
		    event.cancelBubble = true;
	    }
	    else
	    {
	    	event.preventDefault ();
			event.stopPropagation ();
	    }
	    return false;
    }