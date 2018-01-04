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
    translate([1.5,1.5,0])
        square([5.5,9]);
    translate([9,1.5,0])
        square([5.5,9]);
}