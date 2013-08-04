Ext.define('Waitlist.model.Waitingfiles', {
    extend: 'Ext.data.Model',
    fields: [
        {name: 'gem_name', mapping: 'gem_name', type: 'string'},
        {name: 'kant_name', mapping: 'kant_name', type: 'string'},
        {name: 'gem_bfs', mapping: 'bfsnr', type: 'int'},
        {name: 'los', mapping: 'los', type: 'int'},
        {name: 'lieferdatum', mapping: 'lieferdatum', type: 'date', dateFormat: 'time'},
        {name: 'filename', mapping: 'filename', type: 'string'}
    ]
});
