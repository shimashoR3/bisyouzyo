//点滅設定。点滅させたくない場合はfalse
var a_s_fla=false;

//css追加
$('head link:last').after('<link rel="stylesheet" href="./data/others/plugin/a_s_ico/style.css">');
// レイヤー追加
$('#root_layer_system').append('<div id="announce_layer"></div>');
$('#announce_layer').addClass('layer');
$('#announce_layer').append('<div id="an_skip"><img src="./data/others/plugin/a_s_ico/img/skip.png"></div>');
$('#announce_layer').append('<div id="an_auto"><img src="./data/others/plugin/a_s_ico/img/auto.png"></div>');

if(a_s_fla===true){
  $('#announce_layer').addClass('a_s_fla');
}

TYRANO.kag.stat.is_skip=false;
TYRANO.kag.stat.is_auto=false;

var set_check_skip;
var s_skip_f=true;
var set_check_auto;
var s_auto_f=true;
// 判定用関数
// 発火した後1秒ごとにAUTOとSKIPのオンオフを監視します。
function as(){
  setTimeout(function(){
    if(TYRANO.kag.stat.is_skip==true){
      $('#an_skip').fadeIn();
      if(s_skip_f){
        set_check_skip=setInterval(function(){
          as_check_skip();
        },1000);
        s_skip_f=false;
      }
    }else{
      $('#an_skip').fadeOut();
    }

    if(TYRANO.kag.stat.is_auto==true){
      $('#an_auto').fadeIn();
      if(s_auto_f){
        set_check_auto=setInterval(function(){
          as_check_auto();
        },1000);
        s_auto_f=false;
      }
    }else{
      $('#an_auto').fadeOut();
    }
  },200);
}

// 監視
function as_check_skip(){
  if(TYRANO.kag.stat.is_skip!==true){
    $('#an_skip').fadeOut();
    clearInterval(set_check_skip);
    s_skip_f=true;
  }
}

function as_check_auto(){
  if(TYRANO.kag.stat.is_auto!==true){
    $('#an_auto').fadeOut();
    clearInterval(set_check_auto);
    s_auto_f=true;
  }
}

//発火設定
var psType = (( window.ontouchstart!==null ) ? 'pc':'sp');
if(psType=='pc'){
  $(document).on('mouseup keydown keyup', 'body,img.fixlayer', function () {
    as();
  });
}else{
    $(document).on('touchmove touchend click', 'body,img.fixlayer', function () {
      as();
    });
    //長押し判定
    var LONGPRESS = 2000;
    /// 長押し実行タイマーのID
    var timerId;

    $('body').on("mousedown touchstart",function(){
      timerId = setTimeout(function(){
        as();
      }, LONGPRESS);
    }).on("mouseup mouseleave touchend",function(){
      clearTimeout(timerId);
    });
}
