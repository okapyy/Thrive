$(document).on('turbolinks:load',function(){
  function buildChildHTML(child){
    let html = `<a class="subcat-tree" id="${child.id}" href="/categories/${child.id}">
                ${child.name}
                </a>`;
    return html;
    
  }
  $("#categoryBtn").on('mouseover',function(){
    $(".tree").fadeIn(300);
  })
  $(".main").on('mouseover',function(){
    $(".tree").hide();
    $(".subcat-tree").remove();
    $(".item-tree").remove();
    $(".subcatTree").hide();
    $(".itemTree").hide();
  })
  $(".mypage").on('mouseover',function(){
    $(".tree").hide();
    $(".subcat-tree").remove();
    $(".item-tree").remove();
    $(".subcatTree").hide();
    $(".itemTree").hide();
  })
  
  $(".category-tree").on('mouseover',function(){
    let id = $(this).attr("id")

    $(".subcatTree").show();
    $(".itemTree").hide();
    $(".selected-color").removeClass("selected-color");
    $('#' + id).addClass("selected-color");
    $(".subcat-tree").remove();
    $(".item-tree").remove();
    $.ajax({
      type: "get",
      url: '/categories/category',
      data: {parent_id: id},
      dataType: 'json'
    })
    .done(function(children){
      children.forEach(function(child){
        let html = buildChildHTML(child)
        $(".subcatTree").append(html);
      })
    })
  })
  
})
$(document).on('turbolinks:load',function(){
function buildGrandChildHTML(grandChild){
  let html = `<a class="item-tree" id="${grandChild.id}" 
  href="/categories/${grandChild.id}">${grandChild.name}</a>`;
  return html;
}
  $(document).on('mouseover',".subcat-tree",function(){
    let id = $(this).attr("id")
    $(".selected-sub").removeClass("selected-sub");
    $('#' + id).addClass("selected-sub");
    $.ajax({
      type: "get",
      url: '/categories/category',
      data: {parent_id: id},
      dataType: 'json'
    })
    .done(function(grandChildren){
      grandChildren.forEach(function(grandChild){
        let html = buildGrandChildHTML(grandChild)
        $(".itemTree").append(html);
      })
    })
    $(document).on("mouseover", ".subcat-tree", function () {
      $(".item-tree").remove();
      $(".itemTree").show();
    });
  })
})
$(document).on('mouseover',".item-tree",function(){
  let id = $(this).attr("id")
  $(".selected-item").removeClass("selected-item");
  $('#' + id).addClass("selected-item");
})
  
  
  