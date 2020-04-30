// jQuery(document).on('turbolinks:load', function(){
  
//   var children = gon.lady_children;
//   var indirects = gon.indirects;
  
//   function buildChildList() {
//     for(var i = 0; i <= children.length; i++) {
//       var item = children[i];
//       var $subcatTree = $('.subcatTree');
//       $subcatTree.append(`<li>${item.name}</li>`);
//       var html = `
//       <ul class="subcatTree">
//         <li class="subcatTree--item"><a href="#" id="${item.id}">${item.name}</a></li>
//       </ul>`
//       console.log(item.id)
//       return html;
//     }
//   }
  
//   function buildGrandchildList(){
//     for(var i = 0; i <= indirects.length; i++) {
//       var item = indirects[i];
//       console.log(item.name);
//       console.log(item.id)
//       var html = `
//       <ul class="itemTree">
//         <li class="itemTree--item"><a href="#" id="${item.id}">${item.name}</a></li>
//       </ul>`
//       return html;
//      }
//   }

//   $('#categoryBtn').on('mouseenter', function() {
//     $('.categoryTree').removeClass('displayNone');
//     $('.categoryTree--item').on('mouseenter', function(){
//       $('.tree').append(buildChildList);
//     });
//     $('.tree').on('mouseenter', '.subcatTree--item',function() {
//       $('.tree').append(buildGrandchildList);
//     }).on('mouseleave', function() {
//       $('.itemTree').empty();
//     })
//   }).on('mouseleave', function() {
//     $('.tree').addClass('displayNone');
//   });
// })
