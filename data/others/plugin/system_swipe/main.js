(function($) {
    //各メニューのhtmlの読み込みが終わったらpsを追加する
    tyrano.plugin.kag.menu.displaySave = function(cb){

        //セーブ画面作成

        var that = this;

        this.kag.stat.is_skip = false;

        var array_save = that.getSaveData();
        var array = array_save.data;
        //セーブデータ配列

        var layer_menu = that.kag.layer.getMenuLayer();

        for (var i = 0; i < array.length; i++) {
            array[i].num = i;
        }

        this.kag.html("save", {
            array_save : array,
            "novel" : $.novel
        }, function(html_str) {
            
            var j_save = $(html_str);

            //フォントをゲームで指定されているフォントにする。
            j_save.find(".save_list").css("font-family", that.kag.config.userFace);

            j_save.find(".save_display_area").each(function() {

                //スワイプ操作との競合を避けるため.onに変更
                $(this).on("click", function(e){
                    var num = $(this).attr("data-num");

                    that.snap = null;
                    
                    var layer_menu = that.kag.layer.getMenuLayer();
                    layer_menu.hide();
                    layer_menu.empty();
                    if (that.kag.stat.visible_menu_button == true) {
                        $(".button_menu").show();
                    }
                    
                    that.doSave(num,function(){
                        
                        if(typeof cb=="function"){
                            cb();
                        }
                        
                    });
                    
                    
                });
            });
            
            //スマホの場合はボタンの上下でスクロールできるようにする
            j_save.find(".button_smart").hide();
            if($.userenv()!="pc"){
                j_save.find(".button_smart").show();
                j_save.find(".button_arrow_up").click(function(){
                    var now = j_save.find(".area_save_list").scrollTop();
                    var pos = now - 160;
                    layer_menu.find(".area_save_list").animate({scrollTop:pos},{queue:false});
                });
                
                j_save.find(".button_arrow_down").click(function(){
                    var now = j_save.find(".area_save_list").scrollTop();
                    var pos = now + 160;
                    j_save.find(".area_save_list").animate({scrollTop:pos},{queue:false});
                });
                
            }
            

            var layer_menu = that.kag.layer.getMenuLayer();

            that.setMenu(j_save,cb);

            if ($(".area_save_list").length > 0) {
                let ps = new PerfectScrollbar(".area_save_list", {handlers: ['click-rail','touch']});
            }

        });

    }






    tyrano.plugin.kag.menu.displayLoad = function(cb){

        var that = this;

        this.kag.stat.is_skip = false;

        var array_save = that.getSaveData();
        var array = array_save.data;
        //セーブデータ配列

        var layer_menu = that.kag.layer.getMenuLayer();

        for (var i = 0; i < array.length; i++) {
            array[i].num = i;
        }

        this.kag.html("load", {
            array_save : array,
            "novel" : $.novel
        }, function(html_str) {
            var j_save = $(html_str);

            j_save.find(".save_list").css("font-family", that.kag.config.userFace);

            j_save.find(".save_display_area").each(function() {

                //スワイプ操作との競合を避けるため.onに変更
                $(this).on("click", function(e){
                    var num = $(this).attr("data-num");
                    
                    //セーブデータが存在しない場合
                    if(array[num]["save_date"]==""){
                        return ;
                    }
                    
                    that.snap = null;
                    that.loadGame(num);

                    var layer_menu = that.kag.layer.getMenuLayer();
                    layer_menu.hide();
                    layer_menu.empty();
                    if (that.kag.stat.visible_menu_button == true) {
                        $(".button_menu").show();
                    }
                    
                });
            });
            
            
            //スマホの場合はボタンの上下でスクロールできるようにする
            j_save.find(".button_smart").hide();
            if($.userenv()!="pc"){
                j_save.find(".button_smart").show();
                j_save.find(".button_arrow_up").click(function(){
                    var now = j_save.find(".area_save_list").scrollTop();
                    var pos = now - 160;
                    layer_menu.find(".area_save_list").animate({scrollTop:pos},{queue:false});
                });
                
                j_save.find(".button_arrow_down").click(function(){
                    var now = j_save.find(".area_save_list").scrollTop();
                    var pos = now + 160;
                    j_save.find(".area_save_list").animate({scrollTop:pos},{queue:false});
                });
                
            }
            

            var layer_menu = that.kag.layer.getMenuLayer();

            that.setMenu(j_save,cb);

            if ($(".area_save_list").length > 0) {
                let ps = new PerfectScrollbar(".area_save_list", {handlers: ['click-rail','touch']});
            }

        });


    }






    let _ex_displayLog = tyrano.plugin.kag.menu.displayLog;
    tyrano.plugin.kag.menu.displayLog = function(cb){
        _ex_displayLog.apply(this, arguments);
        
        let a = setInterval(function(){
            if ($(".log_body").length > 0) {
                let ps = new PerfectScrollbar(".log_body", {handlers: ['click-rail','touch']});

                if ($("#touchbox").length > 0) {
                    $("#touchbox").attr("id","");
                    $(".display_menu").append("<div id='touchbox' style='display: none'></div>")
                }

                clearInterval(a);
            }
        } , 20);

        setTimeout(function(){
            clearInterval(a);
        }, 5000);
    }

})(jQuery);
