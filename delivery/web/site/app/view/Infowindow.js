Ext.define('Delivery.view.Infowindow', {
    extend: 'Ext.window.Window',
    alias : 'widget.infoWindow',
 
    title : 'Nachf&uuml;hrungsgeometer',
    layout: 'fit',
    autoShow: true,
    constrain: true,
    constrainHeader: true,   
 
    height: 300,
    width: 700,
    layout: {
        type: 'hbox',
        pack: 'start',
        align: 'stretch'
    },
 
    initComponent: function() {
        this.items = [
            {
                xtype: 'panel',
                width: 250,
                frame: false,
                border: false,
                html: this.setAddress(this.nfgeom)
            },
            {
                xtype: 'panel',
                flex: 1,
                frame: false,
                border: false,
                html: this.setMap(this.nfgeom)
            }            
        ];
        this.callParent(arguments);
    },
    
    setAddress: function(record) {
        properties = record.raw.properties;

        html = '<div style="padding:10px">';
        
        html += '<b>Kontakt:</b><br><br>';
        html += properties['vorname'] + ' ' + properties['name'];
        html += '<br>';
        html += properties['firma'];
        html += '<br>';
        
        if (properties['firma_zusatz'] != null) {
            html += properties['firma_zusatz'];
            html += '<br>';
        }
        
        html += properties['strasse'] + ' ' + properties['hausnr'];
        html += '<br>';
        html += properties['plz'] + ' ' + properties['ortschaft'];
        html += '<br>';
        html += '<br>';
        html += 'Telefon: ' + properties['telefon'];
        html += '<br>';    
        html += 'Fax: ' + properties['fax'];
        html += '<br>';                
        html += '<br>';        
        html += 'Email: <a href=\'mailto:' + properties['email'] + ';\' target=\"_blank\">' + properties['email'] + '</a>';
        html += '<br>';                
        html += 'Web: <a href=\"http://' + properties['web'] + '\" target=\"_blank\">' + properties['web'] + '</a>';
        
        html += '</div>';
        
        return html;  
    },
    
    setMap: function(record) {
        properties = record.raw.properties;
    
        html = '<iframe src="http://www.sogis1.so.ch/sogis/soapi/map.php?';
        html += 'gemeinde=' + properties["ortschaft"] + '&amp;';
        html += 'strasse=' + properties["strasse"] +'&amp;';
        html += 'nummer=' + properties["hausnr"] + '" ';
        html += 'width="440" height="270" style="border: 0px solid #AAA;" frameborder="0" scrolling="no"></iframe>';
    
        //console.log(html);
    
        return html;
    }    
    
});

