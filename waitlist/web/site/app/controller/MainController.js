Ext.define('Waitlist.controller.MainController', {
    extend: 'Ext.app.Controller',
    stores: [
        'Waitingfiles'
    ],
    views: [
        'Headerpanel', 
        'Centerpanel', 
        'Westpanel', 
        'Infowindow'
    ],
    
    init:function(){
        this.control({
            //Component listeners              
        });

        this.application.on({
            //Event handlers
        });
    }    
});
