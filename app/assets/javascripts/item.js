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
    $.ajax({
      url: 
    })
  }).on('mouseout', function() {
    $(this).css('color', '');
  });
})
