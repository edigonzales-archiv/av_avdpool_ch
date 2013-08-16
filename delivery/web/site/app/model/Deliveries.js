Ext.define('Delivery.model.Deliveries', {
    extend: 'Ext.data.Model',
    fields: [
        {name: 'gem_name', mapping: 'gem_name', type: 'string'},
        {name: 'kt_kurz', mapping: 'kt_kurz', type: 'string'},
        {name: 'gem_bfs', mapping: 'fosnr', type: 'int'},
        {name: 'los', mapping: 'lot', type: 'int'},
        {name: 'status', mapping: 'status', type: 'int'}, 
        {name: 'status_txt', mapping: 'status_txt', type: 'string'},
        {name: 'lieferdatum', mapping: 'delivery_date', type: 'date', dateFormat: 'time'},
        {name: 'importdatum', mapping: 'import_date', type: 'date', dateFormat: 'time'},        
        {name: 'filename', mapping: 'filename', type: 'string'}
    ]
});
