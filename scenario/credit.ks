; ;=========================================
; ; クレジット表示
; ;=========================================
;	メッセージレイヤ0を不可視に
	[layopt layer="message0" visible="false"]

;	fixボタンをクリア
	[clearfix]

;	キーコンフィグの無効化
	[stop_keyconfig]

;	レイヤーモードの解放
	[free_layermode time="100" wait="true"]

;	カメラのリセット
	[reset_camera time="100" wait="true"]
	
;	前景レイヤの中身をすべて空に
	[iscript]
	$(".layer_camera").empty();
	[endscript]


;se止める
	[stopse]

;	メニューボタン非表示
	[hidemenubutton]

	[wait_cancel]

[a_s_off]
[cm]

[iscript]
tf.normal="Normal End"
tf.true="True End"
[endscript]

[if exp="tf.from==1"]
;ノーマルルートから来た
[jump target="*normal"]
[elsif exp="tf.from==2"]
;トゥルールートから来た
[jump target="*true"]
; [elsif exp="sf.clear_root1==1&&sf.clear_root2==1"]
;両方クリア
; [bg storage="credit_select.png"]
; [glink text="クリア前クレジット" target="*credit" color=white x=800 y=350]
; [glink text=&tf.normal target="*normal" color=white x=850 y=550]
; [glink text=&tf.true target="*true" color=white x=870 y=750]
; [s]
; [jump target="*common"]
; [elsif exp="sf.clear_root1==1"]
; ;ノーマルルートのみクリア済み
; [jump target="*normal"]
; [elsif exp="sf.clear_root2==1"]
; ;トゥルールートのみクリア済み
; [jump target="*true"]
[else]
[jump target="*credit"]
[endif]


*credit
[eval exp="tf.credit=0"]
; [playbgm storage="Seeds_for_the_future.mp3"]
[jump target="*common"]
*normal
[eval exp="tf.credit=1"]
; [playbgm storage="haruzion.mp3"]
[jump target="*common"]
*true
[eval exp="tf.credit=2"]
; [playbgm storage="still.mp3"]
[jump target="*common"]

*common
[eval exp="tf.from=0"]


@layopt layer=1 visible=true
[bg storage="black.png"]
[if exp="tf.credit==0"]
[image storage="credit_illust0.jpg" x=1290 y=30 layer=1]
[elsif exp="tf.credit==1"]
[image storage="credit_illust1.jpg" x=1290 y=30 layer=1]
[else]
[image storage="credit_illust2.jpg" x=1290 y=30 layer=1]
[endif]

[playbgm storage="yours.mp3"]
[mask_off]
@layopt layer=0 visible=true


[ptext layer=0 text="制作" size=65 x=0 y=300 color=snow name="text"]
[ptext layer=0 text="令和3年度　静岡県立島田商業高等学校　情報ビジネス科" size=45 x=0 y=400 color=snow name="text"]


[ptext layer=0 text="企画" size=45 x=0 y=600 color=snow name="text"]
[ptext layer=0 text="中西健太・森大樹・山内柔磨" size=45 x=0 y=700 color=snow name="text"]

[ptext layer=0 text="プレゼン" size=45 x=0 y=900 color=snow name="text"]
[ptext layer=0 text="中西健太・森大樹・山内柔磨" size=45 x=0 y=1000 color=snow name="text"]

[ptext layer=0 text="シナリオ" size=45 x=0 y=1200 color=snow name="text"]
[ptext layer=0 text="中西健太" size=45 x=0 y=1300 color=snow name="text"]

[ptext layer=0 text="シナリオ協力" size=45 x=0 y=1500 color=snow name="text"]
[ptext layer=0 text="森大樹・山内柔磨" size=45 x=0 y=1600 color=snow name="text"]

[ptext layer=0 text="キャラクターデザイン" size=45 x=0 y=1800 color=snow name="text"]
[ptext layer=0 text="中西健太" size=45 x=0 y=1900 color=snow name="text"]

[ptext layer=0 text="イラスト" size=45 x=0 y=2100 color=snow name="text"]
[ptext layer=0 text="中西健太" size=45 x=0 y=2200 color=snow name="text"]

[ptext layer=0 text="一部画像素材" size=45 x=0 y=2400 color=snow name="text"]
[ptext layer=0 text="森大樹・山内柔磨" size=45 x=0 y=2500 color=snow name="text"]

[ptext layer=0 text="アプリアイコンデザイン" size=45 x=0 y=2700 color=snow name="text"]
[ptext layer=0 text="森大樹" size=45 x=0 y=2800 color=snow name="text"]

[ptext layer=0 text="アプリアイコンデザイン協力" size=45 x=0 y=3000 color=snow name="text"]
[ptext layer=0 text="中西健太・山内柔磨" size=45 x=0 y=3100 color=snow name="text"]

[ptext layer=0 text="UIデザイン" size=45 x=0 y=3300 color=snow name="text"]
[ptext layer=0 text="山内柔磨" size=45 x=0 y=3400 color=snow name="text"]

[ptext layer=0 text="UIデザイン協力" size=45 x=0 y=3600 color=snow name="text"]
[ptext layer=0 text="中西健太" size=45 x=0 y=3700 color=snow name="text"]

[ptext layer=0 text="プログラム・スクリプト" size=45 x=0 y=3900 color=snow name="text"]
[ptext layer=0 text="山内柔磨" size=45 x=0 y=4000 color=snow name="text"]

[ptext layer=0 text="スクリプト協力" size=45 x=0 y=4200 color=snow name="text"]
[ptext layer=0 text="中西健太" size=45 x=0 y=4300 color=snow name="text"]

[ptext layer=0 text="デバッグ・テストプレイ" size=45 x=0 y=4500 color=snow name="text"]
[ptext layer=0 text="山内柔磨" size=45 x=0 y=4600 color=snow name="text"]

[ptext layer=0 text="オープンデータ" size=45 x=0 y=4800 color=snow name="text"]
[ptext layer=0 text="森大樹" size=45 x=0 y=4900 color=snow name="text"]

[ptext layer=0 text="GoogleSites" size=45 x=0 y=5100 color=snow name="text"]
[ptext layer=0 text="森大樹" size=45 x=0 y=5200 color=snow name="text"]

[ptext layer=0 text="Qiita" size=45 x=0 y=5400 color=snow name="text"]
[ptext layer=0 text="森大樹" size=45 x=0 y=5500 color=snow name="text"]

[ptext layer=0 text="開発言語・開発環境" size=65 x=0 y=5800 color=snow name="text"]
[ptext layer=0 text="ティラノスクリプト" size=45 x=0 y=5900 color=snow name="text"]
[ptext layer=0 text="ティラノスタジオV1.10d" size=45 x=0 y=6000 color=snow name="text"]
[ptext layer=0 text="Monaca Education" size=45 x=0 y=6100 color=snow name="text"]
[ptext layer=0 text="Visual Studio Code" size=45 x=0 y=6200 color=snow name="text"]
[ptext layer=0 text="Mery" size=45 x=0 y=6300 color=snow name="text"]



[ptext layer=0 text="使用したもの（敬称略）" size=65 x=0 y=6600 color=snow name="text"]

[ptext layer=0 text="画像素材" size=55 x=0 y=6800 color=snow name="text"]
[ptext layer=0 text="（ｃ）安野譲（http://www.aj.undo.jp/）" size=45 x=0 y=6900 color=snow name="text"]
[ptext layer=0 text="ICOOON MONO(https://icooon-mono.com/)" size=45 x=0 y=7000 color=snow name="text"]
[ptext layer=0 text="DESGINALIKIE（https://illustimage.com）" size=45 x=0 y=7100 color=snow name="text"]
[ptext layer=0 text="空想曲線（https://kopacurve.blog.fc2.com/）" size=45 x=0 y=7200 color=snow name="text"]
[ptext layer=0 text="イラストAC（https://www.ac-illust.com/）" size=45 x=0 y=7300 color=snow name="text"]
[ptext layer=0 text="写真AC（https://www.photo-ac.com/）" size=45 x=0 y=7400 color=snow name="text"]
[ptext layer=0 text="シルエットAC（https://www.silhouette-ac.com/）" size=45 x=0 y=7500 color=snow name="text"]
[ptext layer=0 text="@ZET ART（http://zet-art.net）" size=45 x=0 y=7600 color=snow name="text"]
[ptext layer=0 text="びたちー素材館（http://www.vita-chi.net/sozai1.htm）" size=45 x=0 y=7700 color=snow name="text"]
[ptext layer=0 text="フリー素材ドットコム（https://free-materials.com/）" size=45 x=0 y=7800 color=snow name="text"]
[ptext layer=0 text="シルエットデザイン（https://kage-design.com/）" size=45 x=0 y=7900 color=snow name="text"]
[ptext layer=0 text="みんちりえ（ https://min-chi.material.jp/ ）" size=45 x=0 y=8000 color=snow name="text"]
[ptext layer=0 text="イラストエイト（https://illust8.com/）" size=45 x=0 y=8100 color=snow name="text"]
[ptext layer=0 text="ティラノスクリプトのデフォルトプロジェクト" size=45 x=0 y=8200 color=snow name="text"]

[ptext layer=0 text="音楽素材" size=55 x=0 y=8400 color=snow name="text"]
[ptext layer=0 text="魔王魂（https://maou.audio/）" size=45 x=0 y=8500 color=snow name="text"]

[ptext layer=0 text="DOVA-SYNDROME（https://dova-s.jp/）" size=45 x=0 y=8600 color=snow name="text"]
[ptext layer=0 text="・おしょう" size=45 x=0 y=8700 color=snow name="text"]
[ptext layer=0 text="・ISAo" size=45 x=0 y=8800 color=snow name="text"]
[ptext layer=0 text="・Causality Sound" size=45 x=0 y=8900 color=snow name="text"]
[ptext layer=0 text="・こっけ" size=45 x=0 y=9000 color=snow name="text"]
[ptext layer=0 text="・かずち" size=45 x=0 y=9100 color=snow name="text"]
[ptext layer=0 text="・ハヤシユウ" size=45 x=0 y=9200 color=snow name="text"]
[ptext layer=0 text="・カワサキヤスヒロ" size=45 x=0 y=9300 color=snow name="text"]
[ptext layer=0 text="・まーかー" size=45 x=0 y=9400 color=snow name="text"]
[ptext layer=0 text="・VeryGoodMan" size=45 x=0 y=9500 color=snow name="text"]
[ptext layer=0 text="・いまたく" size=45 x=0 y=9600 color=snow name="text"]
[ptext layer=0 text="・こばっと" size=45 x=0 y=9700 color=snow name="text"]
[ptext layer=0 text="・蛍原ゆうき" size=45 x=0 y=9800 color=snow name="text"]
[ptext layer=0 text="・Hupple" size=45 x=0 y=9900 color=snow name="text"]
[ptext layer=0 text="・稿屋 隆" size=45 x=0 y=10000 color=snow name="text"]
[ptext layer=0 text="・こおろぎ" size=45 x=0 y=10100 color=snow name="text"]
[ptext layer=0 text="・FLASH☆BEAT" size=45 x=0 y=10200 color=snow name="text"]
[ptext layer=0 text="・RockCapers" size=45 x=0 y=10300 color=snow name="text"]
[ptext layer=0 text="・もっぴーさうんど" size=45 x=0 y=10400 color=snow name="text"]
[ptext layer=0 text="・ゆうり" size=45 x=0 y=10500 color=snow name="text"]

[ptext layer=0 text="Taira Komori（https://taira-komori.jpn.org/index.html）" size=45 x=0 y=10700 color=snow name="text"]
[ptext layer=0 text="OtoLogic(https://otologic.jp)" size=45 x=0 y=10800 color=snow name="text"]
[ptext layer=0 text="効果音ラボ（https://soundeffect-lab.info/）" size=45 x=0 y=10900 color=snow name="text"]
[ptext layer=0 text="ポケットサウンド（https://pocket-se.info）" size=45 x=0 y=11000 color=snow name="text"]
[ptext layer=0 text="「d-elf.com」（https://www.d-elf.com/）" size=45 x=0 y=11100 color=snow name="text"]
[ptext layer=0 text="On-Jin ～音人～（https://on-jin.com/）" size=45 x=0 y=11200 color=snow name="text"]
[ptext layer=0 text="効果音辞典（https://sounddictionary.info/）" size=45 x=0 y=11300 color=snow name="text"]
[ptext layer=0 text="甘茶の音楽工房（https://amachamusic.chagasi.com/）" size=45 x=0 y=11400 color=snow name="text"]
[ptext layer=0 text="効果音工房（https://umipla.com/）" size=45 x=0 y=11500 color=snow name="text"]
[iscript]
tf.hitoshi="hitoshi by Senses Circuit（https://www.senses-circuit.com）";
[endscript]
[ptext layer=0 text=&tf.hitoshi size=45 x=0 y=11600 color=snow name="text"]
[ptext layer=0 text="びたちー素材館（http://www.vita-chi.net/sozai1.htm）" size=45 x=0 y=11700 color=snow name="text"]

[ptext layer=0 text="ティラノスクリプト用プラグイン" size=55 x=0 y=11900 color=snow name="text"]
[ptext layer=0 text="さくた（@skt_order）｜https：//skt-pnt.netlify.app" size=45 x=0 y=12000 color=snow name="text"]
[ptext layer=0 text="・ティラノスタジオ用デバッグ支援プラグイン" size=45 x=0 y=12100 color=snow name="text"]
[ptext layer=0 text="・ゲーム終了時確認ダイアログ表示プラグイン" size=45 x=0 y=12200 color=snow name="text"]
[ptext layer=0 text="・スライダーUIプラグイン" size=45 x=0 y=12300 color=snow name="text"]
[ptext layer=0 text="・一文単位で既読判定するプラグイン" size=45 x=0 y=12400 color=snow name="text"]

[ptext layer=0 text="Astro Pants (https://tarowimo.outside-i.com/)" size=45 x=0 y=12600 color=snow name="text"]
[ptext layer=0 text="・AUTO/SKIPアイコン表示プラグイン" size=45 x=0 y=12700 color=snow name="text"]

[ptext layer=0 text="めも調（http://hororo.wp.xdomain.jp/）" size=45 x=0 y=12900 color=snow name="text"]
[ptext layer=0 text="・メニューSE追加プラグイン" size=45 x=0 y=13000 color=snow name="text"]

[ptext layer=0 text="myokoym（https://twitter.com/myokoym）" size=45 x=0 y=13200 color=snow name="text"]
[ptext layer=0 text="・tyranoscript-plugin-glinks" size=45 x=0 y=13300 color=snow name="text"]

[ptext layer=0 text="（猫）milkcat　https://milkcat.jp/" size=45 x=0 y=13500 color=snow name="text"]
[ptext layer=0 text="・システムスワイププラグイン" size=45 x=0 y=13600 color=snow name="text"]

[ptext layer=0 text="クレジット・エンディング使用曲" size=65 x=0 y=13800 color=snow name="text"]

[ptext layer=0 text="曲名「Yours」（製作者：ISAo　様）" size=45 x=0 y=14000 color=snow name="text"]
[ptext layer=0 text="楽曲URL：https://dova-s.jp/bgm/play2217.html" size=45 x=0 y=14100 color=snow name="text"]



[ptext layer=0 text="スペシャルサンクス" size=65 x=0 y=14400 color=snow name="text"]
[ptext layer=0 text="鈴木かおり　先生" size=45 x=0 y=14500 color=snow name="text"]
[ptext layer=0 text="鈴木滋　先生" size=45 x=0 y=14600 color=snow name="text"]
[ptext layer=0 text="牧之原市 産業経済部 商工観光課　御中" size=45 x=0 y=14700 color=snow name="text"]
[ptext layer=0 text="牧之原市 建設部 公園公共建築課　御中" size=45 x=0 y=14800 color=snow name="text"]
[ptext layer=0 text="森木農園　御中" size=45 x=0 y=14900 color=snow name="text"]
[ptext layer=0 text="さがら子生れ温泉会館　御中" size=45 x=0 y=15000 color=snow name="text"]
[ptext layer=0 text="中日本エクシス株式会社静岡支店　御中" size=45 x=0 y=15100 color=snow name="text"]
[ptext layer=0 text="静岡県スポーツ・文化観光部　空港振興局　空港管理課　御中" size=45 x=0 y=15200 color=snow name="text"]
[ptext layer=0 text="株式会社TOMA　牧之原乗馬クラブ　御中" size=45 x=0 y=15300 color=snow name="text"]

[ptext layer=0 text="この作品の制作に協力してくださった皆様" size=65 x=0 y=15500 color=snow name="text"]
[ptext layer=0 text="この作品をプレイしてくださった皆様" size=65 x=0 y=15600 color=snow name="text"]

[ptext layer=0 text="本当にありがとうございました" size=65 x=0 y=15800 color=snow name="text"]

[wait time=1]

[keyframe name="animation1"]
[frame p=100% y="-16000"]
[endkeyframe]
;ここまでどんな動きをするのか設定しました。実際に動く命令は以下文からです。
;---------アニメーションの実行 5秒かけてキーフレームアニメーションを実行する

[kanim name="text" keyframe="animation1" time=110000 ]
[wa]
@layopt layer=message0 visible=true
[freeimage layer="0"]
[freeimage layer="1"]
[jump storage="title.ks"]


;	画面左上の「Back」ボタン
; [button name="hover" graphic="button_back.png" target="*backtitle" x=50 y=40 fix=true]

; [s]

; *backtitle
; [cm]
; [freeimage layer=1]
; [jump storage="title.ks"]
