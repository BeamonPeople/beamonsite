(function($)
{
	"use strict";
	var events = $("<div>");
	function subPageFiltering()
	{
		var settings = {},
			perRow,
			pages = {},
			isLoading,
			hasHistory = (typeof window.history.replaceState === "function"),
			activePage = false,
			time1 = setTimeout(function(){},0),
			time2 = setTimeout(function(){},0),
			time3 = setTimeout(function(){},0);
		this.filters = "";
		this.init = function (_settings)
		{
			settings = $.extend(settings,_settings);
			this.filtNav = new FilterNavigation(settings.filterSelector,settings.DataSettings.tagData);
			AjaxPage.prototype.ajaxSettings = 
			{
		 		error:pageFail,
		 		data:{"type":"ajax"}
		 	};
			$(window).on("resize",reSize);
			settings.childs.children("a").on("click",elementClick);
			events.on("viewPage",viewPage);
			events.on("FilterChange",$.proxy(filterChange,this));
			perRow = calcRows();
			if(typeof settings.DataSettings.defaultPage !== null)
			{
				$("#page-"+settings.DataSettings.defaultPage+" a").trigger("click");
			}
			
		}
		function calcRows()
		{
			return Math.floor(settings.first.width() / settings.width);
		}
		function resetRows()
		{
			settings.childs.appendTo(settings.first);
		}
		function sortList(_index)
		{
			settings.childs.not(":hidden").slice(_index).appendTo(settings.second);
		}
		function elementClick(e)
		{
			if(!$(e.currentTarget).parent().hasClass("bubbleLink"))
			{		
				$(".page-list a.active").removeClass("active");
				loading();
				var el = $(e.currentTarget),
					_index = getIndex(el);
				el.addClass("active");
				sortList(_index);
				if(hasHistory)
				{
					window.history.replaceState("","",e.currentTarget.href);
				}
				if(typeof pages[e.currentTarget.href] === "undefined")
				{
					pages[e.currentTarget.href] = new AjaxPage(e.currentTarget.href, el);
				}
				else
				{
					pages[e.currentTarget.href].show();
				}

				activePage = pages[e.currentTarget.href];
			    $('html, body').animate({
        	 	scrollTop: (el.offset().top+100)
     			}, 200);
				e.preventDefault();

				return false;
			}
		}
		function getIndex(el)
		{
			resetRows();
			
			//return Math.floor(Number((el.parent().index()/perRow))+1)*perRow;
			return Math.floor(Number(((el.parent().siblings(":visible").andSelf().index(el.parent()))/perRow))+1)*perRow;
			
		}
		function viewPage(data)
		{
			var _el;
			if(data.page)
			{
				activePage = data.page;
				if(data.resort)
				{
					sortList(getIndex(data.page.linkElement));
				}
				if(typeof data.page.element.clone  == "function")
				{
					_el = data.page.element.clone();
					loaded().children().html(_el);
					window.site.utils.slider(_el.find(".carousel"));
				}
				settings.first.addClass("open");
				settings.second.addClass("open");
			}
			else
			{
				resetRows();
				hidden().children().html();
				settings.first.removeClass("open");
				settings.second.removeClass("open");
			}
		}
		function pageFail(error)
		{
			console.log(error);
		}
		function loading()
		{
			isLoading = true;
			settings.target.removeClass("hide").addClass("loading").children().html("");
		}
		function loaded()
		{
			isLoading = false;
			return settings.target.removeClass("hide").removeClass("loading").addClass("success");
		}
		function hidden()
		{
			settings.childs.find(".active").removeClass("active");
			return settings.target.removeClass("success").addClass("hide");
		}
		function reSize()
		{
			if(perRow != calcRows())
			{
				perRow = calcRows();
				resetRows();
				if(activePage)
				{
					activePage.show();
				}
			}
			
		}
		function filterChange(e)
		{
			if(!isLoading)
			{
				this.filtNav.filters["All"] = false;
				if(e.value === "All")
				{
					$.each(this.filtNav.filters,
						$.proxy(function(index,item)
						{
							this.filtNav.filters[index] = false;
						},this)
					);
					this.filtNav.filters["All"] = true;
					this.filtNav.element.children().removeClass("active");
					e.element.parent().addClass("active");

				}
				else
				{
					this.filtNav.element.children().first().removeClass("active");
					this.filtNav.filters[e.value] = !this.filtNav.filters[e.value];
					e.element.parent().toggleClass("active");
				
					var _count = false;
					$.each(this.filtNav.filters,
						$.proxy(function(index,item)
						{
							if(item && index !== "All")
							{
								_count = true;
								return false;
							}
						},this)
					);
					if(!_count)
					{
						this.filtNav.filters["All"] = true;
						this.filtNav.element.children().first().addClass("active");
					}
					
				}
				filterElements.call(this);
			}
		}
		function filterElements()
		{
			settings.first.addClass("animate");
			var classes = [],
				hides,
				shows;
			if(!this.filtNav.filters["All"])
			{
				$.each(this.filtNav.filters,
				$.proxy(function(index,item)
				{
					
					if(this.filtNav.filters[index])
					{
						classes.push("."+index);
					}
				},this));
				hides = settings.childs.not(classes.join(", "));
				shows = settings.childs.not(hides);
				hideElements(hides);
				showElements(shows);
			}
			else
			showElements(settings.childs);
		}
		function showElements(els)
		{
			clearTimeout(time1);
			clearTimeout(time2);
			time1 = setTimeout(function(){els.removeClass("hide")},400);
			time2 = setTimeout(function(){settings.first.removeClass("animate");},500);
			
			var event = $.Event("viewPage");
			event.page = false;
			event.resort = true;
			events.trigger(event);
			
			//settings.first.quicksand($(".page-list.all"),{attribute:console.log});
		}
		function hideElements(els)
		{
			clearTimeout(time3);
			time3 = setTimeout(function(){els.addClass("hide")},300);
		}
		
	}
	function AjaxPage(_link,_linkElement,_id)
	{
		this.link = _link;
		this.linkElement = _linkElement;
		this.id =
		this.element = "";
		get.call(this);
	}
	function get()
	{
		$.ajax($.extend(this.ajaxSettings,
			{
				url:this.link,
				success:$.proxy(loaded,this)
			}
		));
	}
	function loaded(data)
	{
		this.element = $(data);
		this.element.find(".carousel");
		var event = $.Event("viewPage");
			event.page = this;

		events.trigger(event);
	}
	AjaxPage.prototype.show = function()
	{
		var event = $.Event("viewPage");
			event.page = this;
			event.resort = true;

		events.trigger(event);
	};
	function FilterNavigation(_selector,_data)
	{
		this.element = $(_selector);
		this.filters = {};
		createItem.call(this,{value:"All",label:"All"},true);
		$.each(_data,$.proxy(function(index,item)
		{
			createItem.call(this,item);
		},this));
	}
	function createItem(item,active)
	{
		this.filters[item.value] = false;
		var li = $("<li>"),
			a = $("<a>");
		a.attr({"href":"#"+item.value}).text(item.label).on("click",$.proxy(linkClick,this));
		if(active)
			li.addClass("active");
		li.append(a);
		this.element.append(li);
	}
	function linkClick(event)
	{
		var e = $.Event("FilterChange");
			e.element = $(event.currentTarget);
			e.value = event.currentTarget.hash.substring(1);
		events.trigger(e)

		event.preventDefault();
		return false;
	}
/*		function changeFilters(filter,element)
	{

		
	}*/

	function init()
	{
		var settings =
		{
			"first" : $(".page-list.first"),
			"second" : $(".page-list.second"),
			"width" : 200,
			"target" : $(".ajax-response"),
			"childs" : $(".page-list li"),
			"filterSelector":".filter-list",
			"DataSettings" : window.DataSettings

		};
		if(!window.DataSettings.editMode)
			new subPageFiltering().init(settings);
	}
	$().ready(init);
})(jQuery);