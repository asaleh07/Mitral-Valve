$fn=200;

//Creating Outer Case
module OuterCase(innerR,height){
    color("Black",0.5)
    difference(){
        cylinder(h=height,r=5, center=true);
        cylinder(h=height,r=innerR,center=true);
        translate([0,0,-.1]){
            cube([4,8.6,1.3],center=true);
        }
        rotate(a=90, v=[1,0,0]){
            translate([-1,0,-4.2]){
                cylinder(h=1    ,r=.3,center=true);
            }
        }
        rotate(a=90, v=[1,0,0]){
            translate([1,0,-4.2]){
                cylinder(h=1,r=.3,center=true);
            }
        }
        rotate(a=90, v=[1,0,0]){
            translate([-1,0,4.2]){
                cylinder(h=1,r=.3,center=true);
            }
        }
        rotate(a=90, v=[1,0,0]){
            translate([1,0,4.2]){
                cylinder(h=1,r=.3,center=true);
            }
        }
    }
}

//Creating Suture Ring
module SutureRing(innerR,width,height,numholes){
   difference(){
       cylinder(h=height,r=innerR+width,center=true);
       cylinder(h=height,r=innerR,center=true);
       //Creating holes in ring
       for(i=[0:numholes]){
           rotate([0,0,i*360/numholes]){
               translate([innerR+(.5*width),0,0]){
                    cylinder(h=height,r=.4,center=true);
                }
            }   
       }
   }
}
//Creating Leaflet1
module Leaflet1(rad,thickness){
   union(){
       difference(){
           cylinder(r=rad,h=thickness,center=true);
           translate([rad,0,0]){
               cube([2*rad,2*rad,thickness],center=true);
           }
           rotate([90,90,0]){
               translate([-.6,0,0]){
                   cylinder(r=.8,h=10,$fn=3,center=true);}}
       }
       rotate(a=90, v=[1,0,0]){
            translate([-1,0,4.2]){
                cylinder(h=1,r=.2,center=true);
                }
            }
       rotate(a=90, v=[1,0,0]){
            translate([-1,0,-4.2]){
                cylinder(h=1,r=.2,center=true);
                }
            }

    }
}

//Creating Leaflet2
module Leaflet2(rad,thickness){
   union(){
       difference(){
           cylinder(r=rad,h=thickness,center=true);
           translate([-rad,0,0]){
               cube([2*rad,2*rad,thickness],center=true);
           }
           rotate([90,90,0]){
               translate([-.6,0,0]){
                   cylinder(r=.8,h=10,$fn=3,center=true);}}
       }
       rotate(a=90, v=[1,0,0]){
            translate([1,0,4.2]){
                cylinder(h=1,r=.2,center=true);
                }
            }
       rotate(a=90, v=[1,0,0]){
            translate([1,0,-4.2]){
                cylinder(h=1,r=.2,center=true);
                }
            }

    }
}
//Drawing Objects
OuterCase(4.3,1.5);
SutureRing(5,1.4,.6,30);
Leaflet1(4.3,.5);
Leaflet2(4.3,1);