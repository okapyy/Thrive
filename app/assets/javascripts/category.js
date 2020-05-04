document.addEventListener("turbolinks:load", ()=> {
  // ページ内スクロール機能
  const parentIndex = document.getElementsByClassName('parentIndex');
  const catTitles = document.getElementsByClassName('catTitle');
  
  titles = Array.from(catTitles);
  const fromTop = titles.map(t => t.getBoundingClientRect().top);
  const pareIndex = Array.from(parentIndex);
  for( let title of parentIndex) {
    title.addEventListener('click', (e) => {
      let index = pareIndex.indexOf(title);
      e.preventDefault();
      scroll({
        top: fromTop[index], behavior: 'auto'
      });
    });
  }
  
  // ページトップへのスクロール機能
  const topbtn = document.getElementsByClassName('topBtn');

  for(let btn of topbtn) {
    btn.addEventListener('click', () => {
     scroll({
       top: 0, behavior: 'auto'
      });
    });
  }
});