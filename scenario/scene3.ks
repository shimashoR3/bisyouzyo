;子生れ温泉前
[set_replay name="koumare_onsen" storage="scene3.ks"]
[stopse]
[bg storage="matinaka.jpg" time=0]
[playbgm storage="beautiful_cityscape.mp3"]
[mask_off]
[pname]
「ふぅ…」[p]
#
…。[p]


なんか悪いことをした気分だ。[p]

…。[p]

いや…僕は悪くない。[r2]
向こうは向こうでムーブが怪しいし…。[p]
うん！僕は悪くない。[r2]
今の時代は用心深すぎるほうがちょうどいいんだ。[p]


[pname]
「タクシー…呼ぶか。」[p]

; 　RRRRRRR
[playse storage="phone_call.mp3"]
[wait time=2000]
[stopse]
#タクシー会社
「はい、こちら東海タクシーです。」[p]

[pname]
「あ、すいません。静波２５８９−１までお願いします。」[p]
　
#タクシー会社
「かしこまりました。少々お待ちください。」[p]

; ㇷ゚ッ
[playse storage="phone_pi.mp3"]

[pname]
「ふぅ。」[p]

[pname]
「それにしても、暑いなぁ今日」[p]
#
さっきから服がベタベタまとわりついてきて気持ち悪い[p]
[pname]
「近くに温泉ないかな。」[p]

「ｈｅｙ。goggle。近くの温泉教えて。」[p]
[s_maki]
#微少女
「あ、いた。」[p]
#
げっ[p]


#微少女
「なにしてるの？」[p]
#
彼女は僕の携帯を覗き込む[p]

#微少女
「あ、『さがら子生れ温泉会館』じゃん。行くの？」[p]

[pname]
「え？あ、そ、そそそうなんだ！今日暑いからさ！汗かいたでしょ！[r2]
だから、うん、そう。」[p]
#
えーと…え、どうしよ。きまず。[r2]
いや、ここは…[p]

[pname]
「えーと。タクシー、もう呼んでおいたんだ。[r2]
よければ君も来るかい？」[p]
#
社交辞令的に済ませて去ろう！[p]
[pname]
「なーんて、冗だｎ…」[p]


#微少女
「いいの？！行く行くっ！」[p]

#
……。[p]

[pname]
「え？」[p]

#微少女

「え？」[p]

; ブウううん
[playse storage="car_buun.mp3"]
; がちゃっ
[playse storage="car_open.mp3"]
#タクシー運転手
「東海タクシーです。[r2]
失礼ですが先ほどお電話いただいた[player]様ですか？」[p]

#
…おっふ。[p]
[mask time=1000]
[h_maki time=0]
;子生れ温泉----------------------------------------------------------------------------
[bg storage="koumare_onsen_gaikan.jpg" time=0]
; 外観
[mask_off]
#
約１5分後…[p]

#
結局僕は。[p]



[s_maki time=500]
#微少女
「ついたぁー！」[p]
#
いや、僕達は、[r2]
さがら子生れ温泉会館にやってきた。[p]

[pname]
「こんなはずでは…」[p]
#微少女
「ここすっごいいいとこだよね！」[p]

[pname]
「いや、来たのは初めてで…。」[p]

#微少女
「そうなの？きっと気に入ると思うよぉ～？」[p]
#
なんだこの人、テンション高。[p]

#微少女
「ぁ、忘れ物したぁー[r2]
先入っててよ。温泉入ったら居間に集合ね。」[p]

[pname]
「あ、はい。」[p]


#
そういうと彼女は歩いて来た道を足早に戻っていった。
[playse storage="kieru.mp3"]
[h_maki]
[wait time=200]
[p]


しょうがない先に入ってるか。[p]

[bg storage="koumare_onsen_front.jpg"]
;front

へーここ券売機でチケット買うんだ。[r2]

チャリンッ
[playse storage="tyokinbako.mp3" clear=true]
[wait time=100]
　ピッ
[playse storage="pi.mp3"]
[p]
; 効果音
このチケットをフロントにもってけばいいのかな？[p]
[pname]
「これ、お願いします。」[p]

[chara_show name="bandai_koumare"]

#番台さん
「ありがとうございます。ではこちらの半券をお持ちください。[r2]
有効期限は４時間となっております。ごゆっくりどうぞ。」[p]
#
有効期限四時間か…結構いられるな。[p]


あ、今のうちに逃げればよかった…。[p]


そうだ！せっかくだから長風呂してやり過ごすか。[r2]
そうすれば彼女もあきらめるだろう。[p]


そうと決まればLets温泉だ。[p]
[chara_hide name="bandai_koumare"]

[playbgm storage="daiyokuzyou.mp3"]
[bg storage="onsen.jpg"]
[wait time=1500]

[mask time=1000]
;フロント
[playbgm storage="beautiful_cityscape.mp3"]
[bg storage="koumare_onsen_front.jpg" time=0]
[mask_off]

二時間後。。。[p]

ふ～。まことにいい湯だった。[r2]
どうだ微少女よ！流石に諦めざるを得ない見事な長風呂であろう？[p]

[pname]
「そういえばここ『子生れ温泉』って結構変わった名前だな…」[p]
#
あとでフロントさんにでも聞いてみるか。[p]


[s_maki]
#微少女
「その問いには私が答えよう！」[p]

[pname]
「！！！！！！！！！！！」[p]

#
[playse storage="shock.mp3"]
なん…だと………。
[p]
[stopse]

#微少女
「もう！！風呂長いよ！！」[p]




[pname]
「ははは…。ごめん…なさい」[p]

#
もう、壺買うか。[p]

#微少女
「こっちこっち。」[p]
#
微少女に手を引かれる。[p]



せめて、値引きの交渉くらいはしよう…。[p]

; ptextにする？
[bg storage="koumare_onsen_ima.jpg"]
#
【居間にて】[p]



#微少女
「ふふん！結構きれいなとこでしょッ？」[r2]
凄く嬉しそうな顔を彼女は浮かべる。[p]

#
[playbgm storage="syuumatu.mp3"]
でも、僕は。[p]

[pname]
「……。」[p]
; 文字小さく
[font size=30]
「………いくらですか。」[p]
[resetfont]
#微少女
「え？」[p]

[pname]
; 文字大きく mtext?
[font size="70"]
「壺はいくらですか！」[p]
[resetfont]
#
突然の大声に彼女は驚きの顔を見せる。[r2]
もう、夢のひと時は終わりにしたい。[p]
断る勇気のない僕には、もう壺を買う以外に手立てはない。[p]

[font size="70"]
[pname]
「それともなんですか！宗教の方ですか？[p]
どちらにしてもあまり貯金がないので、[r2]
できるだけ安いと助かります。」[p]
[resetfont]
[stopbgm]
#
…。[p]

何だろう、この沈黙は。[p]


彼女の顔を見る。[p]
彼女の顔は先ほどの驚きの表情から一転し、[r2]
困惑の表情を浮かべていた。[p]

[playbgm storage="The_Odd_Man.mp3"]
#微少女
「えー、と…。ごめんね。何の話？？」[p]

[pname]
「．．．え？」[p]


#
僕はこれまでの経緯を彼女に話した。[p]

[mask time=2000]
[mask_off time=2000]

数分後…[p]



#微少女
「あはははっ！そんな風に思ってたのかい？[r2]
ごめんごめん。確かにめちゃくちゃ不審者だよね。私。」[p]

「ふふふっ。そんなつもりはないから安心しなよ。」[p]



[pname]
「はぁぁぁぁぁぁーーーーー」[p]

「…ほんとによかった。」[p]

#微少女
「だからお寺行った時も浮かない顔してたのかい？」[p]

[pname]
「まぁ。」[p]

#微少女
「そっか。」[p]

[pname]
「ところで、君は誰なの？」[p]


#微少女
「私はねー…マキ！」[p]

[pname]
「そっか、マキさんて言うのか。[r2]
僕は[player]だよ。」[p]

「でも、どうして僕をここに連れてきたの？」[p]

#マキさん
「んー。退屈そうな顔してたから？[r2]
それに、『何もないところだな』って。」[p]

#
[playse storage="boke.mp3"]
ギクッ
[p]

[pname]
「い、いや、あれは言葉の誤というかなんというか…。[r2]
…ごめん。まさか聞かれてるとは思わなくて。」[p]


#マキさん
「あ、ううん。違うの！謝らせたいとかじゃないんだ。[r2]
つまり、君にこの地を楽しんでもらいたかったんだ」[p]
「だから、連れてきたの。」[p]
#
そうだったのか[p]

[pname]
「確かに。楽しかったよ。綺麗な花も見れたし。[r2]
ありがとう。」[p]





#
でも、[p]

[pname]
「じゃあ、僕はこれで…」[p]
#
非モテの僕がこんなかわいい子とデートできただけでも、[r2]
一生分の宝物だ。[p]
だから、これ以上彼女の時間を[r2]
僕ごときが奪ってしまうのは申し訳ない。[p]


#マキさん
「まって」[p]

#
また彼女に手をつかまれた。[r2]
…今日は素晴らしい日だな。[p]


[pname]
「まだなにか？」[p]

[playbgm storage="koi.mp3"]
#マキさん
「あのさ。これから三週間に一回くらいでいいからさ、会えない？」[p]


[pname]
「ッ！？」[p]

「えと、それってどういう…」[p]

#
唐突の恋の予感に僕の胸は高鳴った。[p]


#マキさん
「いやぁ～君休日は暇そうだしさ、よければ[r2]
もっとたくさんの場所紹介したいな～って。」[p]


[pname]
「あぁ。そういうこと。確かに暇だけれども。」[p]

#マキさん
「どう…かな？」[p]
#
せっかく女性のほうから誘ってくれているんだ。[r2]
断るのは男が、いや漢がすたる。[p]
それに…。[r2]
恋愛経験のない僕には二度こんなチャンスは訪れないだろう。[p]

ちょっとした脳内サミットを終了し、僕はYESの意思をみせる。[p]

[pname]
「じゃあ、よろしくお願いします」[p]



#マキさん
「やったッ！」[p]

#
嬉しそうに喜ぶ彼女をみて、[r2]
僕の中に変な感情がくすぶっていることに気づく。[p]
きっとこの感情は。[r2]
さっきのお寺で、彼女の横顔を見たときに生まれたものだ。[p]

;子生れ温泉後-------------------------------------------------------------------------------------------

#マキさん

「じゃあさ、次はいつにする？」[p]
#
その言葉に僕は[p]

『連絡先交換しようぜ！』[p]

陽キャなら容易に出そうな言葉を吐こうとする[p]


[pname]
「マキさんに合わせるよ」[p]

#マキさん
「そ？じゃあね～…」[p]

#
ここしかない！[p]


[pname]
「あ、ぁの」[p]


#マキさん
「ん？」[p]



[pname]
「れ、連絡先こぅかんしませんか？」[p]



#
そういってスマホを彼女の前に出す。[p]


が、[p]

[pname]
[playse storage="hatena.mp3"]
「…あれ？」
[p]

#
携帯がつかない。[p]


[pname]
「…ごめん。言い出しといて申し訳ないけど電池切れたみたい。」[p]


さっきまでそんなバッテリー減ってなかった気がするんだが！？[p]


#マキさん
「あはは。それは残念。」[p]


#マキさん
「じゃあ、来週の日曜日とかどう？」[p]



[pname]
「いいね。じゃあ集合場所どこにしよっか？」[p]


#マキさん
「じゃあね～…朝私達が出会った公園に十一時でどう？」[p]

[pname]
小堤山公園か。そんな遠くないし丁度いいな。[p]


「了解。車で迎えに行くよ」[p]





#マキさん
「ホントッ？やった！場所は私に任せて！じゃあ…また来週！」[p]
そういうと彼女は立ち上がり、足早に居間を出て行った。[p]
[playse storage="kieru.mp3"]
[h_maki]

[pname]
「ちょっ！えっ！？」[p]
…。[p]

#
すごいマイペースな子だったな…。[r2]
でも、デートの約束は取り付けたぞ！っし！[p]

[playbgm storage="beautiful_cityscape.mp3"]
小さくガッツポーズをつくった。[p]
[chara_show name="ozisan_koumare"]
と同時に、少し離れたところからこちらを見つめる、[r2]
見知らぬおじさんと目が合った。[p]
曇った表情を僕に向ける。[p]

そういえば他のお客さんもいるんだった。[r2]
彼女との会話に夢中になりすぎて忘れていたな。[p]

多分だが僕らは少し騒ぎすぎてしまったのだろう。[p]


あんまり長居してもあれだし、僕もそろそろここを出よう。[p]
[mask time=500]
[chara_hide name="ozisan_koumare" time=0]
[bg storage="koumare_onsen_front.jpg" time=0]
[mask_off]
;front


[chara_show name="bandai_koumare"]
#番台さん
「あ、お客様。チケットこちらにお願いします。」[p]

[pname]
　帰る時に半券を見せるシステムなのか。なるほど。[p]


「すいません初めてで。」[p]



#番台さん
「いえいえ。…あ！」[p]

[pname]
「どうしました？」[p]


#番台さん
「大変申し上げにくいのですが、お客様のチケットは[r2]
30分前に期限が切れております。」[p]
#
癖で電池が切れたであろう携帯を見る。[p]

あれ？[p]

画面にはでかでかと時刻が表示されていた。[p]


貴様…ッ！！！[p]


それはともかくとして、入館した時間からかなり経っていた。[p]

[pname]
「というと…？」[p]

#番台さん
「延滞料金発生します。」
[p]

[pname]
[playse storage="ti-n.mp3"]
…。[p]
[font size="60"]
WOW。[p]
[resetfont]

[mask time=1000]
[chara_hide name="bandai_koumare" time=0]

[end_replay]
[cg storage="koumare_onsen.jpg"]
;次のシーンへ
[jump storage="scene4.ks"]