
[cm]
[clearfix]
[layopt layer=message visible=false]
[a_s_off]



@clearstack
[freeimage layer=0]
[freeimage layer=1]
; [bg storage="black.png" time=300]
@bg storage ="title.png" time=10
[stopbgm]
[playbgm storage="healing16.mp3"]
;クレジット用
[eval exp="tf.from=0"]

; *start 

[button x=650 y=250 name="menu_button,hover" graphic="title_start.png"   target="gamestart" clickse="se_tap.mp3"]
[button x=650 y=390 name="menu_button,hover" graphic="title_load.png" role="load" clickse="se_tap.mp3"]
[button x=650 y=530 name="menu_button,hover" graphic="title_cg.png" role="sleepgame" storage="cg.ks" clickse="se_tap.mp3"]
[button x=650 y=670 name="menu_button,hover" graphic="title_replay.png"  storage="replay.ks" clickse="se_tap.mp3"]
[button x=650 y=810 name="menu_button,hover" graphic="title_config.png" role="sleepgame" storage="config.ks" clickse="se_tap.mp3"]
[button x=650 y=950 name="menu_button,hover" graphic="title_credit.png" storage="credit.ks" clickse="se_tap.mp3"]
[button x=1357 y=956 name="menu_button,hover" graphic="title_license.png" width="496" height="110" role="sleepgame" storage="license.ks" clickse="se_tap.mp3"] 
[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene0.ks"


