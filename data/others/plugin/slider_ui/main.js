const __slider_ui = {
    updateRange:  function(name, w){
        var rangeValue = $("#input_" + name).val();
        var active = w * ((rangeValue - $("#input_" + name).attr("min")) / ($("#input_" + name).attr("max") - $("#input_" + name).attr("min")));
        var param = {width: active + "px"}
        let left = $("#input_" + name).css("left").replace("px", "")
        $("." + name).find(".range_active").css(param);
        let tip = $("." + name).find(".range_tip")
        if(tip.length > 0){
            tip.css({
                left: parseInt(left) + parseInt(active) - (parseInt(tip.css("width").replace("px", "")) / 2) + "px",
            });
            tip.html(rangeValue)    
        }
    },
    convertColor: function(color){
        return $.convertColor(color).replace("=", "#")
    }
}

//スライダー
tyrano.plugin.kag.tag.slider = {
    vital: [
        "x", "y", "name",
    ],
    pm: {
        name: "",
        x: "",
        y: "",
        width: "400",
        height: "4",
        min: "0",
        max: "100",
        step: "1",
        border: "0",
        border_color: "white",
        border_radius: "30",
        thumb_width: "30",
        thumb_height: "30",
        thumb_radius: "30",
        thumb_color: "white",
        thumb_border: "0",
        thumb_border_color: "white",
        thumb_img: "",
        base_color: "#999",
        active_color: "white",
        storage: "",
        target: "",
        exp: "",
        preexp: "",
        var: "",
        tip_width: "0",
        tip_height: "0",
        tip_color: "white",
        tip_radius: "0",
        tip_text_color: "black",
        tip_text_size: "24",
        tip_tail: "true",
        tip_pos: "top",
        tip_margin: "0",
    },
    start: function(pm){
        const that = TYRANO
        const _pm = pm
        const name = _pm.name
        const variable = that.kag.embScript(_pm.var)

        const layer = TYRANO.kag.layer.getLayer("fix")

        let wrap = $('<div class="range fixlayer"></div>')
        let base = $('<div class="range_base"></div>')
        let active = $('<div class="range_active"></div>')
        let input = $('<input type=range>')
        let tip = $('<div class="range_tip"></div>')

        wrap.addClass(name)
        tip.addClass(name)
        input.attr({
            name: name,
            min: _pm.min,
            max: _pm.max,
            step: _pm.step,
        })
        input.attr({
            id: "input_" + name,
            value: variable,
        })

        base.css({
            background: __slider_ui.convertColor(_pm.base_color),
            position: "absolute",
            top: _pm.y + "px",
            left: _pm.x + "px",
            width: _pm.width + "px",
            height: _pm.height + "px",
            "border": _pm.border + "px solid " +  __slider_ui.convertColor(_pm.border_color),
            "border-radius": _pm.border_radius + "px",
        })
        active.css({
            background: __slider_ui.convertColor(_pm.active_color),
            position: "absolute",
            top:  parseInt(_pm.border) + parseInt(_pm.y) + "px",
            left: parseInt(_pm.border) + parseInt(_pm.x) + "px",
            height: _pm.height + "px",
            width: _pm.width + "px",
            "border-radius": _pm.border_radius + "px",
        })
        if(_pm.thumb_img !== ""){
            input.css({
                top: _pm.y + "px",
                left: _pm.x + "px",
                width: _pm.width + "px",
                height: _pm.height + "px",
                "--thumb-width": _pm.thumb_width + "px",
                "--thumb-height": _pm.thumb_height + "px",
                "--thumb-img": `url(../../../image/${_pm.thumb_img})`,
            })    
        }else{
            input.css({
                top: _pm.y + "px",
                left: _pm.x + "px",
                width: _pm.width + "px",
                height: _pm.height + "px",
                "--thumb-width": _pm.thumb_width + "px",
                "--thumb-height": _pm.thumb_height + "px",
                "--thumb-radius": _pm.thumb_radius == "0" ? "none" : _pm.thumb_radius + "px",
                "--thumb-color": __slider_ui.convertColor(_pm.thumb_color),
                "--thumb-border": _pm.thumb_border + "px solid " + __slider_ui.convertColor(_pm.thumb_border_color),
            })    
        }

        let _top = 0
        let _tail_top = "none"
        let _tail_bottom = "none"
        let _tail_arrow = ""
        let _tail = "none"
        if(_pm.tip_tail == "true"){
            _tail = "block"
        }
        if(_pm.tip_pos == "top"){
            _top = parseInt(_pm.y) - parseInt(_pm.tip_height) - parseInt(_pm.tip_margin) + "px"
            _tail_top = parseInt(_pm.tip_width) + "px solid " + _pm.tip_color
            _tail_arrow = parseInt(_pm.tip_height) / 2 * 1
        }else{
            _top = parseInt(_pm.y) + parseInt(_pm.tip_margin) + "px"
            _tail_bottom = parseInt(_pm.tip_width) + "px solid " + _pm.tip_color
            _tail_arrow = parseInt(_pm.tip_height) / 2 * -1
        }
        tip.css({
            position: "absolute",
            top: _top,
            opacity: 0,
            "z-index": "999",
            width: _pm.tip_width + "px",
            height: _pm.tip_height + "px",
            background: __slider_ui.convertColor(_pm.tip_color),
            color: __slider_ui.convertColor(_pm.tip_text_color),
            "font-size": _pm.tip_text_size + "px",
            "text-align": "center",
            "line-height": _pm.tip_height + "px",
            "border-radius": _pm.tip_radius + "px",
            "--tip_width": _pm.tip_width + "px",
            "--tip_height": _pm.tip_height + "px",
            "--tip_color": __slider_ui.convertColor(_pm.tip_color),
            "--tip_tail": _tail,
            "--tip_tail_top": _tail_top,
            "--tip_tail_bottom": _tail_bottom,
            "--tip_tail_arrow": _tail_arrow + "px"
        })

        
        wrap.append(base).append(active).append(input)
        if(_pm.tip_width != "0"){
            wrap.append(tip)
        }
        layer.append(wrap)
        __slider_ui.updateRange(_pm.name, _pm.width)

        that.kag.event.addEventElement({
            tag: "slider",
            j_target: input,
            pm: pm,
        })
        this.setEvent(input, pm)
        that.kag.ftag.nextOrder()
    },
    setEvent: function(input, pm){
        const that = TYRANO
        const _pm = pm

        //ツマミを動かしているとき
        input.on("input", function(e){
            $("." + _pm.name).find(".range_tip").css({
                opacity: 1,
            })
            __slider_ui.updateRange(_pm.name, _pm.width)
            that.kag.embScript(_pm.var + " = " + this.value)
            if(_pm.exp != ""){
                that.kag.embScript(_pm.exp, _pm.preexp)
            }
        })

        //ツマミを動かし終わったとき
        input.on("change", function(){
            $("." + _pm.name).find(".range_tip").css({
                opacity: 0,
            })
            //fixレイヤの場合はcallでスタックが積まれる
            if (_pm.storage != "" || _pm.target != "") {
                //コールスタックが帰ってきてない場合は、実行しないようにする必要がある
                //fixの場合はコールスタックに残る。
                var stack_pm = that.kag.getStack("call"); //最新のコールスタックを取得
                if(stack_pm == null){
                    //strong_stopの場合は反応しない
                    var _auto_next = _pm.auto_next;
                    if(that.kag.stat.is_strong_stop == true){
                        _auto_next = "stop";
                    }
                    //call実行
                    $("input").prop("disabled", true)
                    that.kag.ftag.startTag("call", {
                        storage: _pm.storage,
                        target: _pm.target,
                        auto_next: _auto_next
                    });
                }else{
                    //スタックが残っている場合
                    that.kag.log("callスタックが残っている場合、fixボタンは反応しません");
                    that.kag.log(stack_pm);
                    return false;
                }
            }
        })
        input.on("mouseup", function(){
            $("." + _pm.name).find(".range_tip").css({
                opacity: 0,
            })
        })
    
    }
}
tyrano.plugin.kag.ftag.master_tag.slider = tyrano.plugin.kag.tag.slider
tyrano.plugin.kag.ftag.master_tag.slider.kag = tyrano.plugin.kag


//スイッチ
tyrano.plugin.kag.tag.switch = {
    vital: [
        "x", "y", "name",
    ],
    pm: {
        name: "",
        x: "",
        y: "",
        width: "60",
        height: "4",
        border: "0",
        border_color: "white",
        border_radius: "30",
        thumb_width: "30",
        thumb_height: "30",
        thumb_radius: "30",
        thumb_color: "white",
        thumb_border: "0",
        thumb_border_color: "white",
        thumb_img: "",
        base_color: "#999",
        active_color: "white",
        storage: "",
        target: "",
        storage: "",
        target: "",
        var: ""
    },
    start: function(pm){
        const that = TYRANO
        const _pm = pm
        const name = _pm.name
        const variable = that.kag.embScript(_pm.var)
        const color = variable ? __slider_ui.convertColor(_pm.active_color) : __slider_ui.convertColor(_pm.base_color)

        const layer = TYRANO.kag.layer.getLayer("fix")

        let wrap = $('<div class="fixlayer"></div>')
        let input = $('<input type=checkbox />')
        let label = $('<label />')
        
        wrap.addClass(name)
        wrap.css({
            position: "absolute",
            top: _pm.y + "px",
            left: _pm.x + "px",
            width: _pm.width + "px",
            height: _pm.height + "px",
        })
        input.attr({
            id: "input_" + name,
        })

        label.attr({
            for: "input_" + name,
        })

        input.css({
            display: "none",
            opacity: 0,
            width: _pm.width + "px",
            height: _pm.width + "px",
        })
        if(_pm.thumb_img != ""){
            label.css({
                position: "absolute",
                cursor: "pointer",
                background: color,
                border: _pm.boder + "px solid " + __slider_ui.convertColor(_pm.border_color),
                "border-radius": _pm.border_radius == "0" ? "none" : _pm.border_radius + "px",
                width: _pm.width + "px",
                height: _pm.height + "px",
                display: "inline-block",
                transition: "0.2s",
                "box-sizing": "border-box",
                "--thumb_top": (_pm.thumb_height - _pm.height) / 2  * -1  - _pm.border/2 + "px",
                "--thumb-width": _pm.thumb_width + "px",
                "--thumb-height": _pm.thumb_height + "px",
                "--thumb-img": `url(../../../image/${_pm.thumb_img})`,
                "--thumb-move": _pm.width / 2 + "px",
                "--active-color": __slider_ui.convertColor(_pm.active_color),
            })
        }else{
            label.css({
                position: "absolute",
                cursor: "pointer",
                background: color,
                border: _pm.boder + "px solid " + __slider_ui.convertColor(_pm.border_color),
                "border-radius": _pm.border_radius == "0" ? "none" : _pm.border_radius + "px",
                width: _pm.width + "px",
                height: _pm.height + "px",
                display: "inline-block",
                transition: "0.2s",
                "box-sizing": "border-box",
                "--thumb_top": (_pm.thumb_height - _pm.height) / 2  * -1  - _pm.border/2 + "px",
                "--thumb-width": _pm.thumb_width + "px",
                "--thumb-height": _pm.thumb_height + "px",
                "--thumb-radius": _pm.thumb_radius == "0" ? "none" : _pm.thumb_radius + "px",
                "--thumb-color": __slider_ui.convertColor(_pm.thumb_color),
                "--thumb-border": _pm.thumb_border + "px solid " + __slider_ui.convertColor(_pm.thumb_border_color),
                "--thumb-move": _pm.width / 2 + "px",
                "--active-color": __slider_ui.convertColor(_pm.active_color),
            })
        }
        input.prop("checked", variable)
    
        wrap.append(input)
        wrap.append(label)
        layer.append(wrap)

        that.kag.event.addEventElement({
            tag: "switch",
            j_target: input,
            pm: pm,
        })
        this.setEvent(input, label, pm)
        that.kag.ftag.nextOrder()
    },
    setEvent: function(input, label, pm){
        const that = TYRANO
        const _pm = pm

        input.on("change", function(){
            if(input.prop("checked")){
                that.kag.evalScript(_pm.var + " = true")
                label.css({
                    background: __slider_ui.convertColor(_pm.active_color)
                })
                //fixレイヤの場合はcallでスタックが積まれる
                if (_pm.storage != "" || _pm.target != "") {
                    //コールスタックが帰ってきてない場合は、実行しないようにする必要がある
                    //fixの場合はコールスタックに残る。
                    var stack_pm = that.kag.getStack("call"); //最新のコールスタックを取得
                    if(stack_pm == null){
                        //strong_stopの場合は反応しない
                        var _auto_next = _pm.auto_next;
                        if(that.kag.stat.is_strong_stop == true){
                            _auto_next = "stop";
                        }
                        //call実行
                        that.kag.ftag.startTag("call", {
                            storage: _pm.storage,
                            target: _pm.target,
                            auto_next: _auto_next
                        });
                    }else{
                        //スタックが残っている場合
                        that.kag.log("callスタックが残っている場合、fixボタンは反応しません");
                        that.kag.log(stack_pm);
                        return false;
                    }
                }
            }else{
                that.kag.evalScript(_pm.var + " = false")
                label.css({
                    background: __slider_ui.convertColor(_pm.base_color)
                })
                //fixレイヤの場合はcallでスタックが積まれる
                if (_pm.storage != "" || _pm.target != "") {
                    //コールスタックが帰ってきてない場合は、実行しないようにする必要がある
                    //fixの場合はコールスタックに残る。
                    var stack_pm = that.kag.getStack("call"); //最新のコールスタックを取得
                    if(stack_pm == null){
                        //strong_stopの場合は反応しない
                        var _auto_next = _pm.auto_next;
                        if(that.kag.stat.is_strong_stop == true){
                            _auto_next = "stop";
                        }
                        //call実行
                        that.kag.ftag.startTag("call", {
                            storage: _pm.storage,
                            target: _pm.target,
                            auto_next: _auto_next
                        });
                    }else{
                        //スタックが残っている場合
                        that.kag.log("callスタックが残っている場合、fixボタンは反応しません");
                        that.kag.log(stack_pm);
                        return false;
                    }
                }
            }
        })

    }
}
tyrano.plugin.kag.ftag.master_tag.switch = tyrano.plugin.kag.tag.switch
tyrano.plugin.kag.ftag.master_tag.switch.kag = tyrano.plugin.kag

let _return = tyrano.plugin.kag.tag.return
tyrano.plugin.kag.tag.return = {
    start: function () {
        $("input").prop("disabled", false)
        _return.start.apply(TYRANO, arguments)
    }
}
tyrano.plugin.kag.ftag.master_tag.return = tyrano.plugin.kag.tag.return
tyrano.plugin.kag.ftag.master_tag.return.kag = tyrano.plugin.kag