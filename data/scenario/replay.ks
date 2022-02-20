;=========================================
; 回想モード　画面作成
;=========================================
; *start

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

;   コールスタックのクリア
	[clearstack]

    [a_s_off]
	[cm]

[playbgm storage="healing16.mp3"]
[bg storage="replay.png" time=100]
[layopt layer=1 visible=true]
[eval exp="tf.flag_replay=false"] 
[mask_off]
;ページ名表示
; [button graphic="label_recollection.png" x=700 y=50]
; [image name="label_replay" layer=1 left=0 top=0 storage="config/label_recollection.png" folder="image" ]

[iscript]
    
    tf.page = 0;
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]



*replaypage
[cm]
;画面左上の「Back」ボタン
[button name="hover" graphic="button_back.png" target="*backtitle" x=50 y=40 fix=true]
[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*replayview

@jump target=&tf.target_page

*page_0
;glink
[cm]
[replay_glink name="kodutumiyama_kouen" text="1.小堤山公園" x=40 y=360 ]
[replay_glink name="toukouzi" text="2.東光寺の長藤"  x=980 y=360 ]

[replay_glink name="koumare_onsen" text="3.さがら子生れ温泉会館"  x=40 y=530 ]
[replay_glink name="sa_kudari" text="4.牧之原SA下り"  x=980 y=530 ]

[replay_glink name="makinohara_zyouba_kurabu" text="5.牧之原乗馬クラブ"  x=40 y=700 ]
[replay_glink name="moriki_nouen" text="6.森木農園"  x=980 y=700 ]


[button name="hover" graphic="button_down.png" target="*nextpage" x=890 y=880]

@jump target ="*common"

*page_1
[cm]
[replay_glink name="yuuyuu_rando" text="7.ふるさと体験の森　ゆうゆうらんど"  x=40 y=360 ]
[replay_glink name="sizunami_kaigan" text="8.静波海岸"  x=980 y=360 ]

[replay_glink name="sa_nobori" text="9.牧之原SA上り"  x=40 y=530 ]
[replay_glink name="owarihe" text="10.終わりへ" x=980 y=530 ]
[iscript]
tf.replay_n="Normal End(静岡空港)"
tf.replay_t="True End(小堤山公園)"
[endscript]
[replay_glink name="normal_end" text=&tf.replay_n  x=40 y=700 ]
[replay_glink name="true_end" text=&tf.replay_t  x=980 y=700 ]
[button name="hover" graphic="button_up.png" target="*backpage" x=890 y=200]
@jump target ="*common"

*common

[s]

*backtitle
[cm]
[freeimage layer=1]
[jump storage="title.ks"]

*nextpage
[emb exp="tf.page++;"]
@jump target="*replaypage"


*backpage
[emb exp="tf.page--;"]
@jump target="*replaypage"

*clickcg
[cm]

[iscript]
    tf.flag_replay = true;
[endscript]

; [free layer=1 name="label_replay"]

@jump storage=&tf.selected_replay_obj.storage target=&tf.selected_replay_obj.target

[s]

*no_image

@jump  target=*replaypage


