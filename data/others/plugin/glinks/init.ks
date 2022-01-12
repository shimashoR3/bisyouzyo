[iscript]
tf.button_width = parseInt(mp.button_width)
tf.window_width = parseInt(mp.window_width || 1920)
tf.window_height = parseInt(mp.window_height || 1080)
tf.margin_top = parseInt(mp.margin_top || 0)
tf.margin_bottom = parseInt(mp.margin_bottom || 184)

sf.x = tf.window_width / 2 - tf.button_width / 2
tf.area_height = tf.window_height - tf.margin_top - tf.margin_bottom

sf.y21 = tf.margin_top + tf.area_height * 0.3
sf.y22 = tf.margin_top + tf.area_height * 0.6

sf.y31 = tf.margin_top + tf.area_height * 0.25
sf.y32 = tf.margin_top + tf.area_height * 0.5
sf.y33 = tf.margin_top + tf.area_height * 0.75

sf.y41 = tf.margin_top + tf.area_height * 0.25
sf.y42 = tf.margin_top + tf.area_height * 0.43
sf.y43 = tf.margin_top + tf.area_height * 0.61
sf.y44 = tf.margin_top + tf.area_height * 0.79
[endscript]

[macro name=glinks21]
[glink x=&sf.x y=&sf.y21 text=%text target=%target color=%color clickse="se_tap.mp3"]
[endmacro]
[macro name=glinks22]
[glink x=&sf.x y=&sf.y22 text=%text target=%target color=%color clickse="se_tap.mp3"]
[endmacro]

[macro name=glinks31]
[glink x=&sf.x y=&sf.y31 text=%text target=%target color=%color clickse="se_tap.mp3"]
[endmacro]
[macro name=glinks32]
[glink x=&sf.x y=&sf.y32 text=%text target=%target color=%color clickse="se_tap.mp3"]
[endmacro]
[macro name=glinks33]
[glink x=&sf.x y=&sf.y33 text=%text target=%target color=%color clickse="se_tap.mp3"]
[endmacro]

[macro name=glinks41]
[glink x=&sf.x y=&sf.y41 text=%text target=%target color=%color clickse="se_tap.mp3"]
[endmacro]
[macro name=glinks42]
[glink x=&sf.x y=&sf.y42 text=%text target=%target color=%color clickse="se_tap.mp3"]
[endmacro]
[macro name=glinks43]
[glink x=&sf.x y=&sf.y43 text=%text target=%target color=%color clickse="se_tap.mp3"]
[endmacro]
[macro name=glinks44]
[glink x=&sf.x y=&sf.y44 text=%text target=%target color=%color clickse="se_tap.mp3"]
[endmacro]

[return]