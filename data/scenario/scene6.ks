
; 森木農園前

[set_replay name="moriki_nouen" storage="scene6.ks"]

#
[bg storage="office.jpg"]
[playbgm storage="beautiful_cityscape.mp3"]
[mask_off]
#
【会社にて】[p]
マキさんとあの日会って以来二週間がたとうとしている。[p]

[s_douryou]
#同僚
「なぁ[player]。」[p]

#
また会いたいなぁ[p]


#同僚
「おい？」[p]

#
次はいつ会えるのだろうか[p]


#同僚
「コミュ障クソメガネ」[p]

#&sf.name
「あぁ、ごめん。どうしたの？[r]
あれ、お前今なんて言いやがりました？」[p]


#同僚
「飯いこーぜ」[p]

#&sf.name
「お？喧嘩か？　あと僕眼鏡かけてないが？ないんだが？」[p]


#同僚
「俺行ってみたいとこあんだよね。」[p]

#&sf.name
「え、なにそういう感じ？[r]
........まあええわ。[p]
どこ？」[p]


#同僚
「かき氷食いたい」[p]


#&sf.name
「飯かき氷て。女子か。[r]
もっとガッツリいきたいんだが。」[p]



#同僚
「まあまあ。たまにはさ、な？」[p]


#
あまりにもしつこく粘るので、[r]
こいつの意を渋々汲んでやることにした。[p]


#&sf.name
「はぁー…わかった。」[p]


#同僚
「っし。」[p]

#
僕は立ち上がり、作業デスクを後にする。[p]


#&sf.name
「…あ、ちょいまち」[p]

#同僚
「あ？」[p]

#
急いで席に戻る。[r]

[playse storage="hikizuru.mp3" sprite_time=10-2000]
[wait time=2000]
[image storage="huutou.png" layer=1 top=30 left=600]
そして、デスクの片隅に置いておいた茶色の封筒を手に取る。[p]
;茶色の封筒の画像表示？
[freeimage name="huutou.png" layer=1]

#&sf.name
「すまんね、じゃあ行こうか。」[p]



#同僚
「なん、それ[r]
仕事の書類か？昼ぐらいおいてけよ鬱陶しい。」[p]


#&sf.name
「違う。安心しろ仕事には一切関係ないから」[p]



#同僚
「じゃあなんだよそれ」[p]


#&sf.name
「なんでもないさ。それよりも営業課の○○さんさ～」[p]


#同僚
「？？お。おう」[p]

#
僕らは仕事場を後にした。[p]
[mask time=1000]
;森木農園ーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
[h_douryou time=10]

[bg storage="car.jpg" time=10]
[mask_off]
#
車は出してくれると言ったので、[r]
僕たちはそのまま彼の言うかき氷へ向かった[p]

しかし[r]
外は照りつける日差しと湿った空気で,肌に張り付く服が気持ち悪い[p]

#同僚
「あと少しの辛抱だぜ」[p]


#&sf.name
「なんでお前の車エアコンついてないの？」[p]


#同僚
「古い車じゃけぇ」[p]


#&sf.name
「何犬だよ」[p]
#
…….[p]

#
僕らを乗せた車は脇道に入り、手頃な空き地にとまった。[p]



#同僚
「よし」[p]


#&sf.name
「いやなんもないけど。ここ」[p]


#同僚
「ちょっとだけ歩くぞ[r]
ここ道狭いから」[p]


#&sf.name
「はぁー…わかったよ。」[p]

#
[playbgm storage="tanosii.mp3"]
;  森木農園の外観
[bg storage="moriki_nouen_gaikan.jpg"]
[s_douryou time=10 left=-200]
#
【森木農園にて】[p]
; ptext



#同僚
「ここ」[p]



#&sf.name
「うん、ほんとにちょっとだったわ」[p]



#同僚
「言うたやん」[p]

[image storage="moriki_nouen_kanban.jpg" layer=1 x=600 y=30 time=500]
#&sf.name
「えーと、森...木…農園？」
[p]
[freeimage layer=1 name="moriki_nouen_kanban.jpg" layer=1]
#
[bg storage="moriki_nouen_uketori.jpg"]
[playse storage="gaya2.mp3" loop=true]
#人混み
「ざわ...ざわ...」[p]


#&sf.name
うわぁ[r]
結構人いるね。[p]


#同僚
「人気すごいんだぜここ」[p]
[image storage="moriki_nouen_menu.jpg" layer=1 x=600 y=20]
#&sf.name
へーアイスに,お茶に、結構幅広いな。[p]
[freeimage layer=1 name="moriki_nouen_menu.jpg"]
[image storage="moriki_nouen_board.jpg" layer=1 x=500 y=30]
#同僚
「お！６月限定のいちごパフェだって。俺これにしよ」[p]

#&sf.name
「いやかき氷わい」[p]


....じゅるり[p]

#&sf.name
「....................僕もそれにしよ。」[p]

[freeimage name="moriki_nouen_board.jpg" layer=1]

; ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー


[playse storage="rezi.mp3"]
#店員さん
「ありがとうございましたー」[p]
#

[mask time=1000]
[bg storage="moriki_nouen_seat.jpg" time=10]
;位置移動
[h_douryou time=10]
[s_douryou time=10 left=950]
; かき氷？パフェ？の画像
[image storage="moriki_nouen_pafe.png" layer=1 x=600 y=30]
; [anim name="douryou" left=-250]
[mask_off]

#同僚
「うおーめっちゃうまそう！」[p]

#&sf.name
「これはなかなか....。」[p]


#同僚
「いただきまぁーす！」[p]

#&sf.name
「いただきます」[p]

#
パク。[p]


....！[p]


パクパク[p]

;効果音



ヨーグルトにいちごの果実が残るコンフィチュール。[r]
うすーく削ったいちごに濃厚マスカルポーネアイス。[p]
上に載ったナッツと生クリーム。そして、いちごアイス。[r]
一つのパフェで味や食感の組み合わせが楽しめる！[p]


…...うまい！[p]

#同僚
「めっちゃうまいなこれ！！」[p]

#&sf.name
「そうだな！」[p]
#
[freeimage name="moriki_nouen_pafe.jpg" layer=1]

[playbgm storage="flutter.mp3"]
; 不穏なBGM

#同僚
「ところでさ」[p]


#&sf.name
「ん。」[p]

#同僚
「お前がさっき大事そうに持ってきた封筒だけど何が入ってんの？」[p]

#&sf.name
「何でもないって。」[p]


#同僚
「何でもないわけないだろ。だってお前....[r]
片手に財布片手にでかい茶封筒って....」[p]

「小説家かよ。」[p]


#
ギクッ[p]




#&sf.name
「....なんでもないったら。」[p]

[playbgm storage="kiki.mp3"]
#同僚
「ふーん....ちょっと見せろ！」[p]

;同僚立ち絵変化
[chara_mod name="douryou" face="huutou"]
#
そういうと、僕の横に置いてあった封筒を強引に奪った。[p]

#&sf.name
「ちょっ！！[r]
やめろ！」[p]

#
封筒の口に指をかける[p]

#同僚
「いいだろ別に」[p]


#&sf.name
「おい！！」[p]


#同僚
「ちょ、おま」[p]


#&sf.name
「...お前。もし中身見たら..」[p]
#
ギロッ[p]



#douryou:default
「わかった。わかったからそんなにマジになんなよ....」[p]
[playbgm storage="gisinanki.mp3"]
#
....！[p]


気が付くと、周りの視線が僕たちに集まっていた。[p]


#&sf.name
「あ、えっと.....」[p]



#同僚
「.....とりあえずここ離れよう。」[p]


#&sf.name
「うん......」[p]

#
再び会社へ向かう道中、僕たちは一言も会話をかわさなかった。[p]

そして、気まずさを残したまま一日を終えた。[p]

; [mask time=1000]
[h_douryou time=10]

[end_replay]
[cg storage="moriki_nouen.jpg"]
[jump storage="scene7.ks"]