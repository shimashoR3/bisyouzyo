[iscript]
tf.__close_dialog = {
    text: mp.text || "ゲームを終了しますか？",
    ok: mp.ok || "はい",
    cancel: mp.cancel || "いいえ",
}
[endscript]

[loadjs storage="plugin/close_dialog/main.js"]

[return]