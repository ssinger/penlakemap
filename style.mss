@water:#3300cc;
@forest:#339933;
@cemetery:#a5d3ca;
@road-major: #ccff66;
@road-minor: #ccff66;
@pier: #a0a0a0;
@building: #606060;
@contour: #000000;
@serif:"Times New Roman Regular","FreeSerif Medium","DejaVu Serif Book";
@serif_italic:"Times New Roman Italic","FreeSerif Italic","DejaVu Serif Italic";
@sans:"Arial Regular","Liberation Sans Regular","DejaVu Sans Book";
@sans-bold:"Arial Bold","Liberation Sans Bold","DejaVu Sans Bold";
Map {
  background-color: @forest;
}


#water-poly{
  ::outline {
   line-color: @water;
    line-width: 2;  
    }
  polygon-fill: @water;
  }
#water-line {
  line-color: @water;
    line-width: 1;  
    line-cap: square;
    line-join: round;
}

.land {
    polygon-fill: @forest;
     ::outline {
      line-width:2;
     line-join:round;
    }
 }

.beach {
    polygon-fill: #99cc00;
     ::outline {
      line-width:2;
      line-join:round;
    }
}

.road
{
  
 
  [highway='primary'] {
    [zoom<16] {
      ::outline { 
          line-color: #000000;
          line-width: 12;
      }
      line-width:10;
    }
    [zoom>=16] {
      ::outline { 
          line-color: #000000;
          line-width: 24;
      }
      line-width: 20;
    }
    line-color:@road-major;
    
  }
  [highway!='primary']
  {
    [zoom <=14] { line-width:1;}
    [zoom >=14][zoom<16]{line-width:3;}
    [zoom>=16]{line-width: 12;}
    line-color: @road-minor;
    
  
  }
  ::label {
  [highway='primary'],[highway='trunk'],[highway='motorway'] {
    text-size: 20;
    text-name: "[name]";
    text-fill: #000000;
    text-face-name: @serif;
    text-placement: line;
    text-placement-type: simple;
    text-min-padding: 2;
    text-avoid-edges: true;
    text-min-distance: 5 ;
    
  }
  [zoom >= 16] {
      [highway!='primary'],[highway!='trunk'],[highway!='motorway']
      {
        text-size:14;
        text-name: "[name]";
        text-fill: #000000;
        text-face-name: @serif;
        text-placement: line;
        text-placement-type: simple;
        text-min-padding: 2;
        text-avoid-edges: true;
        text-min-distance: 5 ;
        text-allow-overlap: false;
      }
    }  
  }
}  
.leisure[leisure='golf_course'] {
  polygon-fill:#00ff33;
}


#sport-point[sport='golf'] {
    [zoom >=14] {
      point-file: url('img/sport_golf.n.24.png')
   }
 }
#sport-point[sport='skiing'] {
    [zoom >=14] {
      point-file: url('img/sport_skiing_downhill.n.20.png');
      text-name: "[name]";
      text-fill: #000000;
      text-allow-overlap: true;
      text-dy: 10;
      text-face-name: @serif;
   
   }
 }




.land-names {
    [zoom > 14] {
      text-face-name: @serif;
      text-size: 12;
      text-name: "[name]";
    }
  
}




#tourism {
  
  text-face-name: @serif;
  [zoom >= 14] {
    point-file: url('img/accommodation_hotel2.n.32.png');
    point-opacity: 0.65;
  }
  [zoom >=16] {
    text-size: 25;
    text-dx: 25;
    text-dy: 25;
  }
  [zoom < 16] {
      text-size: 12;
      text-dx: 5;
      text-dy: 6
   }
  text-name: "[name]";
  text-fill: #000000;
  text-allow-overlap: true;
  text-label-position-tolerance: 50;
}


#aeroway-point {
  point-file: url('img/transport_aerodrome.n.24.png');
  text-name: "[name]";
  text-fill: #000000;
  text-allow-overlap: true;
  text-dy: 10;
  text-face-name: @serif;
}


#pier-polygon {
  line-color:@pier;
  line-width:0.5;
  polygon-opacity:1;
  polygon-fill:@pier;
}


#wetland-polygon {  
  polygon-opacity:0.85;
  polygon-pattern-file: url('img/marsh.png');
}


#building-polygon {
  
  polygon-opacity:1;
  polygon-fill:@building;
}


#depth-line {
  [zoom >=16] {
    line-width:1;
    text-name: "[depth]";
    text-face-name: @serif;
    text-size: 16;
    text-spacing: 900;
    text-placement: line;
    text-fill: #000000;
    text-allow-overlap: true;
    text-label-position-tolerance:6;
    text-dy: 3;
   }
  [zoom < 16] {
    [depth=20],[depth=40],[depth=60],[depth=80],[depth=100],[depth=120] {
      line-dasharray: 4,4;
      line-color:@contour;
    }
  }
  [zoom > 16] {
    line-dasharray: 4,4;
    line-color:@contour;
  }
  
}

/**
#depth-label {
  [zoom >= 16] {
  text-name: "[filtered_depth]";
  text-face-name: @serif;
  text-size: 12;
  text-min-distance: 1000;
  text-placement: point;
  text-fill: #000000;
  text-allow-overlap: true;
  }
}
**/
.buoy {
  point-allow-overlap: true;
  [buoy='lateral_port']
  {
    point-file: url('img/openseamap/can_red.png');
  }
  [buoy='lateral_starboard']
  {
      point-file: url('img/openseamap/can_green.png');
  }
}
