;小堤山公園

[set_replay name="kodutumiyama_kouen" storage="scene1.ks"]
#

[playbgm storage="beautiful_cityscape.mp3"]
[if exp="tf.room!=1"]
[bg storage="room.jpg"]
[endif exp="tf.room=0"]
[mask_off]

;ノイズ映像回想
[mask graphic="noise.gif" time=150]
[playse storage="noise.mp3"]
[mask_off]


[pname]
「…」[p]
#
…またあの夢か。[p]


…またか。[p]

最近になってからだろうか。あの夢を見始めるようになったのは。[p]
あの日の惨めな記憶を。[p]

[pname]
「…会社行かなきゃ。」[p]

#
僕は今年から新社会人となった。[p]
正確には、今はまだ新人研修中の身だ。[p]

僕の勤める本社は島根にある。[r2]
だが、本社の子会社がこの地にあるらしく、飛ばされてきたのだ。[p]
[pname]
「はぁ。にしても遠すぎるだろ…。」[p]


#
なんつったっけ。ここ。[p]

…あぁ、そうだ。たしか…「牧之原」、だったか？[p]

[pname]
「ん？今日は土曜日か。」[p]

#
忙しい日々のせいで休日という概念をわすれていた。[p]

[pname]
「…...少し出かけるか。」[p]
#
[bg storage="genkan.jpg" time="100"]


#
僕は先週この地、牧之原に転勤してきたしがない会社員だ。[r2]
今は相良という地に居住している。[p]
[playse storage="door_open.mp3"]
#
;背景　小堤山公園
[bg storage="kodutumiyama_kouen.jpg"]

四月。僕の頬を撫でる早朝の外気はまだ冷たい。[p]

特に行く当てもなくさまよっていると、少し広めな公園に辿り着いた。[p]



休日と言えど、早朝の公園はとても静かだ。[r2]
;時間に余裕があれば動かす（右から左？） animタグ

[chara_show name="running_woman" top=200 left=1500]
[anim name="running_woman" left=-800 time=10000]
;ランニングする足音
[playse storage="run_park.mp3" loop=true]
見受けられるのはランニングをしている中年の女性が一人。[p]

「朝からご苦労なことで」[r2]
心の中で悪態をつく。[p]

僕の前を通り過ぎていく女性を、静かに傍観する。
[wa]
[stopse]
[p]
[chara_hide name="running_woman" time=10]
そして僕は再び歩きだす。[p]


……。[p]


しかし、この土地にきてもう一週間が経つわけだが、[r2]
この牧之原の土地はほんと…。[p]


行く当てがない。[r2]
…文字通りに。[p]

簡素な土地だなと思ってはいたが、まさかこんなにも….…。[p]





ほんっと。[p]




; [wait time="300"]
[pname]
「……何もないところだな。」[p]



#少女
「何がだい？」[p]


[pname]
「ぅおっ！」[p]

#
突然背後から発せられた声に思わず僕は驚きの声を漏らす[p]


そして反射的に後ろを振り返る。[p]



そこには、 一人の美少女が立って…[p]

;立ち絵表示
[s_maki]
;カメラ効果を使ってマキの頭部をズーム→そこから全身を上から下に移す←いらない？
いやなんかものすごい奇抜な髪色をした少女が立っていた。[r2]
ヤンキー？[p]

目測だが二十歳くらいか。[r2]
だとすると少女かどうかも微妙なラインだな…。[p]


…微少女、か。[wait time="300"]　　……ㇷ ッ[p]


#微少女
「？　　ねぇ。」[p]


[pname]
「…っ！　すみません！なんでしたっけ？」[p]



#微少女
「だからー、何もないってこの土地のこと？」[p]



しまった。先程の独り言を現地民に聞かれてしまったか…。[p]



[pname]
「いえ、なんでもないです。では、ぼくはこれで失礼します。」[p]
#
迅速にこの場を離れたほうがいいと判断した僕はその一言を言い残し、[r2]
足早に微少女から離れた。[p]

もめごとは嫌いだ。[p]

しかし[p]



#微少女
「まった。」[p]

#
彼女に手をつかまれてしまった。[r2]
まずい。まぁ、そりゃそうか。[p]
自分の住んでる土地をバカにされたら怒るよな。[r2]
僕、どうなるんだろう。ぼこぼこにされるんかな…。[p]

ところが、彼女の表情に怒りは伺えず、[r2]
それどころか口元をニヤリとさせ、こう言った。[p]



#微少女
「ついておいで」[p]

[pname]
「ふぇ？」[p]
#
[mask time=1000]
[cg storage="kodutumiyama_kouen.jpg"]
[end_replay]

;次のシーンへ
[jump storage="scene2.ks"]

