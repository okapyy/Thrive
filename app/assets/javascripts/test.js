jQuery(document).on('turbolinks: load', function() {
  var children = gon.lady_children;
  var indirects = gon.indirects;

  function test(){
    for(item of children){
      var $li = `<li>${item.name}</li>`;
      $('.categoryTree').append($li);
    }
  }

  console.log('Ok');
})