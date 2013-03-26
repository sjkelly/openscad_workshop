/* OpenSCAD Workshop

Example showing 3D primitives and transforms.

*/

//We can create a cube 10x10x10mm.
cube([10,10,10]);


/*Cylinder radius of 5 and height of 10 translated to [15,10,0].
  Note how a cylinder is oriented by default (temporarily remove the translation if you don't know)
*/
translate([15,10,0])cylinder(r = 5, h = 10);

//Sphere
translate([0,0,15])sphere(r = 5);

//Cone
translate([0,15,0])cylinder(r1 = 5, r2 = 0, h = 10);

//Cone rotated 
translate([0,15,0])cylinder(r1 = 5, r2 = 0, h = 10);