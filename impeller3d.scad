/* OpenSCAD Workshop

Example showing a basic impeller part done using 3D primitives.

*/


module impeller(resolution, pitch, height){
	difference(){
		union(){
			for( i = [0:resolution:height]){
				translate([0,0,i])rotate([0,0,i*pitch/height])blade(20,3,resolution);	
			}		
		}
		translate([0,0,-1])cylinder(r=2, h = height + 2);
	}
}


//blade(radius, fin count)
module blade(r,t,resolution){
	union(){
		for(i = [0:360/t:360])
			rotate([0,0,i])cube([r,5,resolution]);
		cylinder(r=r/2,h=resolution);
	}
}

impeller(0.1, 60, 10);
