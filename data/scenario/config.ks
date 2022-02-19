;=========================================
; コンフィグ モード　画面作成
;=========================================

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

	[iscript]

	TG.config.autoRecordLabel = "true"; // ラベル通過記録を有効に

	tf.current_bgm_vol = parseInt(TG.config.defaultBgmVolume); // BGM音量
	tf.current_se_vol = parseInt(TG.config.defaultSeVolume); // SE音量
	
	tf.current_ch_speed = parseInt(TG.config.chSpeed); // テキスト表示速度
	tf.current_auto_speed = parseInt(TG.config.autoSpeed); // オート時のテキスト表示速度
	
	tf.text_skip ="ON"; // 未読スキップ
	if(TG.config.unReadTextSkip != "true"){
		tf.text_skip ="OFF";
	}

	tf.user_setting = TG.config.alreadyReadTextColor;
	if(tf.user_setting != 'default'){
		TG.config.alreadyReadTextColor = 'default'; // 一時的に既読テキストの文字色を変更しないようにしています
	}

	[endscript]

	[iscript]

	/* 画像類のパス */
 //   tf.img_path = '../image/config/';

	/* 画像類のパス（ボタン） */
//	tf.btn_path_off = tf.img_path + 'c_btn.gif';
//	tf.btn_path_on  = tf.img_path + 'c_set.png';

	// ボタン画像の幅と高さ
	//tf.btn_w  = 46; // 幅
	//tf.btn_h = 46; // 高さ

	// ボタンを表示する座標（tf.config_y_ch[0]とtf.config_y_auto[0]は未使用）
	//tf.config_x       = [1040, 400,　454, 508, 562, 616, 670, 724, 778, 832, 886]; // X座標（共通）

	//tf.config_y_bgm   = 190; // BGMのY座標
	//tf.config_y_se    = 250; // SEのY座標
	//tf.config_y_ch    = 325; // テキスト速度のY座標
	//tf.config_y_auto  = 385; // オート速度のY座標

	// 上記の配列変数の添字を格納しておく変数。選択した音量や速度に対応。
	//tf.config_num_bgm;  // BGM
	//tf.config_num_se;   // SE
	//tf.config_num_ch;   // テキスト速度
	//tf.config_num_auto; // オート速度

	// テキスト速度のサンプルテキストとして表示する文字列（お好みに合わせて変更してください）
	tf.text_sample = 'テストメッセージです。このスピードでテキストが表示されます。';

	// サンプルテキストを表示しておく時間（テキストを表示し終わってから700ミリ秒で消去させています）
	tf.text_sample_speed;

	// 既読スキップの画像ファイル名を格納しておく変数
	tf.img_unread_skip;

	//既読スキップのオンオフを判別するための変数
	tf.unread_skip_check;

	[endscript]

[cm]

;	コンフィグ用の背景を読み込んでトランジション
[bg storage="config.jpg" time="100"]

;画面左上の「Back」ボタン
[button name="hover" graphic="button_back.png" target="*backgame" x=50 y=40 fix=true]

; 全画面モードにする
[button name="menu_button,hover" graphic="config_fullscreen.png" target="*fullscreen" x=1188 y=675 width="466" height="103" fix=true]

; [jump target="*config_page"]


; *config_page
;------------------------------------------------------------------------------------------------------
; BGM音量(0~100)
;------------------------------------------------------------------------------------------------------
	[slider name="bgm_vol" x=600 y=330 width=800 step=10 target="*vol_bgm_change"  var="bgm_vol_val" exp="tf.current_bgm_vol = bgm_vol_val"  tip_width=100 tip_height=100 tip_radius=30 tip_text_size=50 tip_margin=40]

;------------------------------------------------------------------------------------------------------
; SE音量(0~100)
;------------------------------------------------------------------------------------------------------
	[slider name="se_vol" x=600 y=430 width=800 step=10 target="*vol_se_change"  var="se_vol_val" exp="tf.current_se_vol = se_vol_val"  tip_width=100 tip_height=100 tip_radius=30 tip_text_size=50 tip_margin=40]
;------------------------------------------------------------------------------------------------------
; テキスト速度
;------------------------------------------------------------------------------------------------------
	[slider name="ch_speed" x=600 y=530 width=800 step=10 target="*ch_speed_change"  var="ch_speed_val" exp="tf.set_ch_speed = ch_speed_val"  tip_width=100 tip_height=100 tip_radius=30 tip_text_size=50 tip_margin=40]

;------------------------------------------------------------------------------------------------------
; オート速度
;------------------------------------------------------------------------------------------------------
	[slider name="auto_speed" x=600 y=620 width=800 step=10 target="*auto_speed_change"  var="auto_speed_val" exp="tf.set_auto_speed = auto_speed_val"  tip_width=100 tip_height=100 tip_radius=30 tip_text_size=50 tip_margin=40]

;------------------------------------------------------------------------------------------------------
; 未読スキップ
;------------------------------------------------------------------------------------------------------
	[switch name="unread_skip" x=720 y=720 target="*unread_skip" var="unread_skip_check"]
	[button name="hover" graphic="config_help.png" fix=true x=450 y=685 target="*help" folder="image"]


; ;	未読スキップ-OFF
; [button name="unread_off" fix="true" target="*skip_off" graphic="&tf.btn_path_off" width="170" height="45" x="400" y="470"]

; ;	未読スキップ-ON
; [button name="unread_on"  fix="true" target="*skip_on"  graphic="&tf.btn_path_off" width="170" height="45" x="580" y="470"]

;------------------------------------------------------------------------------------------------------
; コンフィグ起動時の画面更新
;------------------------------------------------------------------------------------------------------

;  [iscript]

; $(".bgmvol_"+tf.current_bgm_vol).attr("src","data/image/config/c_set.png");

; $(".sevol_"+tf.current_se_vol).attr("src","data/image/config/c_set.png");

; $(".ch_"+tf.current_ch_speed).attr("src","data/image/config/c_set.png");

; $(".auto_"+tf.current_auto_speed).attr("src","data/image/config/c_set.png");

; if(tf.text_skip == 'OFF'){
; 	$(".unread_off").attr("src","./data/image/config/c_skipoff.png");
; 	}else{
; 		$(".unread_on").attr("src","./data/image/config/c_skipon.png");
; 		}

;  [endscript]

	[s]

;--------------------------------------------------------------------------------
; コンフィグモードの終了
;--------------------------------------------------------------------------------
*backgame
[cm]

	[iscript]
	TG.config.alreadyReadTextColor = tf.user_setting; // 既読テキストの文字色を復帰
	[endscript]

;	テキスト速度のサンプル表示に使用していたメッセージレイヤを非表示に
	[layopt layer="message1" visible="false"]

;	fixボタンをクリア
	[clearfix]

;	キーコンフィグの有効化
	[start_keyconfig]

;	コールスタックのクリア
	[clearstack]

;   BGMの停止
; [stopbgm]

;	ゲーム復帰
	[awakegame]

;================================================================================

; ボタンクリック時の処理

;================================================================================
;--------------------------------------------------------------------------------
; BGM音量
;--------------------------------------------------------------------------------
*vol_bgm_change

[iscript]
	$(".bgmvol").attr("src","data/image/config/c_btn.png");
	$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/image/config/c_set.png");
[endscript]

[bgmopt volume="&tf.current_bgm_vol"]

[return]

;--------------------------------------------------------------------------------
; SE音量
;--------------------------------------------------------------------------------
*vol_se_change

[iscript]
	$(".sevol").attr("src","data/image/config/c_btn.png");
	$(".sevol_"+tf.current_se_vol).attr("src","data/image/config/c_set.png");
[endscript]

[seopt volume="&tf.current_se_vol"]
[playse storage="se_tap.mp3"]
[return]

;---------------------------------------------------------------------------------
; テキスト速度
;--------------------------------------------------------------------------------
*ch_speed_change

	[iscript]

	$(".ch").attr("src","data/image/config/c_btn.png");
	$(".ch_"+tf.set_ch_speed).attr("src","data/image/config/c_set.png");
	tf.current_ch_speed = tf.set_ch_speed;
	
	[endscript]

	[configdelay speed="&tf.set_ch_speed"]

;	テキスト表示速度のサンプルに使用するメッセージレイヤの設定
	[position layer="message1" left="90" top="800" width="1800" height="100" margint="2" marginl="30" page="fore" visible="true" opacity="0"]
	[layopt layer="message1" visible="true"]
	[current layer="message1"]

;	サンプルテキストを表示する
	[emb exp="tf.text_sample"]

		[iscript]
		$(".current_span").css("color","#000000"); // サンプルテキストのフォントカラーを指定
		tf.system.backlog.pop(); // サンプルテキストを履歴から削除（nolog～endnologタグと同じです）
		[endscript]

;	待ち時間をテキスト速度とサンプルの文字数に対応（消えるのが早すぎるときは後ろの数字を好きなだけ増やそう）
	[eval exp="tf.text_sample_speed = tf.set_ch_speed * tf.text_sample.length + 700"]
	[wait time="&tf.text_sample_speed"]

	[er]
	[layopt layer="message1" visible="false"]

[return]

;--------------------------------------------------------------------------------
; オート速度
;--------------------------------------------------------------------------------
*auto_speed_change

	[iscript]

	$(".auto").attr("src","data/image/config/c_btn.png");
	$(".auto_"+tf.set_auto_speed).attr("src","data/image/config/c_set.png");

	[endscript]
	[autoconfig speed="&tf.set_auto_speed"]
	[configdelay speed="&tf.set_auto_speed"]

;	テキスト表示速度のサンプルに使用するメッセージレイヤの設定
	[position layer="message1" left="90" top="800" width="1800" height="100" margint="2" marginl="30" page="fore" visible="true" opacity="0"]
	[layopt layer="message1" visible="true"]
	[current layer="message1"]

;	サンプルテキストを表示する
	[emb exp="tf.text_sample"]

		[iscript]
		$(".current_span").css("color","#000000"); // サンプルテキストのフォントカラーを指定
		tf.system.backlog.pop(); // サンプルテキストを履歴から削除（nolog～endnologタグと同じです）
		[endscript]

;	待ち時間をテキスト速度とサンプルの文字数に対応（消えるのが早すぎるときは後ろの数字を好きなだけ増やそう）
	[eval exp="tf.text_sample_speed = tf.set_auto_speed * tf.text_sample.length + 700"]
	[wait time="&tf.text_sample_speed"]

	[er]
	[layopt layer="message1" visible="false"]

	[configdelay speed="&tf.set_ch_speed"]
[return]

;--------------------------------------------------------------------------------
; スキップ処理-OFF/ON
;--------------------------------------------------------------------------------
*unread_skip
	[iscript]
	tf.unread_skip_check=unread_skip_check;
	[endscript]
[if exp="tf.unread_skip_check===false"]
; 未読スキップオフ(既読のみスキップする)

	[iscript]
	$(".unread_off").attr("src","./data/image/config/c_skipoff.png");
	$(".unread_on").attr("src","./data/image/config/c_btn.gif");
	tf.text_skip = "OFF";
	[endscript]

	[config_record_label skip="false"]

[return]
[elsif exp="tf.unread_skip_check===true"]
;  未読スキップオン(未読もスキップにする)

	[iscript]
	$(".unread_off").attr("src","./data/image/config/c_btn.gif");
	$(".unread_on").attr("src","./data/image/config/c_skipon.png");
	tf.text_skip = "ON";
	[endscript]

	[config_record_label skip="true"]

[return]
[endif]
;================================================================================

; サブルーチン

;================================================================================
;--------------------------------------------------------------------------------

; BGM更新

;--------------------------------------------------------------------------------
; *icon_bgm

; 	[iscript]

; 	// 設定した音量によって色付き画像の表示・非表示を切替える

; 	$( ".bgm_img_0").css( "visibility", tf.config_num_bgm == 0 ? 'visible' : 'hidden' );
; 	$( ".bgm_img_1").css( "visibility", tf.config_num_bgm >  0 ? 'visible' : 'hidden' );
; 	$( ".bgm_img_2").css( "visibility", tf.config_num_bgm >  1 ? 'visible' : 'hidden' );
; 	$( ".bgm_img_3").css( "visibility", tf.config_num_bgm >  2 ? 'visible' : 'hidden' );
; 	$( ".bgm_img_4").css( "visibility", tf.config_num_bgm >  3 ? 'visible' : 'hidden' );
; 	$( ".bgm_img_5").css( "visibility", tf.config_num_bgm >  4 ? 'visible' : 'hidden' );
; 	$( ".bgm_img_6").css( "visibility", tf.config_num_bgm >  5 ? 'visible' : 'hidden' );
; 	$( ".bgm_img_7").css( "visibility", tf.config_num_bgm >  6 ? 'visible' : 'hidden' );
; 	$( ".bgm_img_8").css( "visibility", tf.config_num_bgm >  7 ? 'visible' : 'hidden' );
; 	$( ".bgm_img_9").css( "visibility", tf.config_num_bgm >  8 ? 'visible' : 'hidden' );
; 	$(".bgm_img_10").css( "visibility", tf.config_num_bgm >  9 ? 'visible' : 'hidden' );

; 	[endscript]

; [return]

;--------------------------------------------------------------------------------

; SE更新

;--------------------------------------------------------------------------------
; *icon_se

; 	[iscript]

; 	$(".se_img_0").css( "visibility", tf.config_num_se == 0 ? 'visible' : 'hidden');
; 	$(".se_img_1").css( "visibility", tf.config_num_se >  0 ? 'visible' : 'hidden');
; 	$(".se_img_2").css( "visibility", tf.config_num_se >  1 ? 'visible' : 'hidden');
; 	$(".se_img_3").css( "visibility", tf.config_num_se >  2 ? 'visible' : 'hidden');
; 	$(".se_img_4").css( "visibility", tf.config_num_se >  3 ? 'visible' : 'hidden');
; 	$(".se_img_5").css( "visibility", tf.config_num_se >  4 ? 'visible' : 'hidden');
; 	$(".se_img_6").css( "visibility", tf.config_num_se >  5 ? 'visible' : 'hidden');
; 	$(".se_img_7").css( "visibility", tf.config_num_se >  6 ? 'visible' : 'hidden');
; 	$(".se_img_8").css( "visibility", tf.config_num_se >  7 ? 'visible' : 'hidden');
; 	$(".se_img_9").css( "visibility", tf.config_num_se >  8 ? 'visible' : 'hidden');
; 	$(".se_img_10").css("visibility", tf.config_num_se >  9 ? 'visible' : 'hidden');

; 	[endscript]

; [return]

;--------------------------------------------------------------------------------

; テキスト速度更新

;--------------------------------------------------------------------------------
; *icon_ch

; 	[iscript]

; 	$(".ch_img_1").css( "visibility", tf.config_num_ch >= 0 ? 'visible' : 'hidden');
; 	$(".ch_img_2").css( "visibility", tf.config_num_ch >  0 ? 'visible' : 'hidden');
; 	$(".ch_img_3").css( "visibility", tf.config_num_ch >  1 ? 'visible' : 'hidden');
; 	$(".ch_img_4").css( "visibility", tf.config_num_ch >  2 ? 'visible' : 'hidden');
; 	$(".ch_img_5").css( "visibility", tf.config_num_ch >  3 ? 'visible' : 'hidden');
; 	$(".ch_img_6").css( "visibility", tf.config_num_ch >  4 ? 'visible' : 'hidden');
; 	$(".ch_img_7").css( "visibility", tf.config_num_ch >  5 ? 'visible' : 'hidden');
; 	$(".ch_img_8").css( "visibility", tf.config_num_ch >  6 ? 'visible' : 'hidden');
; 	$(".ch_img_9").css( "visibility", tf.config_num_ch >  7 ? 'visible' : 'hidden');
; 	$(".ch_img_10").css("visibility", tf.config_num_ch >  8 ? 'visible' : 'hidden');

; 	[endscript]

; [return]

;--------------------------------------------------------------------------------

; オート速度更新

;--------------------------------------------------------------------------------
; *icon_auto

; 	[iscript]

; 	$(".auto_img_1").css( "visibility", tf.config_num_auto >= 0 ? 'visible' : 'hidden');
; 	$(".auto_img_2").css( "visibility", tf.config_num_auto >  0 ? 'visible' : 'hidden');
; 	$(".auto_img_3").css( "visibility", tf.config_num_auto >  1 ? 'visible' : 'hidden');
; 	$(".auto_img_4").css( "visibility", tf.config_num_auto >  2 ? 'visible' : 'hidden');
; 	$(".auto_img_5").css( "visibility", tf.config_num_auto >  3 ? 'visible' : 'hidden');
; 	$(".auto_img_6").css( "visibility", tf.config_num_auto >  4 ? 'visible' : 'hidden');
; 	$(".auto_img_7").css( "visibility", tf.config_num_auto >  5 ? 'visible' : 'hidden');
; 	$(".auto_img_8").css( "visibility", tf.config_num_auto >  6 ? 'visible' : 'hidden');
; 	$(".auto_img_9").css( "visibility", tf.config_num_auto >  7 ? 'visible' : 'hidden');
; 	$(".auto_img_10").css("visibility", tf.config_num_auto >  8 ? 'visible' : 'hidden');

; 	[endscript]

; [return]

;================================================================================

; 画像の読み込み（コンフィグ画面の起動時のみコール）

;================================================================================
; *load_img

; [layopt layer="0" visible="true"]

; ;	BGM
; [image layer="0" name="bgm_img_0"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[0]"  y="&tf.config_y_bgm"]
; [image layer="0" name="bgm_img_1"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[1]"  y="&tf.config_y_bgm"]
; [image layer="0" name="bgm_img_2"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[2]"  y="&tf.config_y_bgm"]
; [image layer="0" name="bgm_img_3"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[3]"  y="&tf.config_y_bgm"]
; [image layer="0" name="bgm_img_4"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[4]"  y="&tf.config_y_bgm"]
; [image layer="0" name="bgm_img_5"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[5]"  y="&tf.config_y_bgm"]
; [image layer="0" name="bgm_img_6"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[6]"  y="&tf.config_y_bgm"]
; [image layer="0" name="bgm_img_7"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[7]"  y="&tf.config_y_bgm"]
; [image layer="0" name="bgm_img_8"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[8]"  y="&tf.config_y_bgm"]
; [image layer="0" name="bgm_img_9"  storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[9]"  y="&tf.config_y_bgm"]
; [image layer="0" name="bgm_img_10" storage="&tf.img_path + 'set1.png'"  x="&tf.config_x[10]" y="&tf.config_y_bgm"]

; ;	SE
; [image layer="0" name="se_img_0"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[0]"  y="&tf.config_y_se"]
; [image layer="0" name="se_img_1"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[1]"  y="&tf.config_y_se"]
; [image layer="0" name="se_img_2"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[2]"  y="&tf.config_y_se"]
; [image layer="0" name="se_img_3"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[3]"  y="&tf.config_y_se"]
; [image layer="0" name="se_img_4"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[4]"  y="&tf.config_y_se"]
; [image layer="0" name="se_img_5"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[5]"  y="&tf.config_y_se"]
; [image layer="0" name="se_img_6"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[6]"  y="&tf.config_y_se"]
; [image layer="0" name="se_img_7"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[7]"  y="&tf.config_y_se"]
; [image layer="0" name="se_img_8"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[8]"  y="&tf.config_y_se"]
; [image layer="0" name="se_img_9"  storage="&tf.img_path + 'set2.png'" x="&tf.config_x[9]"  y="&tf.config_y_se"]
; [image layer="0" name="se_img_10" storage="&tf.img_path + 'set2.png'" x="&tf.config_x[10]" y="&tf.config_y_se"]

; ;	テキスト速度
; [image layer="0" name="ch_img_1"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[1]"  y="&tf.config_y_ch"]
; [image layer="0" name="ch_img_2"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[2]"  y="&tf.config_y_ch"]
; [image layer="0" name="ch_img_3"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[3]"  y="&tf.config_y_ch"]
; [image layer="0" name="ch_img_4"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[4]"  y="&tf.config_y_ch"]
; [image layer="0" name="ch_img_5"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[5]"  y="&tf.config_y_ch"]
; [image layer="0" name="ch_img_6"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[6]"  y="&tf.config_y_ch"]
; [image layer="0" name="ch_img_7"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[7]"  y="&tf.config_y_ch"]
; [image layer="0" name="ch_img_8"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[8]"  y="&tf.config_y_ch"]
; [image layer="0" name="ch_img_9"  storage="&tf.img_path + 'set1.png'" x="&tf.config_x[9]"  y="&tf.config_y_ch"]
; [image layer="0" name="ch_img_10" storage="&tf.img_path + 'set1.png'" x="&tf.config_x[10]" y="&tf.config_y_ch"]

; ;	オート速度
; [image layer="0" name="auto_img_1"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[1]"  y="&tf.config_y_auto"]
; [image layer="0" name="auto_img_2"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[2]"  y="&tf.config_y_auto"]
; [image layer="0" name="auto_img_3"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[3]"  y="&tf.config_y_auto"]
; [image layer="0" name="auto_img_4"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[4]"  y="&tf.config_y_auto"]
; [image layer="0" name="auto_img_5"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[5]"  y="&tf.config_y_auto"]
; [image layer="0" name="auto_img_6"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[6]"  y="&tf.config_y_auto"]
; [image layer="0" name="auto_img_7"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[7]"  y="&tf.config_y_auto"]
; [image layer="0" name="auto_img_8"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[8]"  y="&tf.config_y_auto"]
; [image layer="0" name="auto_img_9"  storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[9]"  y="&tf.config_y_auto"]
; [image layer="0" name="auto_img_10" storage="&tf.img_path + 'set2.png'"  x="&tf.config_x[10]" y="&tf.config_y_auto"]

; [return]
*help
[dialog type="alert" text="スキップするときに未読部分をスキップするか設定します。オフの場合は既読部分のみスキップします。"]
[return]

*fullscreen
[screen_full]
[return]

[s]
