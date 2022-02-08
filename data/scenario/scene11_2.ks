;隠しルート
[set_replay name="true_end" storage="scene11_2.ks"]
[bg storage="room.jpg" time=0]
; 早朝っぽいBGM
[playbgm storage="sinnryokunooka.mp3"]
[mask_off]

; ¥前の選択で空港か小堤山か決まる。¥


#
「…」[p]


[pname]
「んー…。」[p]

「何時だ…今…。」[p]

#
時計：午前5時[p]


体を起こし、大きなあくびを一つ。[p]

[pname]
「昨日は早くに寝たからな…」[p]

「…忘れ物とか確認しよ」[p]
#
といっても昨日あらかた準備したし、荷物もそれほど多くない。[p]


すぐにやることはなくなった。[p]


[pname]
「テレビでも…」[p]
#
いや、この時間帯に面白い番組がやってるはずないか[p]






[pname]
「漫画…」[p]
#
も、既に荷物の中だし…。[p]







ソシャゲなるものも僕はやってないしな…。[p]


時刻は６時半を指す[p]

飛行機が出発するのは１２時。[p]
[pname]
「もっかい寝る気にもなれないしな…。」[p]

「…」[p]

「うん。コンビニいこ」[p]

[bg storage="genkan.jpg"]
#
家をでた。[p]
[playse storage="door_open.mp3"]
[mask time=1000]
; ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
[bg storage="konbini.jpg" time=0]
[mask_off]
#店員
「ありがとうございましたぁー」[p]
#
眠そうな店員から缶コーヒーとおにぎりを受け取る。[p]

[pname]
「ども。」[p]
#
; コンビニ出る音
[bg storage="konbini_gaikan.jpg"]
#
コンビニを出てすぐ、缶コーヒーのプルトップに指をかける。[p]






[pname]
「さぁ。どうしようか…」[p]




;選択肢
; 家に帰る
; 寄り道していく
[glinks21 text="家に帰る" target="*kaeru"]
[glinks22 text="寄り道していく" target="*yorimiti"]
[s]

*kaeru
; 変数名どうするか　一時変数でいい説
[eval exp="tf.flag=1"]
[jump target="*common"]
*yorimiti
[eval exp="tf.flag=0"]
[jump target="*common"]

*common
[pname]
「ここに研修来たての頃もこんな感じだったような気がするな」[p]


#
あの時も確か、朝早く目覚めて…[p]


[pname]
「…そういえば、あそこの公園には行ってないな。」[p]


[if exp="tf.flag==1"]
「まぁ、今更どうでもいいか」[p]
[endif]


「…。」[p]




; ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
; 小堤山公園
[mask time=1000]
[playbgm storage="flower_field.mp3"]
[bg storage="kodutumiyama_kouen.jpg" time=0]
[mask_off]

[if exp="tf.flag==1"]
[pname]
「結局来てしまった…」[p]
[endif]
#
公園の時計を見やる[p]



＝七時＝[p]


[pname]
「少ししたら帰ろう。」[p]


#
そこらのベンチに腰を降ろす。[p]

おにぎりをほおばりながら周りに視線を向ける。[p]

;立ち絵　遠く　obasan
遠くに走っている女性が見えた[p]

中年くらいか…こんな朝早くからすごいな。[p]


;立ち絵
あっちでは少年が犬の散歩をしている。[r2]
うん、えらい。[p]

;遠く　まきさん　立ち絵
あそこには白い服の女の子が…[p]

; ｂｇｍ変える　発見した！みたいな
ん？何してんだろ。[p]

朝日の逆光のせいでよく見えないが、どこか遠くを見つめている。[p]

さらに目を凝らす[p]
[pname]
「ん～？」[p]

「…。」[p]

「んッ？！！」[p]

「あれは…」[p]

#
僕は走ってその女の子の見えた方向へ走った。[p]
;走る効果音
[playse storage="run_park.mp3"]
; ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
[mask time=1000]
; 背景変えるか同じ背景でズーム
[mask_off]
[stopse]
[pname]
「はぁッ…はぁ…。…あれっ？」[p]

#
どこにいったんだッ？[p]


周りを見渡すも、さっきの子らしき影は見当たらない。[p]

[pname]
「おかしいなぁ」[p]
#
「人と見間違えるようなものもこの辺にはないしな」[p]


#マキさん
「落とし物？」[p]

[s_maki]

[pname]
「っ！！！！！！！」[p]

人の気配なんか感じなかった。[p]

[pname]
「な、えッ！！？」[p]


#マキさん
「やぁ。おはよう。早いね。」[p]

当然のように彼女が立っていた。[p]

[pname]
「あ、ぁ。おはよう。」[p]


すぐに平静を取り繕う。[p]

#マキさん
「何してたの？」[p]



[pname]
「ま、まぁ、そんな感じ…かな？」[p]

#マキさん
「そっか。手伝う？」[p]



[pname]
「いや。もう見つかったからいいよ。」[p]



#マキさん
「そう。よかった。」[p]



#
あぁ。　寄り道してほんとによかった。[p]


#マキさん&僕
「…。」[p]

; えもいかんじのｂｇｍ
[playbgm storage="sunset_memories.mp3"]
[pname]
「あ、あのねっマキさん。」[p]

#マキさん
「ん？」[p]


[pname]
「実は、ずっと君を探してたんだ。」[p]


#マキさん
「わたしを？どうして？」[p]



[pname]
「その、」[p]


「無事仲直りできたから、そのお礼が言いたくて」[p]

「ありがとう。」[p]
;マキ　笑顔　表情
#マキさん
「いいよぉそんなこと。」[p]


[pname]
「いや、でも君のおかげで得たものもあったというか」[p]




#マキさん
「それにしても義理堅いねぇ。」[p]

「そのためにあんなに遅くまで走り回ってたのかい？」[p]



[pname]
「ま、まぁ」[p]

「誰に聞いても君のこと知らないって言われるからさ」[p]


#マキさん
「ふふっ。まぁ、緑髪しか情報無いしね。」[p]


[pname]
「だとしても誰一人君のこと知らないなんてことある？」[p]

#マキさん
「まぁ、案外人の見た目なんて[r2]
自分で思ってる程気にされないもんだし」[p]


[pname]
「ははは…。」[p]
[playbgm storage="huon.mp3"]
#
ん？[p]

謎の違和感が脳裏を駆ける[p]



…あれ？[p]

; カットイン「そのためにあんなに遅くまで走り回ってたのかい？」
[playse storage="kaisou.mp3"]
[mask time=300 color=0xffffff]
[filter grayscale=100]
[mask_off]

#マキさん
「そのためにあんなに遅くまで走り回ってたのかい？」[p]

[mask time=300 color=0xffffff]
[free_filter]
[mask_off]
#
なんで知ってる？[p]

[pname]
「マキさん、あのっ…」[p]

[chara_show name="running_woman"]
刹那。人影が僕らの間を通り過ぎる。[p]
[playse storage="kieru.mp3"]
[h_maki]
そして、七歩先でそれは止まる。[p]


[chara_mod name="running_woman" face="stop"]
#？？？
「…。あたしかい？」[p]


さっき遠くに見えた中年女性だ。[p]



[pname]
「？」[p]

#中年女性
「人違いじゃない？」[p]



[pname]
「はい…？」[p]


#中年女性
「いや、だからあたしはマキって名前じゃないし。」[p]




[pname]
「えーと…そうですか…。？」[p]


#中年女性
「もういくよ。」[p]


[pname]
「は、はい…。」[p]
[chara_mod name="running_woman" face="default" ]
#
彼女は変質者でも見るような目で再び走り出した。[p]
[chara_hide name="running_woman"]

[pname]
？？？？[p]


[pname]
「えーっと…。」[p]

「変わった人もいたもんだね。」[p]

「ね、マキさん。」[p]
[s_maki]
#マキさん
「…。」[p]

彼女は俯いて黙っていた。[p]


[pname]
「マキさん？どうしたの？」[p]


#マキさん
「…。」[p]


[pname]
「そ、そうだ！さっきの話の続きでもしよっか！」[p]


「マキさんさ、なんで僕が遅くまで走り回ってたの知ってるの？」[p]


「もしかして、僕のこと遠くからずっと見つめてくれてた感じ？」[p]


「いやぁ～照れるなぁ～」[p]
#
黙り込んでしまった彼女に対し、何とかおどけて見せる。[p]

[pname]
「もしかして僕のことｓ…」[p]


#マキさん
「[player]君。」[p]
[pname]
「ふぇ？」[p]


#マキさん
「ごめんね。」[p]


[pname]
「え？」[p]
#
突然の謝罪。[p]

[pname]
「えーっと…。」[p]

#
流れ的に振られた、のか？[p]


[pname]
「こ、こっちこそごめん。迷惑、だったよね。」[p]

「大丈夫！僕、今日中にはもうこの土地を立つからさ！[r2]
全然忘れてくれてかまわないよ！」[p]
#
内心泣きそうになりながらも必死に言葉を紡ぐ。[p]

#マキさん
「？？。あの…そうじゃないの。」[p]

[pname]
「え？」[p]
#
なんだ。まだ振られてないみたい。よかった。[p]

#マキさん
「その…今までで、変だったこと…ない？」[p]


[pname]
「変だったこと？」[p]

「僕に女の子が、君が話しかけてくれたこととか？笑」[p]


自虐気味に言ってみる。[p]

#マキさん
「ううん。そうじゃなくて…もっと、こう…。」[p]



#
うーん…。[r2]
あったか？[p]


[pname]
「さっきのおばさんとか？笑」[p]


#マキさん
「それも…そう。」[p]
#
そうなんだ。[p]


[pname]
「えーっと、変わり者が話しかけてくる、とか。」[p]


#マキさん
「ううん…。はたから見たら…たぶん逆。」[p]
#
逆？？[p]


[pname]
「僕が変わり者ってこと？[r2]
またまたぁ。緑髪の子と『一緒にいる』だけでそんな…」[p]

「それに、自分が思ってる程他人は見た目を気にしてないってさっき」[p]



#マキさん
「見た目以外が変だったら？」[p]
#
見た目以外？[p]

#マキさん
「話し方とか、声とか？」[p]

「あとは…虚空に話しかけてる人とか、ちょっと怖いよね～」[p]

; 振動鼓動SE
[playse storage="sinnonn.mp3"]
#
そこで急に。鼓動が激しく脈打ち始めるのを感じた。[p]


嫌な汗が顎まで伝ってくる。[p]

; カットイン子生まれのおっさん
[playse storage="kaisou.mp3"]
[mask time=300 color=0xffffff]
[bg storage="koumare_onsen_ima.jpg" time=0]
[chara_show name="ozisan_koumare" time=0]
[h_maki time=0]
[filter grayscale=100]
[mask_off]

[wait time=1000]

[mask time=300 color=0xffffff]
[free_filter]
[bg storage="kodutumiyama_kouen.jpg" time=0]
[chara_hide name="ozisan_koumare" time=0]
[s_maki time=0]
[mask_off]

いやいやそんなわけ。[p]

; カットイン乗馬クラブのスタッフ
[playse storage="kaisou.mp3"]
[mask time=300 color=0xffffff]
[chara_show name="staff_zyouba" time=0]
[bg storage="makinohara_zyouba_kurabu3.jpg" time=0]
[h_maki time=0]
[filter grayscale=100]
[mask_off]


[wait time=1000]

[mask time=300 color=0xffffff]
[free_filter]
[bg storage="kodutumiyama_kouen.jpg" time=0]
[chara_hide name="staff_zyouba" time=0]
[s_maki time=0]
[mask_off]

…。[p]

; カットイン静波海岸のじいさん
[playse storage="kaisou.mp3"]
[mask time=300 color=0xffffff]
[chara_show name="ozisan_sizunami" time=0]
[bg storage="sizunami_kaigan.jpg" time=0]
[h_maki time=0]
[filter grayscale=100]
[mask_off]

[wait time=1000]

[mask time=300 color=0xffffff]
[free_filter]
[bg storage="kodutumiyama_kouen.jpg" time=0]
[chara_hide name="ozisan_sizunami" time=0]
[s_maki time=0]
[mask_off]

; 　　　　　ゆうゆうらんどの子供たち
[playse storage="kaisou.mp3"]
[mask time=300 color=0xffffff]
[bg storage="yuuyuu_rando.jpg" time=0]
[chara_show name="kodomo_yuuyuu" time=0]
[chara_show name="kodomo_yuuyuu2" time=0]
[filter grayscale=100]
[mask_off]

[wait time=1000]

[mask time=300 color=0xffffff]
[free_filter]
[bg storage="kodutumiyama_kouen.jpg" time=0]
[chara_hide name="kodomo_yuuyuu" time=0]
[chara_hide name="kodomo_yuuyuu2" time=0]
[mask_off]


…。[p]

; 大きく心臓SE一発かましてストップ
[playse storage="sinnonn_big.mp3"]
[wait time=1000]

[playse storage="kaisou.mp3"]
[mask time=300 color=0xffffff]


; カットインさっきのおばさんとのやりとりーーーーーーーーーー
; [filter grayscale=100 layer="message0"]
; [filter grayscale=100 layer="fix"]
[filter grayscale=100]
[mask_off]

[chara_show name="running_woman"]
刹那。人影が僕らの間を通り過ぎる。[p]

[playse storage="kieru.mp3"]
[h_maki]
そして、七歩先でそれは止まる。[p]


[chara_mod name="running_woman" face="stop"]
#？？？
「…。あたしかい？」[p]

さっき遠くに見えた中年女性だ。[p]

[pname]
「？」[p]

#中年女性
「人違いじゃない？」[p]

[pname]
「はい…？」[p]

#中年女性
「いや、だからあたしはマキって名前じゃないし。」[p]

[pname]
「えーと…そうですか…。？」[p]


#中年女性
「もういくよ。」[p]


[pname]
「は、はい…。」[p]
[chara_mod name="running_woman" face="default" ]
#
彼女は変質者でも見るような目で再び走り出した。[p]
[chara_hide name="running_woman"]

[free_filter]
; カットインここまでーーーーーーーーーーーーーーーーーーーーーーーーー

[mask time=300 color=0xffffff]
[s_maki time=0]
[mask_off]

[pname]
「ははは…。は、はは…。」[p]

[pname]
「まさか、僕にしか見えてない？」[p]

「なーんてね！」[p]





[pname]
「ごめんわからないや！[r2]
答え教えてよ」[p]

#
彼女はまた、俯いた。[p]


まるで、肯定を示すように[p]




僕は彼女がいつもみたいにおどけて、顔をあげるのを待った。[p]





だけど、いつまでたってもその時は訪れなかった。[p]



二人を沈黙がつつんだ。[p]




二人…。[p]


2人、なのか？[p]

そもそも君は何なんだ？[p]


この土地の妖精とかか？[p]


はたまた天使とか幽霊みたいな、[r2]
そんなファンタジー世界の存在なのか？[p]

もしかしたら、君は…[p]


僕の妄想が生み出したのか？[p]




わからない。[p]

考えれば考えるほどに。[p]

[playbgm storage="osoroi.mp3"]
#マキさん
「ごめんね。」[p]


#
彼女が口を開いた。[p]


その言葉が彼女の言葉なのか。[r2]
自分がそう妄想して生み出しているものなのか[p]

わからなかった。[p]


僕は黙り込む。[p]

これ以上喋れば、自分が傷つく。[p]


かけてくれた言葉の数々が、自分の虚妄だと。[p]

君の言葉ではないのだと、わかってしまうのが[r2]
怖くて。[p]

しかし、彼女は続ける。[p]

#マキさん
「話せば、君を傷つけてしまうのはわかってたんだ。[r2]
だから、ずっと。言うのが怖かった。」[p]
#
妄想もここまでくれば、大した物だな。[p]

鼻で自分を嘲る。[p]

[pname]
「君は、何者なの？」[p]

#
わかりきってるだろ[p]


#マキさん
「…わからない。」[p]
#
立派に会話もできるし。[r2]
意思の疎通だって……[p]

ふと。思い出がよぎる。[p]


初めて会った日。[r2]
僕の手を引いてフジの花を見た。[p]
その手は小さくて、温かくて。[p]

次に会った時は[r2]
一緒に馬を見に行った。[p]

ポニーに乗る僕に、笑いながら優しい表情で[r2]
見つめながら手を振ってくれて。[p]

帰りには車の中で沢山おしゃべりして、また笑ってくれて。[p]

僕が同僚と仲違いした時だって。[r2]
ただ、優しくそばに寄り添ってくれて。[p]

僕の過去も、今も、夢も。[p]

全部ひっくるめて背中を押してくれた。[p]

短い間の出来事ではあった。　[r2]
でも、どれも。[p]
僕を一生励まし続けてくれる思い出ばかりで。[p]


[pname]
「…あれ？」[p]
[filter blur=5]
ふと、視界が滲む。[p]

『彼女は確かにそこにいる』　[p]

妄想ではない、と。[r2]
そう裏付けるには充分だった。[p]

それだけ、彼女には多くを貰ったから。[p]
　
[pname]
「ごめん…ごめんねマキさん…」[p]
#
さっきまでの自分への嫌悪感で涙が止まらない[p]

#マキさん
「わ、わ、どうして君が謝るのさっ」[p]
#
泣きながら謝罪する成人男性をみて慌てふためく[r2]
彼女。[p]

その様子をみて、また安堵をする。[p]

こんなにかわいくていい子。[p]

僕の妄想であるはずがないじゃないか。[p]


[pname]
「ごめん…ごめん…」[p]
#
彼女を僕なんかの虚妄であると疑ったことを、[r2]
ただ謝り続ける。[p]


#マキさん
「もうわかったってっ！[r2]
いいよっ！何だかわからないけど許す！」[p]
「だから泣きやんでよぉ〜」[p]

[pname]
「ズズッ」[p]
#
しばらくして、やっと涙が止まった。[p]
[filter blur=1]
#マキさん
「ふぅー。もぅ。こっちが先に謝ってたのに。」[p]
#
僕の背中をさする。[p]

やはり、その手は温かい。[p]



[pname]
「ごめん、ズビッ。ありがとう…」[p]



#マキさん
「ほら、楽しい話でもしよ！ねっ」[p]



[pname]
「うん…」[p]



#マキさん
「じゃあねぇ、さっき君が聞いてきた質問について[r2]
答えちゃおう！」[p]


[pname]
「質問？」[p]

#マキさん
「そう。『私は何者なのか』だったっけ？」[p]

[pname]
「でも、わからないって…」[p]


#マキさん
「まぁなんて言うんだろう。正確には、って感じ。」[p]

「強いて言うのであれば…そうだなぁ…。[r2]
神さまみたいなイメージかな？」[p]

[pname]
「神様！？」[p]

#マキさん
「といってもなんの力もないけどねー。[r2]
見護る専門的な？」[p]

[pname]
「見護る…専門？」[p]


#マキさん
「そー。見護る女神。」[p]

[pname]
「付喪神？」[p]

#マキさん
「ちょ、女神でいいじゃんか！」[p]

#
「……」[p]


#マキさん&僕
「プフッ…」[p]
#
また、いつもみたいな空気に戻った。[p]

それからマキさんは沢山話をしてくれた。[r2]
自分がこれまで見てきたものを。[p]

ただ、こういった風に誰かの前に姿を現せたのは[r2]
初めてで、それまでの自分の記憶も[p]
薄ぼんやりとしたものばかりらしい。[p]

ただ、どこに居ても町のどこで何が起こってるかは[r2]
なんとなくわかるのだとか。[p]

[pname]
「へぇー！すごいねそれ」[p]


#マキさん
「うん、だから実は君が今日ここを立つことも知ってたんだ。」[p]

[pname]
「へぇー…。」[p]

#マキさん
「だから、お別れを言いに来たのさ。」[p]

[pname]
「もう二度と会えないって感じの？」[p]

#マキさん
「！[r2]
フフッ。鋭いなぁ君は。」[p]

[pname]
「まぁ、こう見えて小説家志望ですから[r2]
この流れはそうなんじゃないかと。」[p]


#マキさん
「そこはもっとこう、『どうしてっ！』とか[r2]
喚き散らかすもんじゃないのかい？」[p]

[pname]
「いやぁ〜まぁベタすぎるでしょ。そんなの」[p]

#マキさん
「こういう場面はベタだからこそ感動するんじゃないか！全くもぅ！」[p]


[pname]
「あ、神さまが怒った。特に被害なさそうだけど」[p]



#マキさん
「なにおぅ！[r2]
なんか、えっと…一生独り身になる呪いとかかけてやるぞ！」[p]

[pname]
「神様なら呪いでなく祟りであれよ…」[p]

#
また、温かい雰囲気と笑い声に僕達は包まれる。[p]



それからたわいもない話がいくつか続き、その度に僕達は笑いあった。[p]


ずっと、この時間が続けば、なんて思ってしまう。[p]


でも、終わりが近いのはすぐにわかった。[p]

[anim name="maki" opacity=100]
;透過されてるマキの立ち絵
彼女の頭の先が、[r2]
少しずつ透け始めた。[p]


#マキさん
「もう、時間みたいだ。」[p]


[pname]
「みたいだね。」[p]

#マキさん
「なにか言い残すことはないかい？」[p]

[pname]
「それこっちのセリフ…」[p]

「まぁ、頭から消えるタイプなんですねマキさん」[r2]
「普通足からじゃない？」[p]


#マキさん
「ふ、君はベタな展開が嫌いかと思ってねっ！」[p]
#
もう顎のあたりまで消えかけている彼女。[p]

だが、ドヤ顔をしてるんだろうなとは、[r2]
なんとなく想像がついた。[p]


まぁ、そのほうがよかったかも。[p]

もう、涙が溢れかけていたから。[p]


[pname]
「少しは僕のことわかってきたじゃないか」[p]
#
なんか、口調もマキさんぽくなってきたなぁ。[p]

#マキさん
「ふ、強がりを。顔は消えてても一応こっちからは見えてるからねっ」[p]


[pname]
「なっ！？」[p]


#マキさん
「お、もしかして本当に泣いてた？[r2]
ねぇ。泣いちゃってた？」[p]
#
また騙された。[p]

[pname]
「うるさいよ。[r2]
マキさんこそ、さっきから声震えてるし[p]
あと、涙で公園の地面濡れてるし。」[p]


#マキさん
「えっ！？」[p]

#
これは、本当。[p]

彼女の足元には少しだけ水滴のあとができていた。[p]


#マキさん
「こ、これは雨だよ雨！[r2]
天気予報で言ってた！」[p]
「ほら、急いで帰らないとどしゃ降りになるぞ~！」[p]

#
空は満点の青空。[r2]
まさにフライト日和だ。[p]


でも、[p]

[pname]
「うん。じゃあ、そうしようかな。」[p]
#
もう、彼女の姿は殆ど目視できない。[p]


[pname]
「最後に。一つだけ、いい？」[p]


#マキさん
「お？君が好きだ！とか？」[p]

「んなベタな展開なわけないかっ！で、なんだい？」[p]

[pname]
「…。」[p]

#マキさん
「えー…？[r2]
ここに来て急に？」[p]

[pname]
「うるさいベタベタ女神め。」[p]


#マキさん
「え、ちょ、やだそれ。[r2]
なんかいろんなところに貼りつきそう。」[p]

[pname]
「はぁ…。」　　[p]
#
結局自分の口から言えなかった…[p]

#マキさん
「まぁ、私も同じ気持ちだったとだけ伝えとくよ[r2]
じゃっ！！」[p]
#
[anim name="maki" opacity=0]
;あえて消える音をつけない
[h_maki]

相変わらず唐突に去るなぁ。[p]


もう、彼女の形はおろか、声すらも聞こえない。[p]

ただ、さっきまだ彼女が居た場所には、[r2]
大雨の跡が。[p]

それだけが残されているだけだった。[p]





[mask time=1000]
[free_filter]
[playbgm storage="natuyasumi.mp3"]
[bg storage="sizuoka_kuukou_gaikan.jpg" time=0]
[mask_off]

5年後…[p]

; 飛行機SE
[playse storage="plane_tuuka.mp3"]
[pname]
「んーーっ！」[p]
#
飛行機から降りて大きく伸びをする。[p]
[pname]
「ふぅ、ずっと同じ姿勢だったから腰が。」[p]


[chara_show name="ookosi"]
; 必要ならサイズと位置調整

#青年
「まってくださいよぉーーー！」　　　[p]

[pname]
「？　どうしたんだ大越くん。」[p]


#大越
「先生っ、！ネタ探しの旅にでるって[r2]
…こんな遠くまでくる必要あったんですか！？」[p]

「しかもなぜピンポイントに牧之原！？」[p]

#
大越、もとい僕の担当をしている[r2]
出版社の若い青年は、情けない声で喚く。[p]


[pname]
「ははは。そんなことないさ。[p]
　

「よく見てみろ。ほら、大自然と茶の香りが溢れているじゃないか」[p]


#大越
「東京とか以外は基本そんなもんでしょ！　茶の香りはまだしも！」[p]

「あぁ！もぅ締め切りだって近いのにｯ…！！」[p]


[pname]
「まぁ、そう言うなって。」[p]


「なんかね。自然と帰ってきたくなったのさ」[p]

#大越
「いや、先生生まれも育ちも島根でしょ」[p]

[pname]
「おぉ、これは手厳しい。あ、そうだ。」[p]


「いい場所、紹介してやるよ。」　[p]



; ¥最初の出会いで伏線¥ 


#
【エピソード　Blue rose】 [r2]
　　〜青薔薇の微少女〜[p]
[mask time=2000 color=0xffffff]
[cg storage="sizuoka_kuukou.jpg"]
[end_replay]

[iscript]
//隠しルートをクリアした
sf.clear_root2=1
//どこからクレジットにアクセスしたか
tf.from=2
[endscript]
[jump storage="credit.ks"]