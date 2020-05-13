//写真変更//
$(document).on('change','.exhibition__box__image__image-field',function(){
  let imageChange = $(this).parents(".exhibition__box__image__image-list");
  let dataID = $(imageChange).attr('id');
  let inputFile = document.querySelector(`#item_${dataID}_image`)
  let num = inputFile.files.length -1;
  let file = this.files[num];
  let reader = new FileReader();
  reader.readAsDataURL(file);
  $(`.exhibition__box__image__image-photo--${dataID}`).remove();
  reader.onload = function(){
    let imageEdit = reader.result
    let html = `<img src=${imageEdit} width="117" height="116" class = "exhibition__box__image__image-photo--${dataID}" >`
    $(imageChange).prepend(html);       
  }
})

//写真追加//

$(document).on('change','.exhibition__box__image__add-image',function(){
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
  $(`#exhibition__box__image__image-list--${id}`).remove();
  reader.onload = function(){
    let imageEdit = reader.result
    let html = `<div class='exhibition__box__image__image-list' id = "exhibition__box__image__image-list--${id}" data-image="${file.name}">
                  <img src=${imageEdit} width="117" height="116" class = "exhibition__box__image__image-photo--${id}">
                  <div class = "exhibition__box__image__field-label" id = "${id}">
                        <div class='exhibition__box__image__change'>
                          <label for = "item_item_images_attributes_${id}_image">編集</label>
                        </div>
                        <div class='exhibition__box__image__image-delete'>
                          <div class='exhibition__box__image__image-delete__btn-delete' id = "${id}">削除</div>
                        </div>
                  </div>`
    $(".exhibition__box__image__image-list:last").after(html); 
  }
})
  //追加分の削除//
$(document).on('click',".exhibition__box__image__image-delete__btn-delete",function(){
  let imageDelete = $(this).parents(".exhibition__box__image__image-list");
  console.log(imageDelete)
  let id = $(this).attr('id');
  console.log(id)
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
