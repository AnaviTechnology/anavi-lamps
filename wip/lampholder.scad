difference() 
{
    circle(8.5, $fn=90); 
    circle(1, $fn=50);
    //leg 1
    translate([7.7, 0]) circle(1,$fn=50);
    //leg 2
    rotate([0, 0, 120])
        translate([7.7, 0]) circle(1,$fn=50);
    //leg 3
    rotate([0, 0, -120])
        translate([7.7, 0]) circle(1,$fn=50);
    
    // hole for cables
    rotate([0, 0, -60])
        translate([7.85, 0]) circle(0.75,$fn=50);
    
    //ANAVI Light Controller
    //rotate([0, 0, 90])
    //    translate([0,-3.5]) square([7.5, 4], true);
    
    //Holes for ANAVI Light Controller
    rotate([0, 0, 90])
    {
        //upper
        translate([4,-2]) circle(0.15,$fn=50);
        translate([-2.5,-2]) circle(0.15,$fn=50);
        //lower
        translate([4,-2-3.05]) circle(0.15,$fn=50);
        translate([-2.5,-2-3.05]) circle(0.15,$fn=50);
    }
    
    //Raspberry Pi 3
    //rotate([0, 0, 90])
    //    translate([0,4.2]) square([8.5, 5.6], true);
    //Holes for Raspberry Pi 
    rotate([0, 0, 90])
    {
        // For Raspberry Pi 3
        //lower right
        translate([1.75,1.65]) circle(0.15,$fn=50);
        //upper right
        translate([1.75,4.9+1.65]) circle(0.15,$fn=50);
        //lower left
        translate([1.75-5.8,1.65]) circle(0.15,$fn=50);
        // upper left
        translate([1.75-5.8,4.9+1.65]) circle(0.15,$fn=50);
        // Holes for Raspberry Pi 0
        //rpi lower right
        translate([1.75,4.9+1.65-2.3]) circle(0.15,$fn=50);
        //rpi lower left
        translate([1.75-5.8,4.9+1.65-2.3]) circle(0.15,$fn=50);
    }
}

