jQuery(document).on('turbolinks:load', function(){

    var html = `
    <li class="tree js">
      <ul class="category-tree>
        <li class="category-item "><a class="category" href="#">パンツ</a></li>
      </ul>
    </li>
    `

  $('.category').on('mouseenter', function(){
    $(this).addClass('changeColor');
  }).on('mouseleave', function() {
    $(this).removeClass('changeColor');
  });

  $('.category-tree').on('')
})
