; ノーマルエンド
; 静岡空港

[set_replay name="normal_end" storage="scene11_1.ks"]
[bg storage="room.jpg" time=10]
;あえてBGMつけない
[stopbgm]
[mask_off]
; ｐｉｐｉｐｉｐｉッ！！！！！
[playse storage="mezamasi.mp3" clear=true]
#
いつもより大きく聞こえてくる目覚ましの音。[p]
#&sf.name
「ん～…。うるさいなぁ…」[p]

; 目覚まし止める効果音（ガチャ）
[playse storage="mezamasi_stop.mp3"]

「…」[p]


「…ｚｚｚ」[p]

#
; 黒フェードアウト
[mask time=1000]
[bg storage="room.jpg" time=10]
; 時計の針の音効果音
[playbgm storage="byousin.mp3"]
[mask_off]
#&sf.name
「…」[p]

「ん、…」[p]
#
時計と再び目を合わせる。[p]
;11:20の時計　表示
#&sf.name
「ん～？…。」[p]

「…。」[p]

「……ゲッ！！！」[p]


「やばい。マジでやばいッ！！」[p]

#
今日、僕たち研修生は１２時発の飛行機に乗り、中国地方へ発つ。[p]


予定だった。[p]


時計の針は現在午前１１時２０分を指していた。[p]


[playbgm storage="chinmokunorasen.mp3"]

#&sf.name
「しまったッ昨日帰るの遅かったせいだッ！！！」[p]
#
昨日のうちに荷物はまとめてあったのだけは[r]
不幸中の幸いと言えようか。[p]

いいやそんなこと今はどうでもいい。[p]

[bg storage="genkan.jpg"]
[playse storage="door_open.mp3"]
僕は急いで扉を開け、
[bg storage="apartment.jpg"]
住んでたアパートの大家さんに一言[r]
挨拶をしてから急いで空港へ向かった。[p]

社用車はもう返しちゃったし…。[p]

…やむを得ない。[p]

再び前のタクシー会社へ電話を掛けた。[p]

[playse storage="phone_call.mp3" clear=true]
[stopse]
#&sf.name
「すいませんッ大至急お願いします！」[p]
#
[bg storage="taxi.jpg"]
[playse storage="car_inside.mp3" clear=true]
[bg storage="taxi_inside.jpg"]

[mask time=1000]
[mask_off]
#
【数十分後】[p]

ガチャッ[p]
[playse storage="car_open.mp3"]

#&sf.name
「ありがとうございました！」[p]

[mask time=1000]
#
[bg storage="sizuoka_kuukou_gaikan.jpg" time=10]
[mask_off]

; できるなら集中線で走っている感を出す
#
時間は9時５０分。[r]
かなりまずい。[p]


[playse storage="run_asufaruto2.mp3" buf=1]
ダッシュで空港内へ入る。[p]
[bg storage="sizuoka_kuukou_naisou.jpg"]
; 空港内部
; 空港の効果音　効果音ラボ
[playse storage="kuukou.mp3" loop=true]
[s_douryou]
#同僚
「ん？あ！おーーーいッ！！こっちこっち！」[p]
#
同僚が搭乗口で待っていた。[p]

なんとか間に合ったようだ。[p]
[stopse buf=1]



#同僚
「おっせえよ。何してたんだよ。」[p]

#&sf.name
「ごめん寝坊した。」[p]


#同僚
「しょうがねぇ奴だな。ほら、行くぞ。」[p]



#&sf.name
「あ、あぁ。」[p]
[stopse]
; 無名か主人公名か???か
#???
『...…』[p]

#&sf.name
「ん？」[p]

#同僚
「おいどうした。早く行かないと飛行機出ちまうぞ。」[p]

#&sf.name
「今…」[p]

「いや、何でもない.。ごめん行こうか。」[p]
#
マキさんのようなそうでないような声が聞こえた気がした。[p]

…そんなわけないか。[p]

まぁ。いつかまた来よう。[p]

いつになるかわからないが…。[p]

伝え忘れた言葉はその時に。[p]

【エピソード　Normal】[p]
[mask time=2000]
[playse storage="plane_fly.mp3"]
[wait time=1000]
[end_replay]
[cg storage="sizuoka_kuukou.jpg"]

[iscript]
//ノーマルルートをクリアした
sf.clear_root1=1
//どこからクレジットにアクセスしたか
tf.from=1
[endscript]
[jump storage="credit.ks"]


