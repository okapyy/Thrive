document.addEventListener('turbolinks:load', () => {
  const bigPic = document.getElementById('bigPic');
  const thumbs = document.getElementsByClassName('thumb');
  const modal = document.getElementById('modal');
  const modalImage = document.getElementById('modalImage');
  const close = document.getElementById('close')

  for(let thumb of thumbs) {
    thumb.addEventListener('mouseover', () => {
      bigPic.src = thumb.src;
    })
  }

  bigPic.addEventListener('click', () => {
    modal.classList.remove('displayNone');
    modalImage.src = bigPic.src;
  });

  close.addEventListener('click' , () => {
    modal.classList.add('displayNone');
  });
});