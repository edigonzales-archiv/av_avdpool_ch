Ext.define('Delivery.view.Centerpanel', {
    extend: 'Ext.grid.Panel',
    alias: 'widget.centerPanel',
    forceFit: true, // ????
    cls: 'alt-x-grid-row',   
    initComponent: function () {
        this.store = 'Deliveries',
        this.columns = [
            { text: 'Gemeinde', dataIndex: 'gem_name', flex: 1, width: 150},
            { text: 'Kanton', dataIndex: 'kt_kurz', width: 40},
            { text: 'BFS-Nr.', dataIndex: 'gem_bfs', width: 40},
            { text: 'Los-Nr.', dataIndex: 'los', width: 40},
            //{ text: 'Status', dataIndex: 'status', width: 40},    
            { text: 'Status', dataIndex: 'status_txt', width: 90},                     
            { text: 'Lieferdatum', dataIndex: 'lieferdatum', width: 90, renderer: dateRenderer},
            { text: 'Importdatum', dataIndex: 'importdatum', width: 90, renderer: dateRenderer},            
            { text: 'Dateiname', dataIndex: 'filename', width: 160}
        ];
        this.callParent(arguments);
    }  
});


function dateRenderer(value, p, record) {
    return Ext.Date.format(value, 'd.m.Y G:i:s');
};


