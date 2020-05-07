document.addEventListener('turbolinks:load', () => {
  // 金額の計算関数
  const serviceCharge = document.getElementById('serviceCharge');
  const price = document.getElementById('item_price');
  const rate = 0.1;
  const profit = document.getElementById('profit');
  price.addEventListener('input', () => {
    const priceValue = (price.value);
    const addCharge = (priceValue * rate);
    const calcProfit = priceValue - addCharge;
    serviceCharge.textContent = `${addCharge.toLocaleString()}円`;
    profit.textContent = `${calcProfit.toLocaleString()}円`;
  });
  // 文字数の計算関数
  const counter = document.getElementById('textCount');
  const textArea = document.getElementById('item_description');
  textArea.addEventListener('input', () => {
    const num = textArea.value;
    counter.textContent = `${num.length}/1000`;
    if (num.length > 1000) {
      counter.style.color = "tomato";
      alert('制限文字数を超えています。');
    } else {
      counter.style.color = "black";
    }
  });
  // カテゴリーフォームの追加関数
    // 変数定義
  const catParent = document.getElementById('catParent');
  // フォーム作成関数
  function createForm() {
    // HTMLエレメントを生成
    const select = document.createElement('select');
    const iselect = document.createElement('iselect');
      // 生成したエレメントにclass,id,name属性を付与
    select.setAttribute('class', 'exhibition__box__image__select--category childCount');
    select.setAttribute('id', 'catChildren');
    select.name = 'item[category_id]';
    iselect.setAttribute('class', "exhibition__box__image__select__arrow fas fa-chevron-down fa-lg");
    const childBox = document.getElementById('selectChildren');
    childBox.insertAdjacentElement('afterbegin', iselect);
    childBox.insertAdjacentElement('afterbegin', select);
    select.insertAdjacentHTML('afterbegin', `<option value=1326, label="選択してください"></options>`);
    gon.children[catParent.value - 1].forEach((parentArray) => {
      parentArray.forEach((child) => {
        const option = document.createElement('option');
        option.value = child.id;
        option.label = child.name;
        select.appendChild(option);
      });
    });
    // 孫カテゴリを作成するイベントを設定
    select.addEventListener('change', () => {
      // フォーム数を条件分岐で制御
      let gcFormCounter = document.getElementsByClassName('gcCount').length;
      if (gcFormCounter === 0) {
        // HTMLエレメントの生成
        const gcSelect = document.createElement('select');
        const gcIselect = document.createElement('iselect');
        gcSelect.setAttribute('class', "exhibition__box__image__select--category gcCount");
        gcSelect.setAttribute('id', 'catGrandChildren');
        gcSelect.name = 'item[category_id]';
        gcIselect.setAttribute('class', "exhibition__box__image__select__arrow fas fa-chevron-down fa-lg");
        const grandChildrenBox = document.getElementById('selectGrandChildren');
        grandChildrenBox.insertAdjacentElement('afterbegin', gcIselect);
        grandChildrenBox.insertAdjacentElement('afterbegin', gcSelect);
        // 子カテゴリで選択されたvalueを取得
        const catChildren = document.getElementById('catChildren')
        // 選択された値を配列に渡し、<option>の作成
        gon.grandchildren[catParent.value - 1][catChildren.selectedIndex - 1].forEach((child) => {
          child.forEach((grandchildren) => {
            const gcoption = document.createElement('option');
            gcoption.value = grandchildren.id;
            gcoption.label = grandchildren.name;
            gcSelect.appendChild(gcoption);
          });
        });
      } else if(gcFormCounter === 1) {
        const selectGrandChildren = document.getElementById('selectGrandChildren');
        while (selectGrandChildren.firstChild) selectGrandChildren.removeChild(selectGrandChildren.firstChild);
        const gcSelect = document.createElement('select');
        const gcIselect = document.createElement('iselect');
        gcSelect.setAttribute('class', "exhibition__box__image__select--category gcCount");
        gcSelect.setAttribute('id', 'catGrandChildren');
        gcSelect.name = 'item[category_id]';
        gcIselect.setAttribute('class', "exhibition__box__image__select__arrow fas fa-chevron-down fa-lg");
        const grandChildrenBox = document.getElementById('selectGrandChildren');
        grandChildrenBox.insertAdjacentElement('afterbegin', gcIselect);
        grandChildrenBox.insertAdjacentElement('afterbegin', gcSelect);
        // 子カテゴリで選択されたvalueを取得
        const catChildren = document.getElementById('catChildren')
        // 選択された値を配列に渡し、<option>の作成
        gon.grandchildren[catParent.value - 1][catChildren.selectedIndex - 1].forEach((child) => {
          child.forEach((grandchildren) => {
            const gcoption = document.createElement('option');
            gcoption.value = grandchildren.id;
            gcoption.label = grandchildren.name;
            gcSelect.appendChild(gcoption);
          });
        });
        gcFormCounter = 0;
      }
    });
  }
  // 親カテゴリにイベント設定
  catParent.addEventListener('change',() => {
    // フォーム数を条件分岐で制御
    let formCounter = document.getElementsByClassName('childCount').length;
    if (formCounter === 0) {
      createForm();
    } else if (formCounter === 1) {
      const selectChildren = document.getElementById('selectChildren');
      const selectGrandChildren = document.getElementById('selectGrandChildren');
      while (selectChildren.firstChild) selectChildren.removeChild(selectChildren.firstChild);
      while (selectGrandChildren.firstChild) selectGrandChildren.removeChild(selectGrandChildren.firstChild);
      createForm();
      formCounter = 0;
    }
  });
});