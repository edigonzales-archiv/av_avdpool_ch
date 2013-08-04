Ext.define('Waitlist.model.Commune', {
    extend: 'Ext.data.Model',
    fields: [
        {name: 'gem_name', mapping: 'properties.gem_name', type: 'string'},
        {name: 'gem_bfs', mapping: 'properties.gem_bfs', type: 'int'},
        {name: 'lieferdatum', mapping: 'properties.lieferdatum', type: 'date', dateFormat: 'd.m.Y'},
        {name: 'nfgeometer', mapping: 'properties.nfgeometer', type: 'string'},
        {name: 'pdf', mapping: 'properties.pdf', type: 'string'},
        {name: 'itfch', mapping: 'properties.itfch', type: 'string'},
        {name: 'itfso', mapping: 'properties.itfso', type: 'string'},
        {name: 'dxf', mapping: 'properties.dxf', type: 'string'},                
        {name: 'shp', mapping: 'properties.shp', type: 'string'}
    ]
});
