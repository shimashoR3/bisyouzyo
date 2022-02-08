
*start

;背景変更マクロ　storage と time を指定する
[macro name="back"]

;@layopt layer=message0 visible=false
[backlay]
[image layer=base page=back storage=%storage]
[trans layer="base" method=%method|crossfade children=false time=%time|2000]
[wt]
;@layopt layer=message0 visible=true

[endmacro]


;キャラクターを表示、そして設定
[macro name="charaset"]

[backlay]
[image storage=%storage left=%left|0 top=%top|0 layer=%layer page=back visible=true  ]
[trans time=%time|1]
@wt

[endmacro]

[macro name="chararemove"]

[freeimage layer = %layer]

[endmacro]

;;;;;;;;;;;;セーブ関係

;save情報を取得、ptextを継承する

[macro name="saveinfo"]

[iscript]

tf.savetext = "";

tf.array_save = TG.menu.getSaveData().data;
tf.data = tf.array_save[mp.index];

tf.title = tf.data.title;
tf.save_date = tf.data.save_date;

tf.savetext = "<span style='font-size:10px'>"+tf.save_date+"</span><br />"+tf.title;

[endscript]

[ptext * text=&tf.savetext ]


[endmacro]

[macro name="setsave"]

    [iscript]

        TG.menu.doSave(mp.index);
        
    [endscript]

[endmacro]

[macro name="loading"]

    [iscript]

        TG.menu.loadGame(mp.index);

    [endscript]

[endmacro]


;/////////////拡張 CGモードなどを利用するための設定

[iscript]
	
	if(sf.cg_view){
    }else{
    	sf.cg_view = {};
    }
	
	if(sf.replay_view){
    }else{
    	sf.replay_view = {};
    }
	
	
[endscript]


;CGモードのボタンを表示するためのマクロ
[macro name="cg_image_button"]
	
	[iscript]
		
		mp.graphic = mp.graphic.split(',');
		mp.tmp_graphic = mp.graphic.concat();
	/*
		tf.is_cg_open = false;
		if(sf.cg_view[mp.graphic[0]]){
			tf.is_cg_open = true;
		}
	*/	
        if(typeof mp.thumb !="undefined"){
            mp.tmp_graphic[0] = mp.thumb;
        }
	[endscript]
	
	;渡された値を元に、CG状態を確認していく
	[if exp="sf.cg_view[mp.graphic[0]]"]
		[button graphic=&mp.tmp_graphic[0] x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="mp.graphic" exp="tf.selected_cg_image = preexp" storage="cg.ks" target="*clickcg" folder="cg" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="cg.ks" target="*no_image" folder="cg" ]
	[endif]
[endmacro]

;CGが閲覧された場合、CGモードで表示できるようにする
[macro name="cg" ]

    [iscript]

        sf.cg_view[mp.storage] = "on";
    
    [endscript]

[endmacro]


;回想モードのglinkを表示するためのマクロ
[macro name="replay_glink"]
; 渡された値を元に、CG状態を確認していく
	[if exp="sf.replay_view[mp.name]"]
		[glink color="replay_glink" name=&mp.name text=&mp.text x=&mp.x y=&mp.y size=45 preexp="sf.replay_view[mp.name]" exp="tf.selected_replay_obj = preexp" storage="replay.ks" target="*clickcg"]
	[else]
		[glink color="replay_glink" name=&mp.name text="???" x=&mp.x y=&mp.y size=45 storage="replay.ks" target="*replaypage"]
	[endif]
[endmacro]

;回想モードの準備
[macro name="set_replay"]
    [if exp="tf.flag_replay !=true"]
; 通ったことを記録
        [iscript]
            sf.replay_view[mp.name] = {storage:mp.storage, target:mp.target};
        [endscript]
    [else]
; 回想モード時
;        [eval exp="tf.flag_replay=true"] 
        [mask time=1000]
        [clearfix]
        [button graphic="button_replay.png" name="menu_button,end_replay" x=1280 y=10 fix=true storage="tyrano.ks"  target="*end_replay"]
        [setting]
; [playbgm storage="beautiful_cityscape.mp3"]
    [endif]
[endmacro]

;リプレイの終了
[macro name="end_replay"]

    [if exp="tf.flag_replay == true"]
;        [eval exp="tf.flag_replay=false"]    
        @layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
        [hidemenubutton]
        [playbgm storage="healing16.mp3"]
        [stopse]
        @jump storage="replay.ks" 
        
    [endif]

[endmacro]

;マクロの定義

; シナリオ進行用の設定
[macro name="setting"]
;メッセージウィンドウの表示
@layopt layer=message0 visible=true
[layopt layer=0 visible=true]
[layopt layer=1 visible=true]


;固定ボタン
[button name="role_button,menu_button,hover" role="menu" graphic="button_menu.png" x=1600 y=10]
[button name="role_button" role="skip" graphic="button_skip.png" enterimg="button_skip2.png" x=1350 y=760]
[button name="role_button" role="auto" graphic="button_auto.png" enterimg="button_auto2.png" x=1500 y=760]
[button name="role_button" role="backlog" graphic="button_log.png" enterimg="button_log2.png" x=1650 y=760]
[button name="role_button" role="window" graphic="button_hide.png" x=1780 y=820]

[start_keyconfig]

[endmacro]

;主人公名(フレーム左上に表示するもの)
[macro name="pname"]
#&sf.name
[endmacro]

;主人公（上記以外のもの）
[macro name="player"]
[emb exp="sf.name"]
[endmacro]

;改行／バックログ反映
[macro name="r2"]
[r]
[iscript]
tf.system.backlog.push("");
[endscript]
[endmacro]



;表示
[macro name="s_maki"]
[chara_show name="maki" top=130 left=&mp.left  width="746" height="1064"  reflect=&mp.reflect time=&mp.time zindex=&mp.zindex]
[endmacro]

[macro name="s_douryou"]
[chara_show name="douryou" top=130 left=&mp.left width=&mp.width height=&mp.height reflect=&mp.reflect time=&mp.time]
[endmacro]

[macro name="s_syatyou"]
[chara_show name="syatyou" top=234 left=&mp.left width="326" height="979"  reflect=&mp.reflect time=&mp.time]
[endmacro]

;非表示
[macro name="h_maki"]
[chara_hide name="maki" time=&mp.time]
[endmacro]

[macro name="h_douryou"]
[chara_hide name="douryou" time=&mp.time]
[endmacro]

; エスケープ処理
; [macro name="escape_name"]
; [iscript]
; function escapeHTML(string){
;   return string.replace(/&/g, '&amp;')
;     .replace(/</g, '&lt;')
;     .replace(/>/g, '&gt;')
;     .replace(/"/g, '&quot;')
;     .replace(/'/g, '&#x27');
; }
; tf.escaped_name=sf.name;
; sf.name=escapeHTML(sf.name);
; [endscript]
; [endmacro]


;オート、スキップをオフ
[macro name="a_s_off"]
[autostop]
[skipstop]
[endmacro]



*end_replay
; [mask time=1000]
[end_replay]

[return]



