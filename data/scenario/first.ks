;一番最初に呼び出されるファイル
;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ
[nolog]
[title name="び少女"]

[stop_keyconfig]
;ログ記録停止
[nolog]

;プラグイン読み込み
[plugin name="slider_ui"]
[plugin name="a_s_ico"]
[plugin name="menu_se" se_clickse="se_tap.mp3"]
[plugin name="glinks" button_width=400]
[plugin name="alreadyreadskip_ex"]
;ビルド時にオン
[plugin name="close_dialog"]
;ビルド時にオフ
; [plugin name="tsex"]


;外部ファイル読み込み
@call storage="tyrano.ks"

[glyph fix=true left="930" top="45" ]
[font size="100" color=0xffffff] タップしてスタート[p]
[resetfont]

;設定
;メッセージウィンドウの設定
[position layer="message0" left=5 top=730 width=1900 height=350 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore frame="message_window.png"  margint="110" marginl="150" marginr="110" marginb="30"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=35 bold=true x=180 y=790 align=center width=350]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config pos_mode=true ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
; マキさん
[chara_new  name="maki" storage="chara/maki/normal.png" jname="マキさん"  ]
;同僚
[chara_new name="douryou" storage="chara/douryou/normal.png" jname="同僚"]
[chara_face name="douryou" face="huutou" storage="chara/douryou/huutou.png"]
;その他モブ
[chara_new name="running_woman" storage="chara/obasan_running.png"]
[chara_face name="running_woman" face="stop" storage="chara/obasan_stop.png"]
[chara_new name="bandai_koumare" storage="chara/bandai_koumare.png"]
[chara_new name="ozisan_koumare" storage="chara/ozisan_koumare.png"]
[chara_new name="staff_zyouba" storage="chara/staff_zyouba.png" ]
[chara_new name="kodomo_yuuyuu" storage="chara/kodomo_yuuyuu.png"]
[chara_new name="kodomo_yuuyuu2" storage="chara/kodomo_yuuyuu2.png"]
[chara_new name="ozisan_sizunami" storage="chara/ozisan_sizunami.png"]
[chara_new name="syatyou" storage="chara/syatyou.png"]
[chara_new name="ookosi" storage="chara/ookosi.png"]




;クリック待ちグリフの位置を固定
[glyph fix="true" left="1800" top="950"]
;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;注意書き表示部分
; [bg storage=mensekijikou.png time=1000 wait=true]

;デフォルトのフォントカラーを指定
; [deffont color=0x000000]

[endnolog]
;タイトル画面へ移動
@jump storage="title.ks"

[s]


