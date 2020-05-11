$(function(){
  let form = $("#card-form");
  PAYJP_KEY = gon.payjp_key
  Payjp.setPublicKey(PAYJP_KEY);
  $("#card-create").on('click',function(e) {
    e.preventDefault();
    
    let card = {
      number: $("#card-number").val(),
      exp_month: $("#card-month").val(),
      exp_year: $("#card-year").val(),
      cvc: $("#card-cvc").val()
    };
    Payjp.createToken(card, function(status, response){

      form.find("input[type=submit]").prop("disabled", true);
      if (status === 200) {
        $("#card-number").removeAttr("name");
        $("#card-month").removeAttr("name");
        $("#card-year").removeAttr("name");
        $("#card-cvc").removeAttr("name");
        let payjpToken = `<input type="hidden" name="payjpToken" value=${response.id}>`
        form.append(payjpToken);
        form.get(0).submit();
      }else{
        alert("カード情報が正しくありません。");
      }
    });
  })
});
//buypage 登録画面表示//
$(function(){
  $("#card-modal").on("click",function(){
    $('#buypage-user__card__modal').fadeIn(300);
    $('.buypage-header').css("background-color", "gray")
    $('.buypage-main').css("background-color", "gray")
  })
  $(".buypage-user__card__modal-icon").on("click",function(){
    $('#buypage-user__card__modal').fadeOut(300);
    $('.buypage-header').css("background-color", "rgb(245, 245, 245)")
    $('.buypage-main').css("background-color", "white")
  })
})
//buypage 送り先登録画面表示//
$(function(){
  $(".buypage-user__change").on("click",function(){
    $('#buypage-user__address__modal').fadeIn(300);
    $('.buypage-header').css("background-color", "gray")
    $('.buypage-main').css("background-color", "gray")
  })
  $(".buypage-user__card__modal-icon").on("click",function(){
    $('#buypage-user__address__modal').fadeOut(300);
    $('.buypage-header').css("background-color", "rgb(245, 245, 245)")
    $('.buypage-main').css("background-color", "white")
  })
})
