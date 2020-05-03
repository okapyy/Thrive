window.addEventListener('load', ()=> {
  const topbtn = document.getElementsByClassName('topBtn');

  for(let btn of topbtn) {
    btn.addEventListener('click', () => {
     scroll({
       top: 100,behavior: 'auto'
      });
    });
  }
});
