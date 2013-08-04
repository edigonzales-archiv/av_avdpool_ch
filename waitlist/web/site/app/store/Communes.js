Ext.define('Waitlist.store.Communes', {
    extend: 'Ext.data.Store',
    model: 'Waitlist.model.Commune',
    proxy: {
        type: 'ajax',
        url: 'data/datenabgabe_info.json',
        reader: {
            type: 'json',
            root: 'features'
        }
    },
    sorters: [{
             property: 'gem_name',
             direction: 'ASC'
         }, {
             property: 'gem_bfs',
             direction: 'ASC'
    }],            
    autoLoad: true    
});
