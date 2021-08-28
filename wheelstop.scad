length = 85;
length_in = 75;
width_in = 30;
width = width_in + 2*10;
height = 1.1;
height_sp = 7;
offsetx = (length-length_in)/2;
offsety = (width-width_in)/2;
in_rad = 7;
union()
{
    // four cones
    translate([offsety/2, offsety/2, 0.01]) cylinder(r1=offsety/2, r2 = 1.5, h=height_sp);
    translate([offsety/2, width-offsety/2]) cylinder(r1=offsety/2, r2 = 1.5, h=height_sp);
    translate([length-offsety/2, offsety/2]) cylinder(r1=offsety/2, r2 = 1.5, h=height_sp);
    translate([length-offsety/2, width-offsety/2]) cylinder(r1=offsety/2, r2 = 1.5, h=height_sp);
    difference()
    {
        cube([length, width, height ]); // main plate
        translate([offsetx, offsety, +0.2+0.03])  cube([length_in, width_in, 2+height]); // rectangular hole in main plate leaves 0.2 mm floor in center
        hull()
        {
            translate([offsetx+1+in_rad, offsety+in_rad+1, -0.123]) cylinder(r= 6, h=2);
            translate([offsetx+1+in_rad, width-(offsety+in_rad+1), -0.123]) cylinder(r= 6, h=2);
            translate([length-(offsetx+1+in_rad), offsety+in_rad+1, -0.123]) cylinder(r= 6, h=2);
            translate([length-(offsetx+1+in_rad), width-(offsety+in_rad+1), -0.123]) cylinder(r= 6, h=2);
        }
    };
    difference()
    {
        translate([offsetx-0.81, offsety-offsety/2-0.81, +0.05]) cube([length_in+2*0.81, width_in+offsety+2*0.81, height*6 ]);   // box for walls
        translate([offsetx-0.01, offsety-offsety/2-0.01, -0.2+0.035])  cube([length_in+0.03, width_in+offsety+0.03, 2+height*6]); // rectangular hole in wall box 
    };
}