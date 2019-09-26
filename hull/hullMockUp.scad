scale = 0.0625;//1:16

length = 5000;
width  = 3140;
height = 1000;
scale([scale,scale,scale]){
	//upper section
	translate([0,0,0])
		cube([length,width,height]);
	//turret
	translate([(length-1540-1180),(width/2),height])
		cylinder(100,1160,1160, $fn=50);

	//driver
	translate([(length-1540-1180-1713),(width/2)+900,height])
		cylinder(100,300,300, $fn=50);

	//radio operator
	translate([(length-1540-1180-1713),(width/2)-900,height])
		cylinder(100,300,300, $fn=50);

	//engine section
	translate([(length-1540-135),0,height]){
		difference(){
			cube([1540+135,width,100]);
			translate([0,(width/2-1136/2),-10])
				cube([123,1136,120]);
		}
	}


} //scale