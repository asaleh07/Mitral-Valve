$fn=20;

//Creating Outer Case
module OuterCase(innerR){
    difference(){
        cylinder(h=2,r=5, center=true);
        cylinder(h=2,r=innerR,center=true);
        cube([4,8.6,4],center=true);
        rotate(a=90, v=[1,0,0]){
            translate([-1,0,-4.2]){
                cylinder(h=1,r=.3,center=true);
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
module SutureRing(innerR,width,height){
   difference(){
       cylinder(h=height,r=innerR+width,center=true);
       cylinder(h=height,r=innerR,center=true);
       //Creating holes in ring
       translate([innerR+(.5*width),0,0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([-(innerR+(.5*width)),0,0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([0,innerR+(.5*width),0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([0,-(innerR+(.5*width)),0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([3,4.92,0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([-3,4.92,0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([-3,-4.92,0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([3,-4.92,0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([5,2.85,0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([-5,2.85,0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([5,-2.85,0]){
            cylinder(h=height,r=.4,center=true);
       }
       translate([-5,-2.85,0]){
            cylinder(h=height,r=.4,center=true);
       }
    }
}
//Creating Leaflet1
module Leaflet1(rad,thickness){
   difference(){
       cylinder(r=rad,h=thickness,center=true);
       translate([rad,0,0]){
           cube([2*rad,2*rad,thickness],center=true);
       }
   }
}
//Drawing Objects
OuterCase(4.3);
SutureRing(5,1.4,.6);
Leaflet1(4.3,.5);