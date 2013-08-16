Ext.define('Delivery.view.Westpanel', {
    extend: 'Ext.panel.Panel',
    alias: 'widget.westPanel',
    //html: 'Infos zu Format, Bezugsrahmen, Beglaubigung NF-Geometer, Gemeindefusionen, Aktualität'
    html: this.setHints()
});


function setHints() {
    html = '<div style="padding:10px">';
    
    html += 'Hinweise';
    
    html += '</div>';
    
    return html;
    
}
