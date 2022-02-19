;確認用ダイアログ

*backtitle
; [layopt layer=1 visible=true top=0 left=0]
; [image layer="1" storage="../image/dialog_box.png" x=600 y=300]
; [button graphic="dialog_box.png" x=450 y=150]

; [button graphic="button/yes.png" x=650 y=700 target="*yes"]
; [button graphic="button/no.png" x=800 y=700 target="*no"]
[dialog type="confirm" text="タイトルへ戻りますか？" target="*yes" target_cancel="*no" label_ok="はい" label_cancel="いいえ"]

[s]

*doSaveNotification
; [layopt layer=1 visible=true]
; [image layer="1" storage="../image/dialog_box.png" x=600 y=600]
; [wait time=3000]
; [freeimage layer="1"]
[dialog type="alert" text="セーブしました。"]
[awakegame]
[s]


*yes
[freeimage layer=0]
[breakgame]
[jump storage="title.ks"]

*no
[awakegame]