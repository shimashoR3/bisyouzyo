(function(){
    const _text = TYRANO.kag.tag.text
    TYRANO.kag.tag.text = $.extend(true, {} , _text, {
        showMessage: function (message_str, pm, isVertical) {
            if (!TYRANO.kag.stat.is_script){
                let lbl = encodeURIComponent(message_str.slice(0, 20))
                let idx = TYRANO.kag.ftag.current_order_index
                TYRANO.kag.ftag.startTag("label", {
                    label_name: idx + "_" + $.replaceAll(lbl, "%", ""),
                    nextorder: "false"
                })    
            }
            _text.showMessage.apply(TYRANO, arguments)
        }.bind(TYRANO)
    })
    TYRANO.kag.ftag.master_tag.text = TYRANO.kag.tag.text
    TYRANO.kag.ftag.master_tag.text.kag = TYRANO.kag

    const _label = TYRANO.kag.tag.label
    TYRANO.kag.tag.label = $.extend(true, {}, _label, {
        start: function(pm){
            //ラベル記録
            if(this.kag.config.autoRecordLabel == "true"){
                var sf_tmp = "trail_" + this.kag.stat.current_scenario.replace(".ks","").replace(/\u002f/g, "").replace(/:/g,"").replace(/\./g,"");
                var sf_buff = this.kag.stat.buff_label_name;
                var sf_label = sf_tmp + "_" + pm.label_name;
                if(this.kag.stat.buff_label_name != ""){
                    if(!this.kag.variable.sf.record){
                        this.kag.variable.sf.record = {};
                    }
                    //evalさせない
                    TYRANO.kag.variable.sf.record[sf_buff] = TYRANO.kag.variable.sf.record[sf_buff] || 0
                    if(TYRANO.kag.variable.sf._ars_ex.is_unreadskip === false && TYRANO.kag.stat.is_skip && TYRANO.kag.variable.sf.record[sf_buff] === 0){
                        //未読のまま
                    }else{      
                        TYRANO.kag.variable.sf.record[sf_buff]++
                    }
                    //初回通過時のみレコード情報強制セーブ
                    if(TYRANO.kag.variable.sf.record[sf_buff] == 1){
                        TYRANO.kag.saveSystemVariable()
                    }
                }
                
                if(this.kag.variable.sf.record){
                    if(this.kag.variable.sf.record[sf_label]){
                        //すでにこのラベル通過済みよ
                        this.kag.stat.already_read = true;
                    }else{
                        this.kag.stat.already_read = false;
                    }
                }
                //pm.label_name を stat に配置して、次のラベルで記録とする
                this.kag.stat.buff_label_name = sf_label;
            }
            //ラベル記録の時はNextOrderしない
            if(pm.nextorder == "true"){
                this.kag.ftag.nextOrder();
            }
        }
    })
    TYRANO.kag.ftag.master_tag.label = TYRANO.kag.tag.label
    TYRANO.kag.ftag.master_tag.label.kag = TYRANO.kag
})()