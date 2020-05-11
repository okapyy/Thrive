#### README!!!!!!!!!!! 
#### レコードのidを起点にデータを流し込んでいるので、初回投入時にしかつかえません。
#### もしレコードを入れ直す必要がある場合は、一旦categoriesテーブルのレコードを全消去して、mysqlにて<ALTER TABLE categories auto_increment = 1;>を実行してidを1にリセットしてからrails db:seedを実行してください。

# # 親要素
parents = %w(レディース メンズ ベビー・キッズ インテリア・住まい・小物 本・音楽・ゲーム おもちゃ・ホビー・グッズ コスメ・香水・美容 家電・スマホ・カメラ スポーツ・レジャー ハンドメイド チケット 自動車・オートバイ その他)

# 親カテゴリーのchildrenの名前配列
ladies_children = %w(トップス ジャケット/アウター パンツ スカート ワンピース 靴 ルームウェア/パジャマ レッグウェア 帽子 バッグ アクセサリー ヘアアクセサリー 小物 時計 ウィッグ/エクステ 浴衣/水着 スーツ/フォーマル/ドレス マタニティ その他)
mens_children = %w(トップス ジャケット/アウター パンツ 靴 バッグ スーツ 帽子 アクセサリー 小物 時計 水着 レッグウェア アンダーウェア)
babies_children = %w(ベビー服(女の子用)~95cm ベビー服(男の子用)~95cm ベビー服(男女兼用)~95cm キッズ服(女の子用)100cm~ キッズ服(男の子用)100cm~ キッズ服(男女兼用)100cm~ キッズ靴 子ども用ファッション小物 おむつ/トイレ/バス 外出/移動用品 授乳/食事 ベビー家具/寝具/室内用品 おもちゃ 行事/記念品 その他)
interior_children = %w(キッチン/食器 ベッド/マットレス ソファ/ソファベッド 椅子/チェア 机/テーブル 収納家具 ラグ/カーペット/マット カーテン/ブラインド ライト/照明 寝具 インテリア小物 季節/年中行事 その他)
books_children = %w(本 漫画 雑誌 CD DVD/ブルーレイ レコード テレビゲーム)
toy_hobby_goods_children = %w(おもちゃ タレントグッズ コミック/アニメグッズ トレーディングカード フィギュア 楽器/器材 コレクション ミリタリー 美術品 アート用品 その他)
cosme_perfume_children = %w(ベースメイク メイクアップ ネイルケア 香水 スキンケア/化粧品 ヘアケア ボディケア オーラルケア リラクゼーション ダイエット その他)
ap_smart_camere_children = %w(スマートフォン/携帯電話 スマホアクセサリー PC/タブレット カメラ テレビ/映像機器 オーディオ機器 美容/健康 冷暖房/空調 生活家電 その他)
sports_children = %w(ゴルフ フィッシング 自転車 トレーニング/エクササイズ 野球 サッカー/フットサル テニス スノーボード スキー その他スポーツ アウトドア その他)
handmade_children = %w(アクセサリー(女性用) ファッション/小物 アクセサリー/時計 日用品/インテリア 趣味/おもちゃ キッズ/ベビー 
素材/材料 二次創作物 その他)
ticket_children = %w(音楽 スポーツ 演劇/芸能 イベント 映画 施設利用券 優待券/割引券 その他)
car_autobike_children = %w(自動車本体 自動車タイヤ/ホイール 自動車パーツ 自動車アクセサリー オートバイ車体 オートバイパーツ オートバイアクセサリー)
others_children = %w(まとめ売り ペット用品 食品 飲料/酒 日用品/生活雑貨/旅行 アンティーク/コレクション 文房具/事務用品 事務/店舗用品 その他)

children = [ladies_children, mens_children, babies_children, interior_children,books_children,toy_hobby_goods_children, cosme_perfume_children, ap_smart_camere_children, sports_children, handmade_children, ticket_children, car_autobike_children, others_children]

# 孫カテゴリーの名前配列　子カテゴリー名 = [孫カテゴリの名前, .......]
ladies_tops = ["Tシャツ/カットソー(半袖/袖なし)", "Tシャツ/カットソー(七分/長袖)", "シャツ/ブラウス(半袖/袖なし)", "シャツ/ブラウス(七分/長袖)", "ポロシャツ", "キャミソール", "タンクトップ", "ホルターネック", "ニット/セーター", "チュニック", "カーディガン/ボレロ", "アンサンブル", "ベスト/ジレ", "パーカー", "トレーナー/スウェット", "ベアトップ/チューブトップ", "ジャージ", "その他"]
ladies_jacket = ["テーラードジャケット", "ノーカラージャケット", "Gジャン/デニムジャケット", "レザージャケット", "ダウンジャケット", "ライダースジャケット", "ミリタリージャケット", "ダウンベスト", "ジャンパー/ブルゾン", "ポンチョ", "ロングコート", "トレンチコート", "ダッフルコート", "ピーコート", "チェスターコート", "モッズコート", "スタジャン", "毛皮/ファーコート", "スプリングコート", "スカジャン", "その他"]
ladies_socks = ["ソックス", "スパッツ/レギンス", "ストッキング/タイツ", "レッグウォーマー", "その他"]
ladies_roomwear = ["パジャマ", "ルームウェア"]
ladies_shoes = ["ハイヒール/パンプス", "ブーツ", "サンダル", "スニーカー", "ミュール", "モカシン", "ローファー/革靴", "フラットシューズ/バレエシューズ", "長靴/レインシューズ", "その他"]
ladies_onepiece = ["ミニワンピース", "ひざ丈ワンピース", "ロングワンピース", "その他"]
ladies_skirt = ["ミニスカート", "ひざ丈スカート", "ロングスカート", "キュロット", "その他"]
ladies_pants = ["デニム/ジーンズ", "ショートパンツ", "カジュアルパンツ", "ハーフパンツ", "チノパン", "ワークパンツ/カーゴパンツ", "クロップドパンツ", "サロペット/オーバーオール", "オールインワン", "サルエルパンツ", "ガウチョパンツ", "その他"]
ladies_hats = ["ニットキャップ/ビーニー", "ハット", "ハンチング/ベレー帽", "キャップ", "キャスケット", "麦わら帽子", "その他"]
ladies_bag = ["ハンドバッグ", "トートバッグ", "エコバッグ", "リュック/バックパック", "ボストンバッグ", "スポーツバッグ", "ショルダーバッグ", "クラッチバッグ", "ポーチ/バニティ", "ボディバッグ/ウェストバッグ", "マザーズバッグ", "メッセンジャーバッグ", "ビジネスバッグ", "旅行用バッグ/キャリーバッグ", "ショップ袋", "和装用バッグ", "かごバッグ", "その他"]
ladies_accessory = ["ネックレス", "ブレスレット", "バングル/リストバンド", "リング", "ピアス(片耳用)", "ピアス(両耳用)", "イヤリング", "アンクレット", "ブローチ/コサージュ", "チャーム", "その他"]
ladies_hairaccessory = ["ヘアゴム/シュシュ", "ヘアバンド/カチューシャ", "ヘアピン", "その他"]
ladies_komono = ["長財布", "折り財布", "コインケース/小銭入れ", "名刺入れ/定期入れ", "キーケース", "キーホルダー", "手袋/アームカバー", "ハンカチ", "ベルト", "マフラー/ショール", "ストール/スヌード", "バンダナ/スカーフ", "ネックウォーマー", "サスペンダー", "サングラス/メガネ", "モバイルケース/カバー", "手帳", "イヤマフラー", "傘", "レインコート/ポンチョ", "ミラー", "タバコグッズ", "その他"]
ladies_watch = ["腕時計(アナログ)", "腕時計(デジタル)", "ラバーベルト", "レザーベルト", "金属ベルト", "その他"]
ladies_wig = ["前髪ウィッグ", "ロングストレート", "ロングカール", "ショートストレート", "ショートカール", "その他"]
ladies_yukata = ["浴衣", "着物", "振袖", "長襦袢/半襦袢", "水着セパレート", "水着ワンピース", "水着スポーツ用", "その他"]
ladies_suits = ["スカートスーツ上下", "パンツスーツ上下", "ドレス", "パーティーバッグ", "シューズ", "ウェディング", "その他"]
ladies_matanity = ["トップス", "アウター", "インナー", "ワンピース", "パンツ/スパッツ", "スカート", "パジャマ", "授乳服", "その他"]
ladies_others = ["コスプレ", "下着", "その他"]

ladies_grandchildren = [ladies_tops, ladies_jacket, ladies_pants, ladies_skirt, ladies_onepiece, ladies_shoes, ladies_roomwear, ladies_socks, ladies_hats, ladies_bag, ladies_accessory, ladies_hairaccessory, ladies_komono, ladies_watch, ladies_wig, ladies_yukata, ladies_suits, ladies_matanity, ladies_others]

# メンズ
mens_tops = ["Tシャツ/カットソー(半袖/袖なし)", "Tシャツ/カットソー(七分/長袖)", "シャツ", "ポロシャツ", "タンクトップ", "ニット/セーター", "パーカー", "カーディガン", "スウェット", "ジャージ", "ベスト", "その他"]
mens_jacket = ["テーラードジャケット", "ノーカラージャケット", "Gジャン/デニムジャケット", "レザージャケット", "ダウンジャケット", "ライダースジャケット", "ミリタリージャケット", "ナイロンジャケット", "フライトジャケット", "ダッフルコート", "ピーコート", "ステンカラーコート", "トレンチコート", "モッズコート", "チェスターコート", "スタジャン", "スカジャン", "ブルゾン", "マウンテンパーカー", "ダウンベスト", "ポンチョ", "カバーオール", "その他"]
mens_pants = ["デニム/ジーンズ", "ワークパンツ/カーゴパンツ", "スラックス", "チノパン", "ショートパンツ", "ペインターパンツ", "サルエルパンツ", "オーバーオール", "その他"]
mens_shoes = ["スニーカー", "サンダル", "ブーツ", "モカシン", "ドレス/ビジネス", "長靴/レインシューズ", "デッキシューズ", "その他"]
mens_bag = ["ショルダーバッグ", "トートバッグ", "ボストンバッグ", "リュック/バックパック", "ウエストポーチ", "ボディーバッグ", "ドラムバッグ", "ビジネスバッグ", "トラベルバッグ", "メッセンジャーバッグ", "エコバッグ", "その他"]
mens_suits = ["スーツジャケット", "スーツベスト", "スラックス", "セットアップ", "その他"]
mens_hats = ["キャップ", "ハット", "ニットキャップ/ビーニー", "ハンチング/ベレー帽", "キャスケット", "サンバイザー", "その他"]
mens_accessory = ["ネックレス", "ブレスレット", "バングル/リストバンド", "リング", "ピアス(片耳用)", "ピアス(両耳用)", "アンクレット", "その他"]
mens_komono = ["長財布", "折り財布", "マネークリップ", "コインケース/小銭入れ", "名刺入れ/定期入れ", "キーケース", "キーホルダー", "ネクタイ", "手袋", "ハンカチ", "ベルト", "マフラー", "ストール", "バンダナ", "ネックウォーマー", "サスペンダー", "ウォレットチェーン", "サングラス/メガネ", "モバイルケース/カバー", "手帳", "ストラップ", "ネクタイピン", "カフリンクス", "イヤマフラー", "傘", "レインコート", "ミラー", "タバコグッズ", "その他"]
mens_watch = ["腕時計(アナログ)", "腕時計(デジタル)", "ラバーベルト", "レザーベルト", "金属ベルト", "その他"]
mens_swimwear = ["一般水着", "スポーツ用", "アクセサリー", "その他"]
mens_socks = ["ソックス", "レギンス/スパッツ", "レッグウォーマー", "その他"]
mens_shorts = ["トランクス", "ボクサーパンツ", "その他"]

mens_grandchildren = [mens_tops, mens_jacket, mens_pants, mens_shoes, mens_bag, mens_suits, mens_hats, mens_accessory, mens_komono, mens_watch, mens_swimwear, mens_socks, mens_shorts]

# ベビー・キッズ
babies_female_u95cm = ["トップス", "アウター", "パンツ", "スカート", "ワンピース", "ベビードレス", "おくるみ", "下着/肌着", "パジャマ", "ロンパース", "その他"]
babies_male_u95cm = ["トップス", "アウター", "パンツ", "おくるみ", "下着/肌着", "パジャマ", "ロンパース", "その他"]
babies_unisex_u95cm = ["トップス", "アウター", "パンツ", "おくるみ", "下着/肌着", "パジャマ", "ロンパース", "その他"]
babies_female_o100cm = ["コート", "ジャケット/上着", "トップス(Tシャツ/カットソー)", "トップス(トレーナー)", "トップス(チュニック)", "トップス(タンクトップ)", "トップス(その他)", "スカート", "パンツ", "ワンピース", "セットアップ", "パジャマ", "フォーマル/ドレス", "和服", "浴衣", "甚平", "水着", "その他"]
babies_male_o100cm = ["コート", "ジャケット/上着", "トップス(Tシャツ/カットソー)", "トップス(トレーナー)", "トップス(その他)", "パンツ", "セットアップ", "パジャマ", "フォーマル/ドレス", "和服", "浴衣", "甚平", "水着", "その他"]
babies_unisex_o100cm = ["コート", "ジャケット/上着", "トップス(Tシャツ/カットソー)", "トップス(トレーナー)", "トップス(その他)", "ボトムス", "パジャマ", "その他"]
babies_shoes = ["スニーカー", "サンダル", "ブーツ", "長靴", "その他"]
babies_komono = ["靴下/スパッツ", "帽子", "エプロン", "サスペンダー", "タイツ", "ハンカチ", "バンダナ", "ベルト", "マフラー", "傘", "手袋", "スタイ", "バッグ", "その他"]
babies_toilet = ["おむつ用品", "おまる/補助便座", "トレーニングパンツ", "ベビーバス", "お風呂用品", "その他"]
babies_to_move = ["ベビーカー", "抱っこひも/スリング", "チャイルドシート", "その他"]
babies_meal = ["ミルク", "ベビーフード", "ベビー用食器", "その他"]
babies_furniture = ["ベッド", "布団/毛布", "イス", "たんす", "その他"]
babies_toys = ["おふろのおもちゃ", "がらがら", "オルゴール", "ベビージム", "手押し車/カタカタ", "知育玩具", "その他"]
babies_memories = ["お宮参り用品", "お食い初め用品", "アルバム", "手形/足形", "その他"]
babies_others = ["母子手帳用品", "その他"]

babies_grandchildren = [babies_female_u95cm, babies_male_u95cm, babies_unisex_u95cm, babies_female_o100cm, babies_male_o100cm, babies_unisex_o100cm, babies_shoes, babies_komono, babies_toilet, babies_to_move, babies_meal, babies_furniture, babies_toys, babies_memories, babies_others]

# インテリア・住まい・小物
interior_kitchen = ["食器", "調理器具", "収納/キッチン雑貨", "弁当用品", "カトラリー(スプーン等)", "テーブル用品", "容器", "エプロン", "アルコールグッズ", "浄水機", "その他"]
interior_bed = ["セミシングルベッド", "シングルベッド", "セミダブルベッド", "ダブルベッド", "ワイドダブルベッド", "クイーンベッド", "キングベッド", "脚付きマットレスベッド", "マットレス", "すのこベッド", "ロフトベッド/システムベッド", "簡易ベッド/折りたたみベッド", "収納付き", "その他"]
interior_sofa = ["ソファセット", "シングルソファ", "ラブソファ", "トリプルソファ", "オットマン", "コーナーソファ", "ビーズソファ/クッションソファ", "ローソファ/フロアソファ", "ソファベッド", "応接セット", "ソファカバー", "リクライニングソファ", "その他"]
interior_chair = ["一般", "スツール", "ダイニングチェア", "ハイバックチェア", "ロッキングチェア", "座椅子", "折り畳みイス", "デスクチェア", "その他"]
interior_table = ["こたつ", "カウンターテーブル", "サイドテーブル", "センターテーブル", "ダイニングテーブル", "座卓/ちゃぶ台", "アウトドア用", "パソコン用", "事務机/学習机", "その他"]
interior_storage = ["リビング収納", "キッチン収納", "玄関/屋外収納", "バス/トイレ収納", "本収納", "本/CD/DVD収納", "洋服タンス/押入れ収納", "電話台/ファックス台", "ドレッサー/鏡台", "棚/ラック", "ケース/ボックス", "その他"]
interior_carpet = ["ラグ", "カーペット", "ホットカーペット", "玄関/キッチンマット", "トイレ/バスマット", "その他"]
interior_curtain = ["カーテン", "ブラインド", "ロールスクリーン", "のれん", "その他"]
interior_light = ["蛍光灯/電球", "天井照明", "フロアスタンド", "その他"]
interior_bedding = ["布団/毛布", "枕", "シーツ/カバー", "その他"]
interior_komono = ["ごみ箱", "ウェルカムボード", "オルゴール", "クッション", "クッションカバー", "スリッパラック", "ティッシュボックス", "バスケット/かご", "フォトフレーム", "マガジンラック", "モビール", "花瓶", "灰皿", "傘立て", "小物入れ", "置時計", "掛時計/柱時計", "鏡(立て掛け式)", "鏡(壁掛け式)", "置物", "風鈴", "植物/観葉植物", "その他"]
interior_seasons = ["正月", "成人式", "バレンタインデー", "ひな祭り", "子どもの日", "母の日", "父の日", "サマーギフト/お中元", "夏/夏休み", "ハロウィン", "敬老の日", "七五三", "お歳暮", "クリスマス", "冬一般", "その他"]

interior_grandchildren = [interior_kitchen, interior_bed, interior_sofa, interior_chair, interior_table, interior_storage, interior_carpet, interior_curtain, interior_light, interior_bedding, interior_komono, interior_seasons]

# 本・音楽・ゲーム
books = ["文学/小説", "人文/社会", "ノンフィクション/教養", "地図/旅行ガイド", "ビジネス/経済", "健康/医学", "コンピュータ/IT", "趣味/スポーツ/実用", "住まい/暮らし/子育て", "アート/エンタメ", "洋書", "絵本", "参考書", "その他"]
books_comic = ["全巻セット", "少年漫画", "少女漫画", "青年漫画", "女性漫画", "同人誌", "その他"]
books_magazine = ["アート/エンタメ/ホビー", "ファッション", "ニュース/総合", "趣味/スポーツ", "その他"]
cds = ["邦楽", "洋楽", "アニメ", "クラシック", "K-POP/アジア", "キッズ/ファミリー", "その他"]
dvds = ["外国映画", "日本映画", "アニメ", "TVドラマ", "ミュージック", "お笑い/バラエティ", "スポーツ/フィットネス", "キッズ/ファミリー", "その他"]
record = ["邦楽", "洋楽", "その他"]
games = ["家庭用ゲーム本体", "家庭用ゲームソフト", "携帯用ゲーム本体", "携帯用ゲームソフト", "PCゲーム", "その他"]

books_grandchildren = [books, books_comic, books_magazine, cds, dvds, record, games]

# おもちゃ・ホビー・グッズ
toys = ["キャラクターグッズ", "ぬいぐるみ", "小物/アクセサリー", "模型/プラモデル", "ミニカー", "トイラジコン", "プラモデル", "ホビーラジコン", "鉄道模型", "その他"]
talent_goods = ["アイドル", "ミュージシャン", "タレント/お笑い芸人", "スポーツ選手", "その他"]
comic_anime_goods = ["ストラップ", "キーホルダー", "バッジ", "カード", "クリアファイル", "ポスター", "タオル", "その他"]
cardgame = ["遊戯王", "マジック：ザ・ギャザリング", "ポケモンカードゲーム", "デュエルマスターズ", "バトルスピリッツ", "プリパラ", "アイカツ", "カードファイト!! ヴァンガード", "ヴァイスシュヴァルツ", "プロ野球オーナーズリーグ", "ベースボールヒーローズ", "ドラゴンボール", "スリーブ", "その他"]
figure = ["コミック/アニメ", "特撮", "ゲームキャラクター", "SF/ファンタジー/ホラー", "アメコミ", "スポーツ", "ミリタリー", "その他"]
instrument = ["エレキギター", "アコースティックギター", "ベース", "エフェクター", "アンプ", "弦楽器", "管楽器", "鍵盤楽器", "打楽器", "和楽器", "楽譜/スコア", "レコーディング/PA機器", "DJ機器", "DTM/DAW", "その他"]
collection = ["武具", "使用済切手/官製はがき", "旧貨幣/金貨/銀貨/記念硬貨", "印刷物", "ノベルティグッズ", "その他"]
military = ["トイガン", "個人装備", "その他"]
artwork = ["陶芸", "ガラス", "漆芸", "金属工芸", "絵画/タペストリ", "版画", "彫刻/オブジェクト", "書", "写真", "その他"]
art_supplies = ["画材", "額縁", "その他"]
toys_hobbies_others = ["トランプ/UNO", "カルタ/百人一首", "ダーツ", "ビリヤード", "麻雀", "パズル/ジグソーパズル", "囲碁/将棋", "オセロ/チェス", "人生ゲーム", "野球/サッカーゲーム", "スポーツ", "三輪車/乗り物", "ヨーヨー", "模型製作用品", "鉄道", "航空機", "アマチュア無線", "パチンコ/パチスロ", "その他"]

toys_grandchildren = [toys, talent_goods, comic_anime_goods, cardgame, figure, instrument, collection, military, artwork, art_supplies, toys_hobbies_others]

# コスメ・香水・美容
basemake  = ["ファンデーション", "化粧下地", "コントロールカラー", "BBクリーム", "CCクリーム", "コンシーラー", "フェイスパウダー", "トライアルセット/サンプル", "その他"]
makeup = ["アイシャドウ", "口紅", "リップグロス", "リップライナー", "チーク", "フェイスカラー", "マスカラ", "アイライナー", "つけまつげ", "アイブロウペンシル", "パウダーアイブロウ", "眉マスカラ", "トライアルセット/サンプル", "メイク道具/化粧小物", "美顔用品/美顔ローラー", "その他"]
nailcare = ["ネイルカラー", "カラージェル", "ネイルベースコート/トップコート", "ネイルアート用品", "ネイルパーツ", "ネイルチップ/付け爪", "手入れ用具", "除光液", "その他"]
purfume = ["香水(女性用)", "香水(男性用)", "ユニセックス", "ボディミスト", "その他"]
skincare = ["化粧水/ローション", "乳液/ミルク", "美容液", "フェイスクリーム", "洗顔料", "クレンジング/メイク落とし", "パック/フェイスマスク", "ジェル/ゲル", "ブースター/導入液", "アイケア", "リップケア", "トライアルセット/サンプル", "洗顔グッズ", "その他"]
haircare = ["シャンプー", "トリートメント", "コンディショナー", "リンス", "スタイリング剤", "カラーリング剤", "ブラシ", "その他"]
bodycare = ["オイル/クリーム", "ハンドクリーム", "ローション", "日焼け止め/サンオイル", "ボディソープ", "入浴剤", "制汗/デオドラント", "フットケア", "その他"]
oralcare = ["口臭防止/エチケット用品", "歯ブラシ", "その他"]
relaxation = ["エッセンシャルオイル", "芳香器", "お香/香炉", "キャンドル", "リラクゼーショングッズ", "その他"]
diet = ["ダイエット食品", "エクササイズ用品", "体重計", "体脂肪計", "その他"]
cosme_others = ["健康用品", "看護/介護用品", "救急/衛生用品", "その他"]

cosme_grandchildren = [basemake, makeup, nailcare, purfume, skincare, haircare, bodycare, oralcare, relaxation, diet, cosme_others]

# 家電・スマホ・カメラ
smartphone = ["スマートフォン本体", "バッテリー/充電器", "携帯電話本体", "PHS本体", "その他"]
smartphone_accessory = ["Android用ケース", "iPhone用ケース", "カバー", "イヤホンジャック", "ストラップ", "フィルム", "自撮り棒", "その他"]
pc_tablet = ["タブレット", "ノートPC", "デスクトップ型PC", "ディスプレイ", "電子ブックリーダー", "PC周辺機器", "PCパーツ", "その他"]
camera = ["デジタルカメラ", "ビデオカメラ", "レンズ(単焦点)", "レンズ(ズーム)", "フィルムカメラ", "防犯カメラ", "その他"]
tv = ["テレビ", "プロジェクター", "ブルーレイレコーダー", "DVDレコーダー", "ブルーレイプレーヤー", "DVDプレーヤー", "映像用ケーブル", "その他"]
audio = ["ポータブルプレーヤー", "イヤフォン", "ヘッドフォン", "アンプ", "スピーカー", "ケーブル/シールド", "ラジオ", "その他"]
healthcare = ["ヘアドライヤー", "ヘアアイロン", "美容機器", "電気シェーバー", "電動歯ブラシ", "その他"]
airconditioning = ["エアコン", "空気清浄器", "加湿器", "扇風機", "除湿機", "ファンヒーター", "電気ヒーター", "オイルヒーター", "ストーブ", "ホットカーペット", "こたつ", "電気毛布", "その他"]
household_appliance = ["冷蔵庫", "洗濯機", "炊飯器", "電子レンジ/オーブン", "調理機器", "アイロン", "掃除機", "エスプレッソマシン", "コーヒーメーカー", "衣類乾燥機", "その他"]
appliance_others = ["その他"]

smartphone_grandchildren = [smartphone, smartphone_accessory, pc_tablet, camera, tv, audio, healthcare, airconditioning, household_appliance, appliance_others]

# スポーツ・レジャー
golf = ["クラブ", "ウエア(男性用)", "ウエア(女性用)", "バッグ", "シューズ(男性用)", "シューズ(女性用)", "アクセサリー", "その他"]
fissing = ["ロッド", "リール", "ルアー用品", "ウエア", "釣り糸/ライン", "その他"]
cycling = ["自転車本体", "ウエア", "パーツ", "アクセサリー", "バッグ", "工具/メンテナンス", "その他"]
training = ["ランニング", "ウォーキング", "ヨガ", "トレーニング用品", "その他"]
baseball = [ "ウェア", "シューズ", "グローブ", "バット", "アクセサリー", "防具", "練習機器", "記念グッズ", "応援グッズ", "その他"]
football = ["ウェア", "シューズ", "ボール", "アクセサリー", "記念グッズ", "応援グッズ", "その他"]
tennis = ["ラケット(硬式用)", "ラケット(軟式用)", "ウェア", "シューズ", "ボール", "アクセサリー", "記念グッズ", "応援グッズ", "その他"]
snowboard = ["ボード", "バインディング", "ブーツ(男性用)", "ブーツ(女性用)", "ブーツ(子ども用)", "ウエア/装備(男性用)", "ウエア/装備(女性用)", "ウエア/装備(子ども用)", "アクセサリー", "バッグ", "その他"]
ski = ["板", "ブーツ(男性用)", "ブーツ(女性用)", "ブーツ(子ども用)", "ビンディング", "ウエア(男性用)", "ウエア(女性用)", "ウエア(子ども用)", "ストック", "その他"]
other_sports = ["ダンス/バレエ", "サーフィン", "バスケットボール", "バドミントン", "バレーボール", "スケートボード", "陸上競技", "ラグビー", "アメリカンフットボール", "ボクシング", "ボウリング", "その他"]
outdoor = ["テント/タープ", "ライト/ランタン", "寝袋/寝具", "テーブル/チェア", "ストーブ/コンロ", "調理器具", "食器", "登山用品", "その他"]
sports_leasure_others = ["旅行用品", "その他"]

sports_grandchildren = [golf, fissing, cycling, training, baseball, football, tennis, snowboard, ski, other_sports, outdoor, sports_leasure_others]

# ハンドメイド
handmade_accessory = ["ピアス", "イヤリング", "ネックレス", "ブレスレット", "リング", "チャーム", "ヘアゴム", "アンクレット", "その他"]
fashion_komono = ["バッグ(女性用)", "バッグ(男性用)", "財布(女性用)", "財布(男性用)", "ファッション雑貨", "その他"]
accessory_watch = [ "アクセサリー(男性用)", "時計(女性用)", "時計(男性用)", "その他"]
dayly_necessities = ["キッチン用品", "家具", "文房具", "アート/写真", "アロマ/キャンドル", "フラワー/ガーデン", "その他"]
hobby_toy = ["クラフト/布製品", "おもちゃ/人形", "その他"]
kids_baby = [ "ファッション雑貨", "スタイ/よだれかけ", "外出用品", "ネームタグ", "その他"]
material = ["各種パーツ", "生地/糸", "型紙/パターン", "その他"]
fan_fiction = [ "Ingress", "クリエイターズ宇宙兄弟", "シンデレラガールズCPグッズ"]
handmade_others = []

handmade_grandchildren = [handmade_accessory, fashion_komono, accessory_watch, dayly_necessities, hobby_toy, kids_baby, material, fan_fiction, handmade_others]

# チケット
live_ticket = ["男性アイドル", "女性アイドル", "韓流", "国内アーティスト", "海外アーティスト", "音楽フェス", "声優/アニメ", "その他"]
sports_ticket = ["サッカー", "野球", "テニス", "格闘技/プロレス", "相撲/武道", "ゴルフ", "バレーボール", "バスケットボール", "モータースポーツ", "ウィンタースポーツ", "その他"]
theater_ticket = ["ミュージカル", "演劇", "伝統芸能", "落語", "お笑い", "オペラ", "サーカス", "バレエ", "その他"]
event_ticket = ["声優/アニメ", "キッズ/ファミリー", "トークショー/講演会", "その他"]
movie_ticket = ["邦画", "洋画", "その他"]
facility_using_ticket = ["遊園地/テーマパーク", "美術館/博物館", "スキー場", "ゴルフ場", "フィットネスクラブ", "プール", "ボウリング場", "水族館", "動物園", "その他"]
coupon = ["ショッピング", "レストラン/食事券", "フード/ドリンク券", "宿泊券", "その他"]

ticket_grandchildren = [live_ticket, sports_ticket, theater_ticket, event_ticket, movie_ticket, facility_using_ticket, coupon]

# 自動車・オートバイ
car = ["国内自動車本体", "外国自動車本体"]
tire = ["タイヤ/ホイールセット", "タイヤ", "ホイール", "その他"]
car_parts = ["サスペンション", "ブレーキ", "外装、エアロパーツ", "ライト", "内装品、シート", "ステアリング", "マフラー・排気系", "エンジン、過給器、冷却装置", "クラッチ、ミッション、駆動系", "電装品", "補強パーツ", "汎用パーツ", "外国自動車用パーツ", "その他"]
car_accessory = ["車内アクセサリー", "カーナビ", "カーオーディオ", "車外アクセサリー", "メンテナンス用品", "チャイルドシート", "ドライブレコーダー", "レーダー探知機", "カタログ/マニュアル", "セキュリティ", "ETC", "その他"]
autobike = []
autobike_parts = ["タイヤ", "マフラー", "エンジン、冷却装置", "カウル、フェンダー、外装", "サスペンション", "ホイール", "シート", "ブレーキ", "タンク", "ライト、ウィンカー", "チェーン、スプロケット、駆動系", "メーター", "電装系", "ミラー", "外国オートバイ用パーツ", "その他"]
autobike_accessory = ["ヘルメット/シールド", "バイクウエア/装備", "アクセサリー", "メンテナンス", "カタログ/マニュアル", "その他"]

car_grandchildren = [car, tire, car_parts, car_accessory, autobike, autobike_parts, autobike_accessory]

# その他
whole_sale = []
pet = ["ペットフード", "犬用品", "猫用品", "魚用品/水草", "小動物用品", "爬虫類/両生類用品", "かご/おり", "鳥用品", "虫類用品", "その他"]
foods = ["菓子", "米", "野菜", "果物", "調味料", "魚介類(加工食品)", "肉類(加工食品)", "その他 加工食品", "その他"]
drink = ["コーヒー", "ソフトドリンク", "ミネラルウォーター", "茶", "ウイスキー", "ワイン", "ブランデー", "焼酎", "日本酒", "ビール、発泡酒", "その他"]
dayly_use = ["タオル/バス用品", "日用品/生活雑貨", "洗剤/柔軟剤", "旅行用品", "防災関連グッズ", "その他"]
antique = ["雑貨", "工芸品", "家具", "印刷物", "その他"]
stationery = ["筆記具", "ノート/メモ帳", "テープ/マスキングテープ", "カレンダー/スケジュール", "アルバム/スクラップ", "ファイル/バインダー", "はさみ/カッター", "カードホルダー/名刺管理", "のり/ホッチキス", "その他"]
office_appliance = ["オフィス用品一般", "オフィス家具", "店舗用品", "OA機器", "ラッピング/包装", "その他"]

others_grandchildren = [whole_sale, pet, foods, drink, dayly_use, antique, stationery, office_appliance]

grandchildren = [ladies_grandchildren, mens_grandchildren, babies_grandchildren, interior_grandchildren, books_grandchildren, toys_grandchildren, cosme_grandchildren, smartphone_grandchildren, sports_grandchildren, handmade_grandchildren, ticket_grandchildren, car_grandchildren, others_grandchildren]

# 親カテゴリを一挙生成
parents.each do |parent| 
  Category.create(name: parent)
end

# 子カテゴリを一挙生成
children.each.with_index(1) do |child,i|
  parent = Category.find(i)
  child.each do |child_name|
   parent.children.create(name: child_name)
  end
end

# 孫カテゴリーを作成
ladies_grandchildren.each.with_index(14) do |ladies_categories,i|
  parent = Category.find(i)
  ladies_categories.each do |ladies_category| 
    parent.children.create(name: ladies_category)
  end
end

mens_grandchildren.each.with_index(33) do |mens_categories,i|
  parent = Category.find(i)
  mens_categories.each do |mens_category| 
    parent.children.create(name: mens_category)
  end
end

babies_grandchildren.each.with_index(46) do |babies_categories,i|
  parent = Category.find(i)
  babies_categories.each do |babies_category| 
    parent.children.create(name: babies_category)
  end
end

interior_grandchildren.each.with_index(61) do |interior_categories,i|
  parent = Category.find(i)
  interior_categories.each do |interior_category| 
    parent.children.create(name: interior_category)
  end
end

books_grandchildren.each.with_index(74) do |books_categories,i|
  parent = Category.find(i)
  books_categories.each do |books_category| 
    parent.children.create(name: books_category)
  end
end

toys_grandchildren.each.with_index(81) do |toys_categories,i|
  parent = Category.find(i)
  toys_categories.each do |toys_category| 
    parent.children.create(name: toys_category)
  end
end

cosme_grandchildren.each.with_index(92) do |cosme_categories,i|
  parent = Category.find(i)
  cosme_categories.each do |cosme_category| 
    parent.children.create(name: cosme_category)
  end
end

smartphone_grandchildren.each.with_index(103) do |smartphone_categories,i|
  parent = Category.find(i)
  smartphone_categories.each do |smartphone_category| 
    parent.children.create(name: smartphone_category)
  end
end

sports_grandchildren.each.with_index(113) do |sports_categories,i|
  parent = Category.find(i)
  sports_categories.each do |sports_category| 
    parent.children.create(name: sports_category)
  end
end

handmade_grandchildren.each.with_index(125) do |handmade_categories,i|
  parent = Category.find(i)
  handmade_categories.each do |handmade_category| 
    parent.children.create(name: handmade_category)
  end
end

ticket_grandchildren.each.with_index(134) do |ticket_categories,i|
  parent = Category.find(i)
  ticket_categories.each do |ticket_category| 
    parent.children.create(name: ticket_category)
  end
end

car_grandchildren.each.with_index(142) do |car_categories,i|
  parent = Category.find(i)
  car_categories.each do |car_category| 
    parent.children.create(name: car_category)
  end
end

others_grandchildren.each.with_index(149) do |others_categories,i|
  parent = Category.find(i)
  others_categories.each do |others_category| 
    parent.children.create(name: others_category)
  end
end

# 5.times do |i|
#   User.create!(
#     nickname: "#{i + 1}太郎", 
#     description: nil, 
#     email: "taro#{i + 1}@gmail.com", 
#     birthday: "2020-01-01", 
#     is_deleted: false,
#     password: 'osaka2025',
#     password_confirmation: 'osaka2025'
#   )
# end

# Address.create!(
#   [{
#     last_name: "大阪",
#     first_name: "太郎",
#     last_name_kana: "オオサカ",
#     first_name_kana: "タロウ",
#     postal_code: "1111111",
#     prefecture_id: 27,
#     city: "大阪市北区",
#     address: "曽根崎1−1−1",
#     building: "",
#     tel: "",
#     user_id: 1
#   },
#   {
#     last_name: "京都",
#     first_name: "太郎",
#     last_name_kana: "キョウト",
#     first_name_kana: "タロウ",
#     postal_code: "2222222",
#     prefecture_id: 26,
#     city: "京都市南区",
#     address: "四条烏丸",
#     building: "",
#     tel: "",
#     user_id: 2
#   },
#   {
#     last_name: "兵庫",
#     first_name: "太郎",
#     last_name_kana: "ヒョウゴ",
#     first_name_kana: "タロウ",
#     postal_code: "3333333",
#     prefecture_id: 28,
#     city: "川辺郡猪名川町",
#     address: "3-6-9",
#     building: "",
#     tel: "",
#     user_id: 3
#   },
#   {
#     last_name: "和歌山",
#     first_name: "太郎",
#     last_name_kana: "ワカヤマ",
#     first_name_kana: "タロウ",
#     postal_code: "5555555",
#     prefecture_id: 30,
#     city: "海南市",
#     address: "2−5−1",
#     building: "",
#     tel: "",
#     user_id: 4
#   },
#   {
#     last_name: "滋賀",
#     first_name: "太郎",
#     last_name_kana: "シガ",
#     first_name_kana: "タロウ",
#     postal_code: "5555555",
#     prefecture_id: 25,
#     city: "高島市",
#     address: "安曇川町1578",
#     building: "",
#     tel: "",
#     user_id: 5
#   }]
# )
