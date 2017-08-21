$fn=40;

//Creating outer ring
difference(){
    cylinder(h=2,r=5, center=true);
    cylinder(h=2,r=4.5,center=true);
}

//Creating Suture Ring
difference(){
   cylinder(h=.8,r=6.4,center=true);
   cylinder(h=.8,r=5,center=true);
   //Creating holes in ring
   translate([5.7,0,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([-5.7,0,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([0,5.7,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([0,-5.7,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([3,4.92,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([-3,4.92,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([-3,-4.92,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([3,-4.92,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([5,2.85,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([-5,2.85,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([5,-2.85,0]){
        cylinder(h=1,r=.4,center=true);
   }
   translate([-5,-2.85,0]){
        cylinder(h=1,r=.4,center=true);
   }
}
//Creating Leaflet