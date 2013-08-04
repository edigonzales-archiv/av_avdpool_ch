Ext.define('Waitlist.store.Waitingfiles', {
    extend: 'Ext.data.Store',
    model: 'Waitlist.model.Waitingfiles',
    proxy: {
        type: 'ajax',
        url: 'data/waitlist.json',
        reader: {
            type: 'json',
            root: 'data'
        }
    },
    sorters: [{
             property: 'gem_name',
             direction: 'ASC'
         }, {
             property: 'bfs_nr',
             direction: 'ASC'
    }],            
    autoLoad: true    
});
