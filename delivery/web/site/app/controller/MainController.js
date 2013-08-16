Ext.define('Delivery.controller.MainController', {
    extend: 'Ext.app.Controller',
    stores: [
        'Deliveries'
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
