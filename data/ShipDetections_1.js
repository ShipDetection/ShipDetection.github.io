// $.ajaxPrefilter( "json script", function( options ) {
//     options.crossDomain = true;
// });


var json_ShipDetections_1 = JSON.parse($.ajax({'url': 'data/geodata.json', 'async': false}).responseText); 
