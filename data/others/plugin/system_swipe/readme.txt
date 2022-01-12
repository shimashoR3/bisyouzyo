==================================================================
システムスワイププラグイン  Ver 1.01  2021/07/28

   制作 （猫）milkcat
     HP  https://milkcat.jp/
Twitter  https://twitter.com/nekomilkcat
==================================================================

ティラノスクリプトV4系、V5系に対応しています。（ http://tyrano.jp ）

このプラグインを導入することで、セーブ画面、ロード画面、バックログ画面で
スマートフォンなどのタッチパネルデバイスでスワイプ操作でのスクロールが可能となります。


■導入方法

１．
このテキストと同じフォルダにある「system_swipe」フォルダを
使用するプロジェクトフォルダの「data/others/plugin」
にコピーしてください。
(「data/others/plugin/system_swipe/init.ks」　となるように配置してください。)

２．
first.ks、またはその直後に読み込むksファイル
（ビルダーの場合は[data/scenario/system/plugin.ks]の1行目を推奨）などの
ゲーム起動時に必ず通過するシナリオファイルで

[plugin name="system_swipe"]

と記述します。


以上で、セーブ画面、ロード画面、バックログ画面でのスワイプ操作が可能となります。
また、スマートフォン用に表示されるスクロール用の上下ボタンはデフォルトで非表示となります。

スクロール用ボタンを残したい場合は下記の記述でプラグインを読み込みます。

[plugin name="system_swipe" hide_button="false"]



■技術情報

本プラグインではティラノスクリプト本体の下記の機能を上書きしています。

kag.menu.js  tyrano.plugin.kag.menu.displaySave
             tyrano.plugin.kag.menu.displayLoad
             tyrano.plugin.kag.menu.displayLog


■使用ライブラリ

perfect-scrollbar.js Ver1.5.2
https://github.com/mdbootstrap/perfect-scrollbar


■利用規約

・本プラグインは無料で利用できます
・本プラグインの改変は自由です。カスタマイズして使用しても構いませんが、ソース上部のクレジット部分は残してください
・本プラグイン自体の再配布は禁じます
・商用利用可です
・下記のクレジット表記をお願いします（URLは任意）
　（猫）milkcat　https://milkcat.jp/
　　もしくは
　ねこの　（https://twitter.com/nekomilkcat）


■免責事項

本プラグインを使用したことにより生じた如何なる
損害及び損失に対し、制作者は一切責任を負いません。


■当サークルへの支援について

当サークルの制作活動は、皆様からのご支援によって成り立っております。
プラグインがお役に立てましたら、少額からでもご支援いただけると幸いでございます。
次回作の制作費やイベントの参加費、サーバー運用費などの活動資金とさせて頂きます。

https://milkcat.jp/mail.htm#Donation


■バグ報告などの連絡先
メールフォーム　https://milkcat.jp/mail.htm
Twitter DM　　　https://twitter.com/nekomilkcat


■更新履歴
Ver1.01  2021/07/28    他プラグインとのバックログのスワイプ操作の競合を回避

Ver1.00  2021/07/27    初公開
