/* OpenSCAD Workshop

Example showing extrusion of a dxf file.

*/

linear_extrude(height = 10, center = false, convexity = 10, twist = 0)
	import("dxf.dxf", layer = "0");