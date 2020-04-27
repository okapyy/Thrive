jQuery(document).on('turbolinks:load', function(){
  function buildHTML() {
    var html = `
    <div class="tree">
      <ul class="category-tree">
        <li>トップス</li>
      </ul>
    </div>
    `
    return html;
  }

  $('.category').on('mouseover', function() {
    $(this).css('color', '#ff9900');
    var setLeft = $('.tree').position().left;
    var setTop = $('.tree').position().top;
    console.log(setLeft);
    console.log(setTop);

  }).on('mouseout', function() {
    $(this).css('color', '');
  });
})
