scale = 0.0625;//1:16

lengthUp = 5000;
widthUp  = 3140;
heightUp = 700;

lengthLo = 6000;
widthLo  = 1920;
heightLo = (1330-heightUp);
scale([scale,scale,scale]){
//upper section
	//http://tiger1.info/pictures/HullTopPlate.gif
	translate([(lengthLo-lengthUp),0,heightLo]){
		//main
		translate([0,0,0])
			cube([lengthUp,widthUp,heightUp]);
		//turret
		translate([(lengthUp-1540-1180),(widthUp/2),heightUp])
			cylinder(100,1160,1160, $fn=50);

		//driver
		translate([(lengthUp-1540-1180-1713),(widthUp/2)+900,heightUp])
			cylinder(100,300,300, $fn=50);

		//radio operator
		translate([(lengthUp-1540-1180-1713),(widthUp/2)-900,heightUp])
			cylinder(100,300,300, $fn=50);

		//engine section
		translate([(lengthUp-1540-135),0,heightUp]){
			difference(){
				cube([1540+135,widthUp,100]);
				translate([0,(widthUp/2-1136/2),-10])
					cube([123,1136,120]);
			} //difference/engine
		}//translate engine sction
	}//translate upper section

//lower section
	translate([0,0,0]){
		//main
		translate([0,((widthUp-widthLo)/2),0])
			cube([lengthLo,widthLo,heightLo]);
	}//translate lower section

} //scale