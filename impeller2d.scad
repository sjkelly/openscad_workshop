/* OpenSCAD Workshop

Example showing a basic impeller Part done using 2d primitives.

*/


module impeller(pitch, height){
	difference(){
		union(){
			linear_extrude(height=height, twist = pitch)blade(20,3);			
		}
		translate([0,0,-1])cylinder(r=2, h = height + 2);
	}
}


//blade(radius, fin count)
module blade(r,t){
	union(){
		for(i = [0:360/t:360])
			rotate([0,0,i])square([r,5]);
		circle(r=r/2);
	}
}

impeller(60, 10);