# tyranoscript-plugin-glinks

ティラノスクリプト用プラグイン（マクロ）です。
複数のglinkタグを簡単に整列（中央揃え）できます。

## 使用例

### プラグイン呼び出し

```
[plugin name="glinks" button_width=400]
```

### マクロ呼び出し

選択肢2つ:

```
[glinks21 text="【１】選択肢　その１" target=*select1 color=btn_32_lime]
[glinks22 text="【２】選択肢　その２" target=*select2 color=btn_32_green]
```

選択肢3つ:

```
[glinks31 text="【１】選択肢　その１" target=*select1 color=btn_32_lime]
[glinks32 text="【２】選択肢　その２" target=*select2 color=btn_32_green]
[glinks33 text="【３】選択肢　その３" target=*select3 color=btn_32_blue]
```

選択肢4つ:

```
[glinks41 text="【１】選択肢　その１" target=*select1 color=btn_32_lime]
[glinks42 text="【２】選択肢　その２" target=*select2 color=btn_32_green]
[glinks43 text="【３】選択肢　その３" target=*select3 color=btn_32_blue]
[glinks44 text="【４】選択肢　その４" target=*select4 color=btn_32_purple]
```

## リファレンス

### プラグインの引数

|パラメータ|必須|デフォルト値|解説|
|---|---|---|---|
|button_width|〇|-|ボタンの横幅をピクセルで指定してください。この数値を基に中央揃えします。画像ではなく色を指定する場合、文字数によってずれるため適宜調整してください。|
|window_width|×|1280|ウィンドウの横幅をピクセルで指定してください。この数値を基に中央揃えします。|
|window_height|×|720|ウィンドウの高さをピクセルで指定してください。この数値を基になんとなく中央付近に来るように縦位置を設定します。|
|margin_top|×|0|上部のマージン（余白）をピクセルで指定してください。キャラクターの顔をボタンで隠したくない場合等に有用です。|
|margin_bottom|×|184|下部のマージン（余白）をピクセルで指定してください。メッセージボックスを隠したくない場合等に有用です。|

### 定義されるマクロ

* 選択肢2つ用
  * glinks21
  * glinks22
* 選択肢3つ用
  * glinks31
  * glinks32
  * glinks33
* 選択肢4つ用
  * glinks41
  * glinks42
  * glinks43
  * glinks44

### マクロの引数（共通）

|パラメータ|必須|解説|
|---|---|---|
|text|×|glinkタグのtextパラメータにそのまま渡されます。|
|target|×|glinkタグのtargetパラメータにそのまま渡されます。|
|color|×|glinkタグのcolorパラメータにそのまま渡されます。|

上記以外のパラメータを渡したい場合、init.ksを改変してください。

## ライセンス

パブリック・ドメインです。自由に改変してご利用ください。著作権表記は不要です。
