;静波海岸の翌日
[set_replay name="sa_nobori" storage="scene9.ks"]
[bg storage="office.jpg" time=10]
[playbgm storage="healing12.mp3"]
[mask_off]

#
今日も、いつも通りの時間に出社した。[r2]
ただ、片手には、例の封筒をもって。[p]



僕は会社に着くなり、同僚の席に向かう。[p]

[pname]
「お、おはよう。」[p]
[s_douryou]
#同僚
「…！。」[p]

彼は少し驚きながらも[p]


#同僚
「あぁ。」[p]

とだけ返し、またデスク上のパソコンに向き直った。[p]


[pname]
「あの…」[p]

「この前は,...ごめん。」[p]


#同僚
「…。」[p]


[pname]
「その、これ。[r2]
よかったらでいいんだが、受け取ってくれないか？」[p]



#同僚
「いや！！ちょっと待った。」[p]

[pname]
「！！」[p]

#同僚
「こちらこそ本当にすまない。」[p]

「前回のことも、本来なら俺から謝るべきだったのに。」[p]




[pname]
「いや、いいんだ。お互い様ってことで。」[p]


#同僚
「すまん。」[p]


[pname]
「もういいってば。[r2]
そんなことよりもさ、これ。」[p]
[image storage="huutou.png" layer=1 top=30 left=600]

「読んでみてくれないか？」[p]

僕は封筒を押し付けた。[p]
[freeimage name="huutou.png" layer=1]
[chara_mod name="douryou" face="huutou"]
#同僚
「え？これ…」[p]

[pname]
「後で感想聞かせてくれよ」[p]

#
(　ﾟдﾟ)ポカーンとしている同僚を後目に、[r2]
ぼくは席に戻り、仕事を始めた。[p]
[mask time=1000]

[h_douryou time=10]
[mask_off]





; ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
#
【昼頃】[p]

[pname]
「ふう。やっとお昼か。[r2]
研修中の仕事とはいえ疲れたな。仕事は仕事だし。」[p]

とりあえずお昼に行こうと立ち上がる。[p]

[playbgm storage="tatakai.mp3"]
; 状況との相性によっては魔王魂のと変える↑
#同僚
「お、[player]居た。」[p]
[playse storage="encount.mp3"]
[chara_show name="douryou" top=130 face="huutou"]
野生の同僚Aと遭遇した。[r2]
片手には封筒を装備している。[p]

;glinkで選択肢を作る
[glinks21 text="逃げる" target="*nigeru"]
[glinks22 text="逃げる" target="*nigeru"]
[s]
*nigeru


[pname]
「……。」[p]
[playse storage="nigeru.mp3"]
スッ…。[p]


#同僚
「え。おいどこ行く。」[p]



[pname]
「いや。なんか恥ずかしい。」[p]



#同僚
「小説か？」[p]

[pname]
「それもそうだけど…さっきの今仲直りしたから。」[p]

#同僚
「…。」[p]

「くそ陰キャめ。」[p]

[playbgm storage="tanosii.mp3"]
; 仲のいい楽しい感じのBGM

[pname]
「な！？」[p]


#同僚
「その話はもう言いっこなしだぜ。それより飯いこ飯。」[p]


[pname]
「ッ…。おぅ！」[p]

#
; 11.5
[mask time=1000]
[h_douryou time=10]
[mask_off]

[bg storage="car.jpg"]
#
【車内にて】[p]




#同僚
「どこにするーーーーーーう？」[p]


[pname]
「サービスエリアとかでよくね？」[p]


#同僚
「まぁよかろう。」[p]

[pname]
「…運転するのは僕だぞ？」[p]

#同僚&僕

「....…。ㇷ゚ッ」[p]
#
車内に明るい笑いを響かせながら、[r2]
僕たちは牧之原サービスエリアへむかった。[p]

;牧之原SA上りーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
[bg storage="sa_nobori_gaikan.jpg"]
[pname]
「おい。着いたぞ。」[p]

#
助手席を倒して寝そべっていた同僚に声をかける[p]

[s_douryou]
#同僚
「おつ～」[p]



[pname]
「〆るぞお前。」[p]

#
[bg storage="sa_nobori_shopping.jpg"]
[bg storage="sa_nobori_foodcourt.jpg"]
#
【店内】[p]
[pname]
さて、昼休憩時間も限られているし、さっさと済ませよう[p]

#
たくさんあるな。[p]


どこに行こうか[p]
;選択肢
[glinks41 target="*ramen" text="元祖燕ラーメン（しょうゆ）" ]
[glinks42 target="*maguro" text="まぐろの山盛り丼" ]
[glinks43 target="*buta" text="豚トロ焼肉定食" ]
[glinks44 target="*kare" text="夢咲牛コロッケカレー" ]

[s]




*ramen
[bg storage="sa_nobori_tubame.jpg"]
麺屋 燕.　どうやらラーメン屋らしい。[r2]
僕たちは元祖燕ラーメン（しょうゆ）を食べることにした。[p]
[bg storage="sa_nobori_foodcourt2.jpg"]
[image storage="sa_nobori_tubame_ramen.jpg" layer=1 x=450 y=30]
コシのある細麺とコクがある鶏だしのスープが絡んでめちゃめちゃ上手い！[r2]
昔ながらのラーメンを彷彿とさせる味....![p]
具もチャーシュー、味玉、海苔、ねぎと[r2]
とってもシンプルかつスープにとても合う！[p]
箸が止まらない！！！[p]
[jump target="*common"]


*maguro
[bg storage="sa_nobori_suruga_no_megumi.jpg"]
海鮮・うどん・そば　駿河の恵にやってきた。[r2]
まぐろの山盛り丼を食べることにした。[p]
[bg storage="sa_nobori_foodcourt2.jpg"]
[image storage="sa_nobori_yamamoridon.jpg" layer=1 x=450 y=30]
マグロ丼をほおばり、目を閉じる。[r2]
その時僕の脳裏には広く広大な駿河湾の風景が浮かんだ。[p]
一瞬で口いっぱいに広がる甘い脂。[p]
静岡県産わさびをつけることでツンと鼻を抜けるワサビと[r2]
辛さを包み込むような脂がとても相性がいい！！！[p]
まさに悪魔の組み合わせ！！！[r2]
箸が止まらない！！！[p]
[jump target="*common"]

*buta
[bg storage="sa_nobori_sayamatei.jpg"]
茶山亭の豚トロ焼肉定食[p]
[bg storage="sa_nobori_foodcourt2.jpg"]
[image storage="sa_nobori_tonntoro.jpg" layer=1 x=450 y=30]
目の前に出されたときからよだれが止まらなかった。[r2]
豚トロのタレの甘い香り。[p]
豚トロを食べてみるとハリのある食感と脂ギッシュなウマさと甘みが[r2]
しっかりと感じられタレと肉がきちんと絡み合ってご飯が進む！進む！[p]
一口食べたらもう止まらない！[p]
[jump target="*common"]

*kare
[bg storage="sa_nobori_orientaru_kare.jpg"]
オリエンタルカレーの夢咲牛コロッケカレー[r2]
[bg storage="sa_nobori_foodcourt2.jpg"]
[image storage="sa_nobori_yumesakigyuu.jpg" layer=1 x=450 y=30]
口の中に入れた瞬間はじける旨みとコク[p]
そして、それらと絡み合う芳醇な香りのハーモニー！！！[r2]
想像以上だ.....[p]
[jump target="*common"]

;共通ルート
*common
[pname]
「これめちゃうまいな」[p]



#同僚
「それな～」[p]
#
昼食を掻き込みながらこたえる同僚と歓談を交えながら、[r2]
たのしい時間をすごす。[p]
[freeimage layer=1]
[stopbgm]
ふと、[p]

#同僚
「ところでさ。」[p]
#
唐突に話題を切り込んできた。[p]

[pname]
「ん？」[p]


#同僚
「さっきのあれだけどさ。」[p]
[playbgm storage="syuumatu.mp3"]
[pname]
「あれとは？」[p]
#
とぼけたふりをしながらも、わかっていた。[r2]
むしろ、会社からここまで、それが気になってしかたがなかったほどに。[p]


「どうだった？」　そう言いかけてすぐに口をつぐむ。[p]
平然を装いながらも、[r2]
当時のトラウマが、また僕を委縮させる。[p]


; （静波ｗｉｔｈマキさんカットin）
[playse storage="kaisou.mp3"]
[mask time=300 color=0xffffff]
[bg storage="sizunami_kaigan.jpg" time=10]
[h_douryou time=10]
[s_maki time=10]
[filter grayscale=100]
[mask_off]

[wait time=1000]

[mask time=300 color=0xffffff]
[bg storage="sa_nobori_foodcourt2.jpg" time=10]
[s_douryou time=10]
[h_maki time=10]
[free_filter]
[mask_off]





自信か…。[p]


[pname]
「…面白かったろ？」[p]

間違いなく、最高傑作なんだ。[p]


自分に言い聞かせる。[p]




#同僚
「…。」[p]


[pname]
「え？」[p]


#同僚
「…」[p]
#
同僚の表情が曇る。[p]


あぁ。また、ダメか。[p]


#同僚
「あー…くそ。だめだわ。」[p]

#

そう…だよな。[p]



[stopbgm]
#同僚
「自信満々なお前に小説の悪態でもついてやろうとしたのになぁ。[r2]
浮かばんかったわ。」[p]
#
もう、これを最後に…ん？[p]




[pname]
「なんて？」[p]


#同僚
「んーまぁ。悔しいが悪いとこが思いつかなかった。[r2]
お前の言う通り、面白かったよ。」[p]
[playbgm storage="free_bgm_tr13.mp3"]

#
期待は抱いていたものの、[r2]
予想はしていなかったその答えに、僕は戸惑う。[p]


[pname]
「ほんとか！！！？」[p]

「ど、どこらへんがどう面白かったっ？！[r2]
具体的に感想を1000字以内で…」[p]


#同僚
「ちょっ、うるさいよお前は。この前と同じことを繰り返すな」[p]

[pname]
「ごめん」[p]

#同僚
「あぁ。まぁ、そうだな…1000文字はきついから一言で」[p]



[pname]
「あぁ！」[p]



#同僚
「なんつーかさ。お前の小説、ありゃ恋愛ものだろ？」[p]
「その中の主人公のキャラクター性がさ、[r2]
他の王道ものとは違うっつーか？」[p]

「まぁ、主人公は絶対恋愛向きじゃない性格しててさ。[r2]
だからこそ新鮮味があってわくわくしてみられるっつーか。[p]
「それで…ん？」[p]
#
いつの間にか机に身を乗り出しながら、僕は目をきらきらさせていた。[p]

#同僚
「あー……っと。陰キャ視点の物語が斬新だなと思いました。[r2]
おしまい。」[p]


[pname]
「おいてめぇ。」[p]




#同僚
「うそうそ。冗談だよ。」[p]


「…そう、まぁそんな感じで面白かったよ。」[p]


[pname]
「そっか。…いや、それにしてもやけに本格的な講評をくれたな？」[p]


#同僚
「いや、まぁ。俺も実はな…」[p]

[pname]
「え、もしかして書いてんの！？」[p]


#同僚
「見る専だっただけだよ。昔だけどな。」[p]
#
; 森画像
[playse storage="kaisou.mp3"]
[mask time=300 color=0xffffff]
[filter grayscale=100]
[layopt layer="message0" visible=false]
[layopt layer="fix" visible=false]
[image storage="comment2.jpg" name="comment2" layer=0]
[mask_off]

[wait time=1000]

[mask time=300 color=0xffffff]
[layopt layer="message0" visible=true]
[layopt layer="fix" visible=true]
[free name="comment2" layer=0 ]
[free_filter]
[mask_off]


#
…まさかな。[p]



[bg storage="sa_nobori_gaikan.jpg"]
昼休憩も終わりに近い。[r2]
僕らは牧之原サービスエリアを後にした。[p]


[mask time=1000]
[h_douryou time=10]
[bg storage="car.jpg"]
[mask_off]

【車内にて】[p]
#同僚
「じゃ、運転よろしくぅ」[p]

そういってシートを倒す。[p]

[pname]
「はぁ。」[p]

「ああ。」[p]

#同僚
「…それにしても、あっというまだったな。」[p]



[pname]
「なにが？」[p]


#同僚
「何って、研修期間だよ。来週の金曜くらいで終わりだろ？」[p]

「あーあ。研修終わったらこうやって飯食う時間とかも[r2]
とれなくなったりすんのかなー」[p]


#
そうだった。僕たちは、研修中の新社会人。[p]

そしてその期間も終わりに近づいている。[p]

[pname]
「そうか…そうだったな。」[p]
#
[mask time=1000]
[h_douryou]
[end_replay]

[cg storage="sa_nobori.jpg"]
[jump storage="scene10.ks"]

