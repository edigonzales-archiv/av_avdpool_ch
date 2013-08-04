Ext.define('Waitlist.view.Headerpanel', {
    extend: 'Ext.panel.Panel',
    alias: 'widget.headerPanel',
    bodyCls: ['sogis-header-body'],
    margins: '0 0 0 0',
    items: [{
        xtype: 'panel',
        html: '<a href="http://www.so.ch/" class="sogis-header-logo"></a>',
        border: false,
        frame: false,
        bodyCls: ['sogis-header'],
        height: 100
    },{
        xtype: 'panel',
        border: false,
        frame: false,
        bodyCls: ['sogis-headernav'],
        height: 24,
        //html: '<ul> <li> <a class="undefined" href="http://www.so.ch/departemente/bau-und-justiz/sogis/rechtliche-hinweise.html" title="Rechtliche Hinweise"  target="_blank">Rechtliche Hinweise</a> </li> </ul><span class="x-panel-header-text sogis-header-text">Daten der amtlichen Vermessung Kanton Solothurn</span>',
        html: setHtml()
        //html: foobar()
    }]
});


function setHtml() {

	var sogis_menu = [
		{'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis.html', 'class': 'sogis-first', 'title': 'SO!GIS',  'target':'_blank', 'submenu' : [
			{'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/leitbild.html', 'title': 'Leitbild', 'target':'_blank'},
			{'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/open-source-gis.html', 'title': 'Open Source GIS', 'target':'_blank'},
			{'url': 'http://www.so.ch/departemente/bau-und-justiz/amt-fuer-geoinformation.html', 'title': 'Amt f&uuml;r Geoinformation', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis.html', 'title': 'SO!GIS', 'target':'_blank'}
		]} ,
		{'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/interaktive-karten.html', 'title': 'Interaktive Karten', 'target':'_blank', 'submenu' : [
            {'url': 'javascript:provLayerSwitcher(\'ortsplan\');', 'title': 'Ortsplan', 'target':''},
            {'url': 'javascript:provLayerSwitcher(\'nutzungszonen\');', 'title': 'Nutzungszonen', 'target':''},
            {'url': 'javascript:provLayerSwitcher(\'gemeindegis\');', 'title': 'Gemeindegis', 'target':''},
            {'url': 'javascript:provLayerSwitcher(\'grundbuch\');', 'title': 'Grundbuch', 'target':''},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/interaktive-karten.html', 'title': 'Noch mehr Karten', 'target':'_blank'}
        ]},
        {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/sogis-daten.html', 'title': 'Datenbezug', 'target':'_blank', 'submenu' : [
            {'url': 'http://www.sogis1.so.ch/sogis/OnLineData/php/index.php', 'title': 'Online Bezug', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/sogis-daten/sogis-downloads.html', 'title': 'Übersichtskarten', 'target':'_blank'},
            {'url': 'http://www.sogis1.so.ch/sogis/OnLineData/php/datenbeschreibung_auswahl.php', 'title': 'Datenbeschreibung', 'target':'_blank'}
            
        ]},
        {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms.html', 'title': 'WMS', 'target':'_blank', 'submenu' : [
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-geologie.html', 'title': 'WMS Geologie', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-gewaesser.html', 'title': 'WMS Gewässer', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-naturgefahren.html', 'title': 'WMS Naturgefahren', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-oekomorphologie.html', 'title': 'WMS Ökomorphologie', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-richtplankarte.html', 'title': 'WMS Richtplankarte', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-verkehr.html', 'title': 'WMS Verkehr', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-relief-und-wanderwege.html', 'title': 'WMS Wanderwege', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-ortsplan.html', 'title': 'WMS Ortsplan', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-plan-der-amtlichen-vermessung.html', 'title': 'WMS Plan der AV', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-uebersichtsplan.html', 'title': 'WMS Übersichtsplan', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-strassenkarte.html', 'title': 'WMS Strassenkarte', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-orthofoto.html', 'title': 'WMS Orthofoto', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/wms-dtm-dom.html', 'title': 'WMS DTM/DOM', 'target':'_blank'},
            {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/web-map-services-wms/av-wms.html', 'title': 'AV WMS', 'target':'_blank'}
            
            
        ]},
	  {'url': 'http://www.so.ch/departemente/bau-und-justiz/sogis/rechtliche-hinweise.html', 'title': 'Rechtliche Hinweise', 'target':'_blank'}
	];

	var menuString = getMenuString(sogis_menu);
    //console.log(menuString);
    
    return menuString + '<span class="x-panel-header-text sogis-header-text">Daten der amtlichen Vermessung Kanton Solothurn</span>';
};


function getMenuString(menu) {
    
    var menuString = '<ul>', aClass = '', title = '';

    for(var i=0; i < menu.length; i++) {

        if (i === 0) {
            aClass = menu[i]['class']; //+' sogis-first';
        } else {
            aClass = menu[i]['class'];
        }
        title = menu[i].title.replace(/<(?:.|\n)*?>/gm, '');
        menuString += '<li><a class="'+aClass+'" href="'+menu[i].url+'" title="'+title+'" target="'+menu[i].target+'">'+menu[i].title+'</a>';
        if (menu[i].submenu) {
            menuString += getMenuString(menu[i].submenu);
        }
        menuString += '</li>';
    }
    menuString += '</ul>';
    return menuString;
};


