;ゆうゆうランド

[set_replay name="yuuyuu_rando" storage="scene7.ks"]
;その後------------------------------------------------
; 記憶のフラッシュバック
; #
; ; 暗いBGM
[playbgm storage="healing12.mp3"]
; ; [bg storage="black.png" time=10]
; ; [layopt layer="message0" visible=false]
; ; [layopt layer="fix" visible=false]
; ; [mask_off]

; ; ; [image storage="comment1.jpg" layer=0]
; ; ; [wait time=100]
; ; [mask time=150]
; ; [filter grayscale=100]
; ; [playse storage="kyouhu.mp3"]
; [image storage="comment1_yume.jpg" layer=0]
; ; [mask_off]
; ; ; [image storage="comment2.jpg" layer=0]
; [wait time=100]

; ; ; [mask time=150]
; [image storage="comment2_yume.jpg" layer=0]
; ; ; [mask_off]
; [wait time=100]
; ; [mask time=500]
; ; [free_filter]
; [freeimage name="comment1_yume.jpg" layer=0]
; [freeimage name="comment2_yume.jpg" layer=0]
; ; ; [layopt layer="message0" visible=true]
; ; ; [layopt layer="fix" visible=true]
; ; [bg storage="room.jpg" time=10]
; ; [mask_off]

;布団から起き上がる効果音
[playse storage="wakeup.mp3" clear=true]
バッ！[p]



#&sf.name
「…」[p]
#
あの日。あいつとあんな別れ方をしてから5日経つ。[p]

あの出来事せいか、[p]


以前よりも、よりはっきり。より鮮明に、[r2]
あの記憶を夢に見るようになった。[p]


#&sf.name
「…今日は休日か。」[p]

#
あの日の翌日、僕たちは当然のように会社で顔を合わせるのだが[p]

; ;回想入る音
[playse storage="kaisou.mp3"]
; ; [mask time=300 color=0xffffff]
[bg storage="office.jpg" time=10]
; [filter grayscale=100]
[s_douryou time=10]
; ; [mask_off]

#&sf.name
「あ、お、おはよう」[p]

#同僚
「あぁ」[p]
; #
; ; [mask time=300 color=0xffffff]
[h_douryou time=10]
; [free_filter time=10]
[bg storage="room.jpg" time=10]
; [mask_off]

…。[p]


どことなくお互いやるせない気持ちを残していた。[p]



#&sf.name
「ちょっと出るか。」[p]

[mask time=1000]
[playse storage="door_open.mp3"]
[bg storage="car.jpg" time=10]
#
[mask_off]

#
どこというわけもなく、僕は車を走らせた。[p]

どこか、気が紛れる場所を求めて。[p]





; 車の走ってるSe
[playse storage="car_inside.mp3" loop=true]



…。[p]




…。[p]



…ッ！。[p]





いけない。ぼーっとしていたらよくわからない道に入ってしまった…。[r2]
戻らないと。[p]


どこか近場に車を停めてナビを見よう。[p]

どこか……….お、あそこだ。[p]
[bg storage="yuuyuu_rando10.jpg" time=700]
[bg storage="yuuyuu_rando11.jpg" time=700]
[bg storage="yuuyuu_rando2.jpg" time=700]






; ゆうゆうランド2
[stopse]
[bg storage="car.jpg"]
ナビナビ～っと…。[p]

#&sf.name
「あれ？」[p]

#
この車にはナビがついていない。[p]

だから、携帯で位置情報を探ろうとしたのだが…。[p]



#&sf.name
「…通信制限…か？？？？」[p]
#
携帯の上端には『圏外』の二文字。[p]

あれ、でも通信制限と圏外には関連性はないはずだが…。[p]


ましてやこのあたりは田んぼ道こそあれど、[r2]
車通りも少なくないし圏外になるほど田舎には見えない。[p]

携帯壊れたか？[p]



そういえば前の温泉でも急につかなくなったし…。[p]



うーん。どうしよう。[p]
[bg storage="yuuyuu_rando1.jpg"]
; 時間があったらzoom、もしくは拡大してそこに放射系モーションぼかしをした背景に変える
; [camera zoom=3 x=-130 y=300]
看板が視線に止まる。[p]


『ゆうゆうらんど』[p]

僕が今現在進行形で駐車場を借りている施設の名だ。[p]


#&sf.name
「ま、誰かしらいるだろ。」[p]


#
僕は中に入って誰かに道を聞くことにした。[p]





; 中ーーーーーーーーーーーーーーーーーーーーーーーーーーー
[mask time=1000]
[reset_camera time=10]
; 余裕があれば立ち絵を乗せた背景に変える
[bg storage="yuuyuu_rando9.jpg" time=10]

[mask_off]

２０分後[p]



; 立ち絵
わりと広いな...歩くだけで一苦労だ…[r2]
それに、さっきからチラホラ見受けられる人も子供ばかりだ。[p]

公園、みたいなところなのか？[p]




あの子たちに聞くのもありだが、最悪不審者として通報されかねない…[p]


…やはり大人を探そう。[p]

[mask time=1000]
[bg storage="yuuyuu_rando.jpg" time=10]
[mask_off]

さらに２０分後…[p]


「いない…」[p]


道を聞けそうな大人が。誰一人。[p]

いや、いたにはいたが赤ちゃんをあやしていたり[r2]
井戸端会議に花を咲かせていたりで、[p]
とても話しかけられる感じではなかった。[p]

少なくともコミュ障の僕には。[p]

#&sf.name
「ふぅ…」[p]

歩き疲れてしまった僕はそこにあったベンチに腰を降ろした。[p]
;腰を下ろす音

画面を見るも相変わらず携帯は使えそうにない。[p]


#&sf.name
「うむ。非常に困った。」[p]

#？？？
「ふむ、お困りかね？」[p]


#&sf.name
「ッ！！！！！！！！！」[p]

chara_show name="maki" top=130 width="746" height="1064"

#&sf.name
「びっ....くりした。え、マキさんッ！？」[p]


; マキ　chara_mod　でdefaultに
#マキさん
「やあ。どうしたんだいそんな暗い顔して。」[p]
「ほら、あんまり君が辛気臭い顔してるから[r2]
子供たちがちらちらこっちみてるぞぉ」[p]


#
ちらっ[p]

; 時間に余裕があれば他のモブと同じように遠目に配置してカメラでそっちに顔を向ける
[chara_show name="kodomo_yuuyuu"]
[chara_show name="kodomo_yuuyuu2"]
子供たちと目が合う。それと同時に彼らは目を逸らすと[r2]
;効果音　子供　叫ぶ
[playse storage="himei.mp3"]
[chara_hide name="kodomo_yuuyuu" time=1000]
[chara_hide name="kodomo_yuuyuu2"]
笑い声なのか悲鳴なのかわからない声とともに[p]
どこかへ走って行ってしまった。[p]

#&sf.name
「あ…」[p]


#マキさん
「あー。逃げられちゃった。」[p]

#
……。[p]


#&sf.name
「ところでマキさんはなぜここに？」[p]


#マキさん
「散歩だよ散歩。」[p]


#&sf.name
「随分と遠くまで来るんだね…。」[p]


#マキさん
「まぁね。きみはなぜここに？」[p]



#&sf.name
「まぁ、行き場を求めて放浪している最中というかなんというか。」[p]


#マキさん
「なるほど。迷子か」[p]



#&sf.name
「なかなか鋭いじゃあないか。」[p]


#マキさん
「なんとなく遠くから見ててわかったけどね」[p]

#&sf.name
「ぐ….....。」[p]


#
そして『ゆうゆうらんど』に入ってから現在までのことのいきさつを[r2]
僕は彼女に話した。[p]
彼女は笑い、そして帰りは僕の車に乗り[r2]
道案内をしてくれるとのことで話がついた。[p]
[playbgm storage="siawase_sanpo.mp3"]
#&sf.name
「本当に面目ない…。」[p]

#マキさん
「いいよ。そのかわり[r2]
少し一緒に散歩しよ！」[p]

#&sf.name
「え、まぁそれくらいなら。」[p]

#マキさん
「よし！じゃあ出発～」[p]
#
急に舞い込んだデートのチャンス[p]

でも、『やったぜ。』[r2]
…とは手放しで喜べない自分がいた。[p]



; 「「「「「「「「「画像回す」」」」」」」」」」」」」」」」[p]
; [bg storage="yuuyuu_rando5.jpg"]
; [bg storage="yuuyuu_rando8.jpg"]
; [bg storage="yuuyuu_rando9.jpg"]
; [bg storage="yuuyuu_rando7.jpg"]

; [mask time=1000]
; [bg storage="yuuyuu_rando6.jpg"]
; [mask_off]
#マキさん
「よーし。満喫したしかえろうか。」[p]


#&sf.name
「…」[p]


#マキさん
「[player]？？？」[p]


#&sf.name
「ッ！ごめんごめん。ぼーっとしてた！」[p]

「そうだね。そろそろ帰ろっか！」[p]



#マキさん
「うん。あ、でも帰りにちょっと寄り道したいとこあるんだけど…[r2]
……いいかな？」[p]


#&sf.name
「もちろんだとも。」[p]

#
そうして僕はマキさんの案内のもと「寄り道したいところ」へ[r2]
向かうため、この場を後にしたのだった。[p]
; [mask time=1000]

[end_replay]
[cg storage="yuuyuu_rando.jpg"]
[jump storage="scene8.ks"]