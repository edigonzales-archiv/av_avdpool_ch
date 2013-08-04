Ext.Loader.setConfig({enabled:true});

Ext.application({
    name: 'Waitlist',
    appFolder: 'app',
    controllers: [
        'MainController'
    ],
    autoCreateViewport: true
});
