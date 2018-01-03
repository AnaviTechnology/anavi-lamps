//width from mounting hole to hole 
rpiWidth = 4.9;
//width of rpi 0 from mounting hole to hole 
rpiZeroWidth = 2.3;
//lenght from mounting hole to hole 
rpiHatLegth = 5.8;

anaviWidth = 3.05;
anaviLenght = 6.5;

module roundedSquare( width, length, radiusCorner ) {
	translate( [ radiusCorner, radiusCorner, 0 ] )
		minkowski() {
			square( [width - 2 * radiusCorner, length - 2 * radiusCorner]);
			circle(radiusCorner, $fn=50);
		}
}

difference()
{
    roundedSquare(16, 12, 2);
    translate([8,6,0])
        circle(0.2, false, $fn=50);
    //translate([0,0,0])
    //    square([8, 6]);
    
    posStart = 15;
    topLeft = 4;
    topRight = topLeft + rpiHatLegth;
    //Raspberry Pi upper holes
    translate([posStart, topLeft, 0])
        circle(0.1, false, $fn=10);
    translate([posStart, topRight, 0])
        circle(0.1, false, $fn=10);
    //Raspberry Pi Zero lower holes
    translate([posStart - rpiZeroWidth,topLeft,0])
        circle(0.1, false, $fn=10);
    translate([posStart - rpiZeroWidth,topRight,0])
        circle(0.1, false, $fn=10);
    //Raspberry Pi lower holes
    translate([posStart - rpiWidth,topLeft,0])
        circle(0.1, false, $fn=10);
    translate([posStart - rpiWidth,topRight,0])
        circle(0.1, false, $fn=10);
    
    posAnaviStart = posStart - rpiWidth;
    //ANAVI Light Controller 1st pair of holes
    translate([posAnaviStart,topLeft,0])
        circle(0.1, false, $fn=10);
    translate([posAnaviStart,topLeft-anaviWidth,0])
        circle(0.1, false, $fn=10);
    //ANAVI Light Controller 2nd pair of holes
    translate([posAnaviStart-anaviLenght,topLeft,0])
        circle(0.1, false, $fn=10);
    translate([posAnaviStart-anaviLenght,topLeft-anaviWidth,0])
        circle(0.1, false, $fn=10);
}