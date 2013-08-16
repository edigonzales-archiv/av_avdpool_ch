Ext.define('Delivery.store.Deliveries', {
    extend: 'Ext.data.Store',
    model: 'Delivery.model.Deliveries',
    proxy: {
        type: 'ajax',
        url: 'data/delivery.json',
        reader: {
            type: 'json',
            root: 'data'
        }
    },
    sorters: [{
             property: 'lieferdatum',
             direction: 'DESC'
         }, {
             property: 'gem_bfs',
             direction: 'ASC'
    }],            
    autoLoad: true    
});
