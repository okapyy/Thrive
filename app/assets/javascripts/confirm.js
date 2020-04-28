{$(this).next().removeClass("displayNone"),
$(".tree").find(".categoryTree").removeClass("displayNone")},
mouseleave:function(){var e=setTimeout(function(){$("#catBtn").next().addClass("displayNone")},300);$(this).next().data("timeout",e)}},"#catBtn"),$(".tree").on("mouseenter",".categoryTree",function(){$(this).removeClass("displayNone"),clearTimeout($(".tree").data("timeout"))}),$(".tree").on({mouseenter:function(){var t=$(this).find("a").attr("id"),n=$(this).closest(".categoryTree"),i=setTimeout(function(){$(n).nextAll().remove(),
  $.ajax({
    type:"GET",
    url:"/categories/tree",
    data:{cat_id:t},
    dataType:"json"})
    .done(function(t){$(".tree").append('<ul class="subcatTree">'),t.forEach(function(t){var n=e(t,0);$(n).appendTo(".subcatTree")}),$(".tree").append("</ul>")})
    .fail(function(){alert("\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002")})},300);
    $(".categoryTree--item").data("timeout",i)},mouseleave:function(){clearTimeout($(".categoryTree--item").data("timeout"))}},".categoryTree--item"),
    $(".tree").on({mouseenter:function(){$(this).prev().removeClass("displayNone"),
    $(this).removeClass("displayNone")},
    mouseleave:function(){$(this).prev().addClass("displayNone"),$(this).addClass("displayNone")}},".subcatTree"),$(".tree").on({mouseenter:function(){var t=$(this).find("a").attr("id"),n=$(this).closest(".subcatTree"),i=setTimeout(function(){$(n).nextAll().remove(),
      $.ajax({
        type:"GET",
        url:"/categories/tree",
        data:{sub_id:t},dataType:"json"
      })
      .done(function(t){$(".tree").append('<ul class="itemTree">'),t.forEach(function(t){var n=e(t,1);$(n).appendTo(".itemTree")}),$(".tree").append("</ul>")})
      .fail(function(){alert("\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002")})},300)
      ;$(".subcatTree--item").data("timeout",i)},mouseleave:function(){clearTimeout($(".subcatTree--item").data("timeout"))}},".subcatTree--item"),$(".tree").on({mouseenter:function(){$(this).prev().removeClass("displayNone"),$(this).prev().prev().removeClass("displayNone")},mouseleave:function(){$(this).prev().addClass("displayNone"),$(this).prev().prev().addClass("displayNone"),$(this).remove()}},".itemTree"),$(".listsLeft").on("mouseleave",".tree",function(){$(this).find(".subcatTree").html();$(this).find(".subcatTree").remove(),$(this).find(".itemTree").remove()}),$(".listsLeft__item").on({mouseenter:function(){$(this).find(".categoryTree").removeClass("displayNone")},mouseleave:function(){$(this).addClass("displayNone")}},".tree")});