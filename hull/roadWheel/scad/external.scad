scale = 0.0625;//1:16

translate([0,0,0])
scale([scale,scale,scale])
rotate_extrude(angle=360, convexity=120, $fn=100)
	rotate([0,0,90])	
		import("../dxf/external_countour.dxf");

//cylinder(10,3.2,3.2,$fn=20);