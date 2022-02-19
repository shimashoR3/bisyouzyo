; 一番最初の場面（共通ルート）

*start

[clearstack]
[resetfont]
[cm ]
[clearfix]
[playbgm storage="cyber33.mp3"]
[nolog]

;注意書き表示部分
[bg storage="tyuuigaki.png" time=1000 wait=true]
[bg storage="black.png" time=500 wait=true]
; 背景画像の設定
[bg storage="room.jpg" time="1000"]

;メニューボタンの表示
; @showmenubutton

[setting]

; 話しているキャラクター以外を自動で暗くする
;[chara_config talk_focus="brightness"]

;名前入力開始
*name_input

#
名前を入力して下さい。（1～9文字）
; 名前の入力
[edit name="sf.name" left="650" top="400" width="700" height="100" size="70"]
; OKのボタン
[button name="menu_button,hover" graphic="button_ok.png" enterimg="button_ok.png" target="*name_commit" x=850 y=550 clickse="se_tap.mp3"]
[s]

*name_commit

[commit]
[cm]

; エスケープ処理
; [escape_name]


;文字数制限
[if exp="sf.name.length==0"]
文字が入力されていません。[p]
[jump target=*name_input]
; [elsif exp="sf.name!==tf.escaped_name"]
; ;入力したものとエスケープ後のものを比較
; 使用できない文字が含まれています。[p]
; [jump target=*name_input]
[elsif exp="sf.name.length>9"]
9文字以内で入力して下さい。[p]
[jump target=*name_input]

[endif]


; #
; 名前を[player]に設定しました。[r2]
; ゲームをお楽しみください。[p]


[endnolog]
;バックログの初期化
[iscript]
tf.system.backlog=[];
[endscript]

[iscript]
tf.room=1
[endscript]
[jump storage="scene1.ks"]