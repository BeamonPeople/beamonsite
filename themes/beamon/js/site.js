(function($)
{
  "use strict";
  $().ready(init);
  function init()
  {
    window.site = new Site();
    
  }

/*Basic stuff. Like maphandle.*/
  function Site()
  {
    this.utils = new Utilities();
    $("#map-canvas").one("click",this.utils.Map)
  }
/*Utilities, custom extensions, small funcs etc.*/
  function Utilities()
  {

    this.slider = function(element)
    {
      var el = $(element);
      if(!el.hasClass("carousel-paging"))
      {
        el.append(createPagination(el));
        el.addClass("carousel-paging");
      }
      el.carousel({
          interval: 10000
      }).on('slid',
      function()
      {
          var index = $(this).find(".active").index();
          $(this).find(".carousel-pager").find("a").removeClass('pager-active').eq(index).addClass('pager-active');
          window.test = $(this);
      });

    $("#slider-wrapper a")
    }
    this.Map = function(e)
    {
      $(e.target).removeClass("map-bg");
      var geocoder;
      var map;
      geocoder = new google.maps.Geocoder();
      var latlng = new google.maps.LatLng(-34.397, 150.644);
      var myOptions =
      {
        zoom: 15,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        disableDefaultUI :true
      }
      map = new google.maps.Map(e.target, myOptions);

      codeAddress('Maria Torget 1A Stockholm Sweden');
      function codeAddress(address)
      {
        geocoder.geocode( { 'address': address},
        function(results, status)
        {
            if (status == google.maps.GeocoderStatus.OK)
            {
              map.setCenter(results[0].geometry.location);
              var marker = new google.maps.Marker({map: map, position: results[0].geometry.location, icon :'/themes/beamon/images/beamonMarker.png'});
            }
        });
      }
    }
  }
  function createPagination(el)
  {
    var _href = "#"+el.attr("id");
    var _cont = $("<div>").addClass("carousel-pager");
    _cont.append(
      $("<a>")
      .attr({"href":_href})
      .addClass("pager-active")
      .on("click",paginationClick));
    _cont.append($("<a>").attr({"href":_href}).on("click",paginationClick));
    _cont.append($("<a>").attr({"href":_href}).on("click",paginationClick));
    return _cont;
  }
  function paginationClick(e)
  {
      var index = $(this).index();
      $(e.currentTarget).parent().parent().carousel(index);
      e.preventDefault();
  }

})(jQuery);




/*
    var slider = $("#slider-wrapper")
        .carousel({
            interval: 4000
        })
        .bind('slid', function() {
            var index = $(this).find(".active").index();
            $(this).find("a").removeClass('pager-
active').eq(index).addClass('pager-active');
        });

    $("#slider-wrapper a").click(function(e){
        var index = $(this).index();
        slider.carousel(index);
        e.preventDefault();
    }); */