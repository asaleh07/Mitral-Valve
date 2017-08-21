$fn=200;

//Creating outer ring
difference(){
    cylinder(h=3,r=5, center=true);
    cylinder(h=5,r=4.5,center=true);
}

//Creating Suture Ring
difference(){
   cylinder(h=1,r=6,center=true);
   cylinder(h=1,r=5,center=true);
}