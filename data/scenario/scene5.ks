;牧之原乗馬クラブ前
[set_replay name="makinohara_zyouba_kurabu" storage="scene5.ks"]
[bg storage="room.jpg"]
[playbgm storage="beautiful_cityscape.mp3"]
[mask_off]

; ザザッ
; （記憶のフラッシュバック）
[mask graphic="noise.gif" time=150]
[playse storage="noise.mp3" volume=50]
[mask_off]

…。[p]

[pname]
「支度しよ」[p]
[bg storage="genkan.jpg" time="100"]
#
今日はデート（仮）当日。[r2]
[playse storage="door_open.mp3"]
[wait time="300"]
[bg storage="car.jpg"]
支度を終えて車に乗り込み、約束の公園へ向かう。[p]
（ちなみにこの車は研修期間中だけ借りている社用車だが。）[p]

[bg storage="kodutumiyama_kouen.jpg"]
公園付近の駐車場に車を停めた。[p]

[pname]
「少し早く来すぎたかな」[p]
#
約束の時間まではまだ３０分ほどあった。[p]



[pname]
「任せてって言ってたけど今日はどこに行くんだろう」[p]
#
[s_maki]
#マキさん
「今日はお馬さんを見に行きます」[p]

[pname]
「ｯ！！！」[p]
#
なん…だと…。[p]

この僕が二回も背後を取られるとは…[p]

[pname]
「お、おはようマキさん」[p]

#マキさん
「おはよ～。　今日も早いね。」[p]

[pname]
「ま、まぁ。マキさんこそ」[p]

#マキさん
「まぁね～。誘ったの私だし。じゃあ早く集まれたし、早速行こうか」[p]

[pname]
「今日は何処へ？」[p]

#マキさん
[playse storage="zyan.mp3"]
「フッ！牧之原乗馬クラブさ！」[p]
[mask time=1000]
;牧之原乗馬クラブ------------------------------------------------------------------------
[playbgm storage="bokuzyou.mp3"]
[bg storage="makinohara_zyouba_kurabu1.jpg" time=0]
[mask_off]


#
車に乗った僕らは、マキさんの案内で[r2]
牧之原乗馬クラブ？というところにやってきたのだった。[p]

道中で聞いたのだが、ここでは乗馬体験ができるらしい。[p]

[pname]
すっご！広！[p]

#マキさん
でしょ！[p]

#
[bg storage="makinohara_zyouba_kurabu2.jpg"]
[playse storage="uma_cry.mp3"]
[wait time=500]
;馬の鳴き声
あ！みてみてあそこにお馬さんがいる！！[p]

[pname]
「ホントだ！すっげ！でっけぇ！」[p]
#
興奮のあまり僕はおかしなテンションになってしまっていた。[r2]
だが、こんな近くで馬を見られる経験、人生でそうそうないから当然だ。[p]

#マキさん
もう楽しそうだね。既にホースセラピー効果は抜群のようだね！[p]

[pname]
「ほーすせらぴー？」[p]

#マキさん
そう！ホースセラピー！[r2]
なんでも乗馬で心も体も癒されて健康になるみたいだよ。[p]

[pname]
「それはすごいね。」[p]

#マキさん
シェイプアップの効果もあるみたいだから、[r2]
いい運動にもなるんだよ。[p]

[pname]
「いいことづくめじゃん。」[p]

#マキさん
YES！じゃあ、行こっか。[p]
#
僕たちは、受付へ向かった。[p]
いろいろなコースがあったが、馬に乗るのは僕も初めてだから[r2]
「引き馬コース』にすることにした。[p]
このコースで乗れる馬はポニーらしい。[p]
[mask time=1000]
; [chara_move name="maki" left=2500  time=0]
[h_maki  time=0]
; [image storage="../bgimage/makinohara_zyouba_kurabu3.jpg" top=-400 layer="0" time=0 zindex=1]
[bg storage="makinohara_zyouba_kurabu3.jpg" time=0]
[chara_show name="staff_zyouba"]
[mask_off ]
;カメラ移動（乗ったことがわかるような。視線が上に上がる）


馬に乗るのは緊張したが、[r2]
スタッフが手伝ってくれたので簡単に乗ることができた。[p]
[playse storage="standup.mp3"]
; [camera y=300]

僕を乗せたポニーは、スタッフに引かれて進みだす。[p]
; 馬の足音
[pname]
「うわぁ」[p]

#スタッフ
「はいっ。じゃあそのまま姿勢をキープしてくださいね。」[p]
#
初めは少し怖かったが、慣れたらだんだん楽しくなってきた。[p]

周りを見る余裕もでてきた。[r2]
[s_maki]
ふと、少し離れたところにいるマキさんの存在に気付く。[p]

;カメラで画面外のマキさん
; [camera x=1000]


マキさんは笑顔でこちらを見てくれている。[p]
その笑顔に応えるように僕は手を振った。[p]

#スタッフ
「お連れ様ですか？」[p]

[pname]
「えぇ。まぁ。」[p]

僕が手を振る方角にスタッフが視線を送る[p]

#スタッフ
…。[p]
; [camera x=0]
[pname]
何か？[p]

#スタッフ
「あ、い、いえ。何でもございません。」[p]

気が付くと馬は止まっていた。[p]
; [reset_camera]
#スタッフ
「お疲れさまでした。これで引き馬体験は終了です。」[p]



[pname]
「結構楽しかったなぁ。」[p]

#
それにしてもさっきのスタッフの人、[r2]
マキさんと僕を交互に見て動揺してたな…。[p]
あんな可愛い子は僕には相応しくないってか？あぁん？…。[p]
いや、あんな髪色じゃ目立つか。さすがに。[p]

;場面切り替え
[mask  time=1000]
[chara_hide name="staff_zyouba" time=0]
[h_maki time=0]
[s_maki time=0]
[mask_off]

#マキさん
「お疲れ様～。」[p]
[pname]
「うん。いい経験ができてよかったよ。」[p]

#マキさん
「[player]君すごく楽しそうだったもんね。[r2]
ところで、途中こっち見てスタッフと何話してたの？」[p]
[pname]
「い、いや何でもないよ。ただの世間話さ。」[p]
#マキさん
「そう？[p]
あ、ちょっと聞いてよ　あそこにいる「プティ」って子のしぐさがね～[r2]
もぉ～めちゃくちゃかわいくてね！それでねそれでね…」[p]
#
…。[p]

．．．可愛い。[p]

僕たちはたわいもない話しながら[r2]
この乗馬クラブを後にした。[p]

[mask time=1000]
[h_maki time=0]
[bg storage="car.jpg" time=0]
[playbgm storage="beautiful_cityscape.mp3"]
[mask_off]
;牧之原乗馬クラブ後------------------------------------------------------------------
#
【車内にて】[p]

[pname]
「いや～すごかったね馬[r2]
初めてなんだが。あんな近くで見たの。」[p]

#マキさん
「おっきかったね～」[p]
#
気づけば時刻は15時に差し掛かろうとしていた。[r2]
そういえば今日は…[p]

[pname]
「ごめんマキさん。ちょっとだけ寄り道していい？」[p]

#マキさん
「いいよぉ～どこ行くの？」[p]

[pname]
「ちょっと本を買いに。」[p]

#マキさん
「ほう。君は書を嗜むのかね。」[p]

[pname]
「なんそのキャラ。」[p]


#マキさん
「どんなの読むの？」[p]


[pname]
「…ラノベ。とか」[p]


#マキさん
「へ～。」[p]


[pname]
「えーと、ここらへんに本屋があったはず…。」[p]

#マキさん
「もう一本前の道だよ」[p]

[pname]
「あれ？通りすぎた？」[p]

#マキさん
「ええ。それはもう華麗に。」[p]


[pname]
「教えてよ…」[p]


#
それから二三回道に迷い、なんやかんやで本屋についた。[p]


[pname]
「じゃ、ちょっと行ってくるね。君は？」[p]


#マキさん
「私は大丈夫」[p]

[pname]
「了解。すぐ戻るから。」[p]


#マキさん
「はーい」[p]
#
[mask  time=1000]
[h_maki]
[bg storage="honya.jpg"]
[mask_off]
#
【本屋店内】[p]
[playse storage="gaya1.mp3" loop="true"]
#
がやがや[p]

[pname]
「えーっと…お、あったあった。これと、これと…あと、これーは…」[p]

; 集中線+フレーズ2（音）＋本の画像
[image storage="book.png" layer=0 time=500]
[playse storage="phrase02_2.mp3" buf=1]

[font size=70]
#
目指せシナリオライター[p]
[resetfont]
[wait time=300]


[pname]
「........いらないか。」[p]

[mask time=1000]
[freeimage layer=0 name="book.png"]
; ーーーーーーーーーーーーーーーーーーーーーーーーーー
[stopse]
[bg storage="car.jpg" time=0]
[mask_off]
#
#マキさん
「おかえり～」[p]


[pname]
「お待たせしました」[p]


#マキさん
「いいよぉ～。それよりも結構買ってきたね。」[p]
[pname]
「まぁ、好きですから。」[p]

#マキさん
「ね。どんなの買ったか見せてよ。」[p]

[pname]
「え！？...えーと…あれだよあれ…あのー、[r2]
そう！六法全書みたいなやつ！[p]
結構難しいし？みてもつまんないんじゃないかな！」[p]

#マキさん
「いや、大きさ的にちゃうやろがい。」[p]

[pname]
「なんで急に関西弁やねん」[p]


#マキさん
「君もやろて」[p]

「ま、いいよ。詮索はしないでおこうか。[r2]
君のその必死さ。大体察しがつくよ」[p]

[pname]
「ははは…」[p]
#
あれ、変な誤解されてね？[p]


そのあとまた、何気ない話を二人でしながら帰った。[p]



; \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
[mask time=1000]
[bg storage="kodutumiyama_kouen.jpg"]
[s_maki]
[mask_off]

[pname]
「えーっと、ほんとにここでいいの？」[p]


#マキさん
「うん、ありがとね」[p]

#
僕は小堤山公園にて彼女を降ろした。[r2]
どうやら彼女の住む家は車じゃ入り辛い場所に立ってるらしい。[p]


[pname]
「うん、じゃあ気を付けてね」[p]

#マキさん
「君もね。」[p]
#
[playse storage="kieru.mp3"]
[h_maki]
[bg storage="car.jpg"]


軽く頷き再び僕は車のペダルに足をかける[p]


あ、そうだ。[p]


[bg storage="kodutumiyama_kouen.jpg"]
[pname]
「マキさん！…て、あれ？」[p]

#
もういない。[r2]
子生まれ温泉の時といい帰るスピードがとんでもなく早いな…。[p]

[pname]
「連絡先…聞いとけばよかった。」[p]

#
いや、それはきもいか？[p]



少し残念に思いながらも、僕は帰路に着いた。[p]

#
; 家/////////////
[mask time=1000]
[bg storage="genkan.jpg" time=0]
[playse storage="door_open.mp3"]
[mask_off]

[pname]
「ただいまー」[p]

#
誰もいないけど[p]


[bg storage="room_pc.jpg"]
僕は買ってきた小説たちを机の上に広げる[p]

選りすぐりの「恋愛小説」たち。[p]
[pname]
「どれから読もうか…。よし！これにきめた。」[p]
#
その横に紙とぺんを添え、僕は朝まで机に張り付いた。[p]
[mask time=1000]
[end_replay]

[cg storage="makinohara_zyouba_kurabu.jpg"]
[jump storage="scene6.ks"]
