//写真変更//
$(document).on('change','.exhibition__box__image__image-field',function(){
  imageChange = $(this).parents(".exhibition__box__image__image-list");
  dataID = $(imageChange).attr('id');
  file = this.files[0];
  let reader = new FileReader();
  reader.readAsDataURL(file);
  $(imageChange).hide();
  reader.onload = function(){
    let imageEdit = reader.result
    let html = `<div class='exhibition__box__image__image-list' id = "${dataID}" data-image="${file.name}">
                    <img src=${imageEdit} width="117" height="116" class = "exhibition__box__image__image-photo" >
                    <div class = "exhibition__box__image__field-label" id = "${dataID}">
                    </div>
                </div>`
                  $(imageChange).before(html);       
  }
})

//写真追加//

$(document).on('change','.exhibition__box__image__hidden-edit',function(){
  let id = $(this).attr('id').replace(/[^0-9]/g, '');
  let idNum = Number(id);
  let ids = idNum + 1

  if(id < 10){
    $('.exhibition__box__image__box').attr({id: `exhibition__box__image__box--${ids}`,for: `item_item_images_attributes_${ids}_image`});
  }
  if(ids == 10){
    $('.exhibition__box__image__box').hide();
  }
  if (ids == 9) {
    $('.exhibition__box__image__box').show();
  }
  file = this.files[0];
  let reader = new FileReader();
  reader.readAsDataURL(file);
  reader.onload = function(){
    let imageEdit = reader.result
    let html = `<div class='exhibition__box__image__image-list' id = "${id}" data-image="${file.name}">
                  <img src=${imageEdit} width="117" height="116" class = "exhibition__box__image__image-photo">
                  <div class = "exhibition__box__image__field-label" id = "${id}">
                    <div class='exhibition__box__image__image-delete'>
                    <div class='exhibition__box__image__image-delete__btn-delete' id="${id}">削除</div>
                    </div>
                  </div>
                  </div>`
    $(".exhibition__box__image__sub").before(html); 
  }
})
  //追加分の削除//
$(document).on('click',".exhibition__box__image__image-delete__btn-delete",function(){
  let imageDelete = $(this).parents(".exhibition__box__image__image-list");
  let id = $(this).attr('id')

  $(imageDelete).remove();
  $(`#item_item_images_attributes_${id}_image`).val("");
  $('.exhibition__box__image__box').attr({id: `exhibition__box__image__box--${id}`,for: `item_item_images_attributes_${id}_image`});
  
  if(id < 10){
    $('.exhibition__box__image__box').attr({id: `exhibition__box__image__box--${id}`,for: `item_item_images_attributes_${id}_image`});
  }
  if(id == 10){
    $('.exhibition__box__image__box').hide();
  }
  if (id == 9) {
    $('.exhibition__box__image__box').show();
  }
})
