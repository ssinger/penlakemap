
.depth.label filtered_depth{
   text-halo-fill: #affcff;
    text-face-name: "DejaVu Sans Book";
    text-fill: #000;
    text-placement: point;
    text-halo-radius: 0;
    text-size: 6;
    text-wrap-width: 50;
    
}

.coast.edge.outer
{
    line-width: 13;
    line-color: #a1cbea;
    line-join: round;
}

.coast.edge.inner
{
    line-width: 5;
    line-color: #7eaac1;
    line-join: round;
}

.coast.edge.outer[zoom<=12] { line-width: 9; }
.coast.edge.inner[zoom<=12] { line-width: 3; }


.water.area
{
    line-width: 0.25;
    line-color: #8cb6d3;
    polygon-fill: #8cb6d3;
    line-join: round;
}


.water.line
{
    line-color: #7eaac1;
    line-join: round;
    outline-width: 0.25;
}

.water.line[zoom>=13],
.water.line[zoom>=15][waterway=stream]
{
    line-color: #8cb6d3;

    outline-width: 0.25;
    outline-color: #7eaac1;
    outline-join: round;
}


.water.line[zoom>=11][zoom<=12] { line-width: 2; }
.water.line[zoom>=11][zoom<=12][waterway=stream] { line-width: 1; }

.water.line[zoom=13] { line-width: 3; }
.water.line[zoom=13][waterway=stream] { line-width: 1; }

.water.line[zoom=14] { line-width: 5; }
.water.line[zoom=14][waterway=stream] { line-width: 2; }

.water.line[zoom=15] { line-width: 7; }
.water.line[zoom=15][waterway=stream] { line-width: 3; }

.water.line[zoom=16] { line-width: 9; }
.water.line[zoom=16][waterway=stream] { line-width: 5; }

.water.line[zoom>=17] { line-width: 12; }
.water.line[zoom>=17][waterway=stream] { line-width: 8; }


/**
.coast.fill
{
    polygon-fill: #dceee9;
    line-width: 1;
    line-color: #dceee9;

}
**/

.citylike.area
{
    polygon-fill: #d0d0d0;
}

/*
.citylike.area[amenity=school],
.citylike.area[amenity=college],
.citylike.area[amenity=university]
{
    polygon-fill: #d2caba;
}
*/
.parklike.area
{
    polygon-fill: #91b156;
}

.parklike.area[zoom>=16][leisure!=pitch][leisure!=track][landuse!=cemetery] /*,
.parklike.area[zoom>=14][zoom<=15][leisure!=pitch][leisure!=track][landuse!=cemetery][size=large] */
{
    polygon-pattern-file: url('img/trees-z.png');
}

.parklike.area[zoom>=11]
{
    line-width: 1;
    line-color: #6dbe3c;
}

.parklike.area[landuse=cemetery]
{
    line-color: #799a67;
    polygon-fill: #94b580;
}

.parklike.area[zoom>=16][landuse=cemetery] ,
.parklike.area[zoom=15][landuse=cemetery][size=large] 
{
    polygon-pattern-file: url('img/graveyard-z.png');
}


.forest.area
{
	polygon-fill: #91ff56;
}

.building.area[zoom>=13]
{
    polygon-fill: #aaaaaa;
}

.building.area[zoom>=15]
{
    line-width: 1;
    line-color: #808080;
}

.depth.label depth,
.water.label name,
.parklike.label name,
.citylike.label[amenity!=parking] name,
.building.label name
{
    text-face-name: "DejaVu Sans Book";
    text-fill: #000;
    text-placement: point;
}

.water.label[zoom>=13][zoom<=15][size=large] name,
.parklike.label[zoom>=13][zoom<=15][size=large] name,
.citylike.label[zoom>=13][zoom<=15][size=large][amenity!=parking] name,
.building.label[zoom>=13][zoom<=15][size=large] name,
.water.label[zoom>=15][zoom<=16][size=medium] name,
.parklike.label[zoom>=15][zoom<=16][size=medium] name,
.citylike.label[zoom>=15][zoom<=16][size=medium][amenity!=parking] name,
.building.label[zoom>=15][zoom<=16][size=medium] name,
.water.label[zoom=16][size=small] name,
.parklike.label[zoom=16][size=small] name,
.citylike.label[zoom=16][size=small][amenity!=parking] name,
.building.label[zoom=16][size=small] name
{
    text-size: 9;
    text-wrap-width: 50;
}

.building.label[zoom>=17][amenity=school],
.citylike.label[zoom>=17][amenity=school]
{
    point-file: url('img/icons/24x24/symbol/landmark/amenity=school.png');
    text-dy: 20;
}

.building.label[zoom>=15][zoom<=16][amenity=school],
.citylike.label[zoom>=15][zoom<=16][amenity=school]
{
    point-file: url('img/icons/16x16/symbol/landmark/amenity=school.png');
    text-dy: 18;
}

.building.label[zoom=14][amenity=school],
.citylike.label[zoom=14][amenity=school]
{
    point-file: url('img/icons/12x12/symbol/landmark/amenity=school.png');
}

.building.label[zoom>=17][amenity=police],
.citylike.label[zoom>=17][amenity=police]
{
    point-file: url('img/icons/24x24/symbol/emergency/amenity=police.png');
    text-dy: 20;
}

.building.label[zoom>=15][zoom<=16][amenity=police],
.citylike.label[zoom>=15][zoom<=16][amenity=police]
{
    point-file: url('img/icons/16x16/symbol/emergency/amenity=police.png');
    text-dy: 18;
}

.building.label[zoom=14][amenity=police],
.citylike.label[zoom=14][amenity=police]
{
    point-file: url('img/icons/12x12/symbol/emergency/amenity=police.png');
}

.building.label[zoom>=17][amenity=fire_station],
.citylike.label[zoom>=17][amenity=fire_station]
{
    point-file: url('img/icons/24x24/symbol/emergency/amenity=fire_station.png');
    text-dy: 20;
}

.building.label[zoom>=15][zoom<=16][amenity=fire_station],
.citylike.label[zoom>=15][zoom<=16][amenity=fire_station]
{
    point-file: url('img/icons/16x16/symbol/emergency/amenity=fire_station.png');
    text-dy: 18;
}

.building.label[zoom=14][amenity=fire_station],
.citylike.label[zoom=14][amenity=fire_station]
{
    point-file: url('img/icons/12x12/symbol/emergency/amenity=fire_station.png');
}

.building.label[zoom>=17][amenity=hospital],
.citylike.label[zoom>=17][amenity=hospital]
{
    point-file: url('img/icons/24x24/symbol/emergency/amenity=hospital.png');
    text-dy: 20;
}

.building.label[zoom>=15][zoom<=16][amenity=hospital],
.citylike.label[zoom>=15][zoom<=16][amenity=hospital]
{
    point-file: url('img/icons/16x16/symbol/emergency/amenity=hospital.png');
    text-dy: 18;
}

.building.label[zoom=14][amenity=hospital],
.citylike.label[zoom=14][amenity=hospital]
{
    point-file: url('img/icons/12x12/symbol/emergency/amenity=hospital.png');
}

.building.label[zoom>=17][amenity=parking],
.citylike.label[zoom>=17][amenity=parking]
{
    point-file: url('img/icons/16x16/panel/transport/amenity=parking.png');
}

.water.label[zoom>=16][size=large] name,
.parklike.label[zoom>=16][size=large] name,
.citylike.label[zoom>=16][size=large][amenity!=parking] name,
.building.label[zoom>=16][size=large] name,
.water.label[zoom>=17] name,
.parklike.label[zoom>=17] name,
.citylike.label[zoom>=17][amenity!=parking] name,
.building.label[zoom>=17] name
{
    text-wrap-width: 100;
    text-size: 12;
}

.water.label name
{
    /*text-halo-fill: #affcff; */
    text-placement: point;
    text-fill: #000;
    text-size: 9;
    text-wrap-width: 50;
}

.parklike.label name
{
    text-halo-fill: #d1ffb6;
}

.citylike.label[amenity!=parking] name
{
    text-halo-fill: #eeeeee;
}

.building.label name
{
    text-halo-fill: #dddddd;
}


.depth.line
{
    line-width: 0.12;
    line-color: #905010;
    line-join: round;
    outline-width: 0.25;
    outline-color: #905010;
    outline-join: round;
}
.depth.line depth
{
 text-halo-fill: #affcff;
    text-face-name: "DejaVu Sans Book";
    text-fill: #000;
    text-placement: point;
    text-halo-radius: 0;
    text-size: 6;
    text-wrap-width: 50;
    text-placement: line;
    text-allow-overlap:true;

}
.amenity.name[amenity=place_of_worship]
{
point-file: url('img/mapnik/place_of_worship.png');
 point-allow-overlap: true;
}
.amenity.name[tourism=hotel] name
{
point-file: url('img/mapnik/hotel2.p.20.png');
    point-allow-overlap: true;	   
text-halo-fill: #affcff;
    text-face-name: "DejaVu Sans Book";
    text-fill: #000;
    text-placement: point;
    text-halo-radius: 0;
    text-size: 6;
    text-wrap-width: 50;
    text-label-position-tolerance: 5;
    text-dy: 5;
    
}

.leisure.name[sport=golf]
{
point-file: url('img/mapnik/golfCourse.png');
point-allow-overlap: true;

}

.leisure.name[sport=tennis]
{
point-file: url('img/mapnik/tennis.png');
 point-allow-overlap: false;
}
.wetland.label
{
  polygon-pattern-file: url('img/mapnik/marsh.png');

} 
.aerialway.line
{
  line-pattern-file: url('img/mapnik/chair_lift.png');
}

.pier.area
{
    line-width: 0.25;
    line-color: #ffaaaa;
    polygon-fill: #ffaaaa;
    line-join: round;
}


.bouy.point[bouy='lateral_starboard']
{
 point-file: url('img/openseamap/can_green.png');
 point-allow-overlap: true;
}

.bouy.point[bouy='lateral_port']
{
 point-file: url('img/openseamap/can_red.png');
 point-allow-overlap: true;
}

.rock.area
{
  line-width: 0.25;
  line-color: #716e56;
  polygon-fill: #715e56;
  line-join: round;
}
