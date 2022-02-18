; ;=========================================
; ; CG モード　画面作成
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

;	メニューボタン非表示
	[hidemenubutton]

[a_s_off]
[cm]
[bg storage="cg.png" time=100]


[layopt layer=1 visible=true]


[iscript]
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    
[endscript]



*cgpage
[layopt layer=1 visible=true]

; [cm]


[iscript]
    tf.tmp_index = 0;
    tf.cg_index = 12 * tf.page;
    tf.top = 100;
    tf.left = 60;
    
[endscript]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*cgview
@jump target=&tf.target_page


*page_0

[cm]
;画面左上の「Back」ボタン
[button name="hover" graphic="button_back.png" target="*backgame" x=50 y=40]
; [image  storage="page_number.png" visible=true folder="image"]
[cg_image_button graphic="kodutumiyama_kouen.jpg" no_graphic="lock.png" x=280 y=200 height=270 folder="cg"]
[cg_image_button graphic="toukouzi.jpg" no_graphic="lock.png" x=1180 y=200 height=270 folder="cg" ]

[cg_image_button graphic="koumare_onsen.jpg" no_graphic="lock.png" x=280 y=620 height=270 folder="cg" ]
[cg_image_button graphic="sa_kudari.jpg" no_graphic="lock.png" x=1180 y=620 height=270 folder="cg" ]


[glink text="小堤山公園" x=200 y=475 width=500 size=50]
[glink text="東光寺の長藤" x=1100 y=475 width=500 size=50]

[glink text="さがら子生れ温泉会館" x=200 y=895 width=500 size=50]
[glink text="牧之原SA下り" x=1100 y=895 width=500 size=50]


[button name="hover" graphic="button_down.png" target="*nextpage" x=935 y=880]
@jump target="*common"

*page_1
[cm]
;画面左上の「Back」ボタン
[button name="hover" graphic="button_back.png" target="*backgame" x=50 y=40]
[button name="hover" graphic="button_up.png" target="*backpage" x=935 y=200]

[cg_image_button graphic="makinohara_zyouba_kurabu.jpg" no_graphic="lock.png" x=280 y=200 height=270 folder="cg" ]
[cg_image_button graphic="moriki_nouen.jpg" no_graphic="lock.png" x=1180 y=200 height=270 folder="cg" ]

[cg_image_button graphic="yuuyuu_rando.jpg" no_graphic="lock.png" x=280 y=620 height=270 folder="cg" ]
[cg_image_button graphic="sizunami_kaigan.jpg" no_graphic="lock.png" x=1180 y=620 height=270 folder="cg" ]

[glink text="牧之原乗馬クラブ" x=200 y=475 width=500 size=50]
[glink text="森木農園" x=1100 y=475 width=500 size=50]

[glink text="　ふるさと体験の森　　ゆうゆうらんど" x=200 y=895 width=500 size=50]
[glink text="静波海岸" x=1100 y=895 width=500 size=50]

[button name="hover" graphic="button_down.png" target="*nextpage" x=935 y=880]
@jump target ="*common"

*page_2
[cm]
;画面左上の「Back」ボタン
[button name="hover" graphic="button_back.png" target="*backgame" x=50 y=40]
[button name="hover" graphic="button_up.png" target="*backpage" x=935 y=200]

[cg_image_button graphic="sa_nobori.jpg" no_graphic="lock.png" x=280 y=200 height=270 folder="cg" ]
[cg_image_button graphic="sizuoka_kuukou.jpg" no_graphic="lock.png" x=1180 y=200 height=270 folder="cg" ]

[glink text="牧之原SA上り" x=200 y=475 width=500 size=50]
[glink text="富士山静岡空港" x=1100 y=475 width=500 size=50]

@jump target ="*common"

*common


*endpage



[s]




;ゲームに復帰
*backgame
[cm]
[awakegame]


*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks

*nextpage
[emb exp="tf.page++;"]
 @jump target="*cgpage"


*backpage
 [emb exp="tf.page--;"]
 @jump target="*cgpage"

*clickcg
[cm]

[layopt layer=1 visible=false]

[eval exp="tf.cg_index=0"]

*cg_next_image

[image storage=&tf.selected_cg_image[tf.cg_index] folder="cg"  ]
[l]
[bg storage="cg.png" time=100]

[eval exp="tf.cg_index++"]

@jump target="cg_next_image" cond="tf.selected_cg_image.length > tf.cg_index"


@jump  target=*cgpage
[s]

*no_image

@jump  target=*cgpage

