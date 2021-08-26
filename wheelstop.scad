length = 85;
length_in = 75;
width_in = 30;
width = width_in + 2*10;
height = 1.1;
height_sp = 7;
offsetx = (length-length_in)/2;
offsety = (width-width_in)/2;

union()
{
    translate([offsety/2, offsety/2, 0.01]) cylinder(r1=offsety/2, r2 = 1.5, h=height_sp);
    translate([offsety/2, width-offsety/2]) cylinder(r1=offsety/2, r2 = 1.5, h=height_sp);
    translate([length-offsety/2, offsety/2]) cylinder(r1=offsety/2, r2 = 1.5, h=height_sp);
    translate([length-offsety/2, width-offsety/2]) cylinder(r1=offsety/2, r2 = 1.5, h=height_sp);
    difference()
    {
        cube([length, width, height ]);
        translate([offsetx, offsety, -1])  cube([length_in, width_in, 2+height]);
    };
}