if($.isElectron()){
    //アプリケーションとして実行
    const { app, BrowserWindow, dialog } = require('electron').remote.require("electron")
    
    const tf = TYRANO.kag.variable.tf
    var isClose = false
    window.onbeforeunload = (e) => {
            const choice = dialog.showMessageBoxSync({
                type: "question",
                buttons: [tf.__close_dialog.ok, tf.__close_dialog.cancel],
                message: tf.__close_dialog.text,
            })
            if(choice == 1){
                e.preventDefault()
                e.returnValue = false
            }else if(choice == 0){
                BrowserWindow.getFocusedWindow().destroy()
            }
    }
}else{
    $(window).on("beforeunload", function(e){
        //e.returnValue = "test"
        return "test"
    })    
}

