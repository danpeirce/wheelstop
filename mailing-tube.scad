// https://www.uline.ca/Product/Detail/S-10722/Kraft-Mailing-Tubes/Kraft-Mailing-Tubes-with-End-Caps-4-x-18-080-thick

inch = 25.4;

translate([ 0, 0,inch*3/2-inch*18/2])
    rotate([0,0,90])
        difference()
        {
            cube([inch*3.25, inch*1, inch*3.0], center=true);
            translate([0,0,inch*1.25/2])
            cube([inch*1.5, inch*1.2, inch*2.2], center=true);
        }


translate([ 0, 0,0])
    cube([67, 5, 378], center=true);

difference() 
{
    color("brown",0.45) cylinder(h=18*inch, d = 4.1*inch, center=true, $fn=100);
    color("brown",0.25) cylinder(h=18.2*inch, d = 4*inch, center=true, $fn=100);
}