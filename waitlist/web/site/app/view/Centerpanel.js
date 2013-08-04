Ext.define('Waitlist.view.Centerpanel', {
    extend: 'Ext.grid.Panel',
    alias: 'widget.centerPanel',
    forceFit: true, // ????
    cls: 'alt-x-grid-row',   
    initComponent: function () {
        this.store = 'Waitingfiles',
        this.columns = [
            { text: 'Gemeinde', dataIndex: 'gem_name', flex: 1, width: 150},
            { text: 'Kanton', dataIndex: 'kant_name', width: 100},
            { text: 'BFS-Nr.', dataIndex: 'gem_bfs', width: 40},
            { text: 'Los-Nr.', dataIndex: 'los', width: 40},
            { text: 'Lieferdatum', dataIndex: 'lieferdatum', width: 90, renderer: dateRenderer},
            { text: 'Dateiname', dataIndex: 'filename', width: 160}
        ];
        this.callParent(arguments);
    }  
});


function dateRenderer(value, p, record) {
    return Ext.Date.format(value, 'd.m.Y G:i:s');
};


