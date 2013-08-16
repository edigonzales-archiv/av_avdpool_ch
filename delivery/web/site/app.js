Ext.Loader.setConfig({enabled:true});

Ext.application({
    name: 'Delivery',
    appFolder: 'app',
    controllers: [
        'MainController'
    ],
    autoCreateViewport: true
});
