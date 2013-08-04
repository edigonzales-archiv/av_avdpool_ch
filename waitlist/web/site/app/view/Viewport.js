Ext.define('Waitlist.view.Viewport', {
    extend: 'Ext.container.Viewport',
    layout: 'border',
    defaults: {
        collapsible: false,    
        split: false
    },
    requires: [
        'Waitlist.view.Centerpanel',
        'Waitlist.view.Westpanel',
        'Waitlist.view.Headerpanel'
    ],
    //Error: it was initComponents
    initComponent: function () {
        Ext.apply(this, {
            items: [{
                xtype: 'headerPanel',
                region: 'north',
                collapsible: false,
                split: false,
                height: 124
            },{
                xtype: 'centerPanel',
                id: 'dataGrid',
                //title: 'Liste der Gemeinden',
                region: 'center',
                margins: '3 3 3 3'
            },
            {
                xtype: 'westPanel',
                title: 'Hinweise',
                region: 'west',
                width: 350,
                margins: '3 0 3 3'
            }]
        });
        //Error: do not forget this line in each initComponent method
        this.callParent(arguments);
    }
});
