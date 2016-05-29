
use <oshw.scad>

wall_b = 1;
wall_r = 2;
wall = wall_b + wall_r;
height = 70;

width = 111;
depth = 40;
rim = 15;
rim_heigth = 5;
offset = 17;

tool_depth = height-50+6;

$fn=40;

difference() {

	union() {
		hull() {
            translate([offset-rim,offset-rim,0])
			minkowski() {
				cube([width+(2*rim),depth+(2*rim),1]);
				cylinder(r=2,h=1);
			}

			translate([offset,offset,1])
			minkowski() {
				cube([width,depth,rim_heigth-1]);
				cylinder(r=2,h=1);
			}
		}


		translate([offset,offset,rim_heigth])
		minkowski() {
			cube([width,depth,height-2]);
			cylinder(r=2,h=1);
		}
		
		translate([offset,offset,rim_heigth+height-2])
		minkowski() {
			cube([width,depth,1]);
			sphere(r=2);
		}
		
	}
	
	translate([offset+wall,offset+wall,rim_heigth+1])
	minkowski() {
		cube([20-(2*wall_r),depth-(2*wall),height]);
		cylinder(r=2,h=1);
	}
	
	translate([offset+wall+20+wall,offset+wall,rim_heigth+1])
	minkowski() {
		cube([20-(2*wall_r),depth-(2*wall),height]);
		cylinder(r=wall_r,h=1);
	}
	
	//%color("red")
	translate([offset+wall+20+wall+20+wall,offset+wall,rim_heigth+1])
	minkowski() {
		cube([15-(2*wall_r),(depth/2)-(2*wall),height]);
		cylinder(r=wall_r,h=1);
	}
	
	translate([offset+wall+20+wall+20+wall,offset+wall+(depth/2),rim_heigth+1])
	minkowski() {
		cube([15-(2*wall_r),(depth/2)-(2*wall),height]);
		cylinder(r=wall_r,h=1);
	}
	
	translate([offset+wall+20+wall+20+wall+15+wall,offset+wall,rim_heigth+1])
	minkowski() {
		cube([15-(2*wall_r),(depth/2)-(2*wall),height]);
		cylinder(r=wall_r,h=1);
	}
	
	translate([offset+wall+20+wall+20+wall+15+wall, offset+wall+(depth/2),rim_heigth+1])
	minkowski() {
		cube([15-(2*wall_r),(depth/2)-(2*wall),height]);
		cylinder(r=wall_r,h=1);
	}
	
	//%color("red")
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5, offset+wall_b+3.5, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7 , offset+wall_b+3.5, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7+wall+7 , offset+wall_b+3.5, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5, offset+wall_b+3.5+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7 , offset+wall_b+3.5+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7+wall+7 , offset+wall_b+3.5+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5, offset+wall_b+3.5+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7 , offset+wall_b+3.5+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7+wall+7 , offset+wall_b+3.5+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5, offset+wall_b+3.5+wall+7+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7 , offset+wall_b+3.5+wall+7+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([offset+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7+wall+7 , offset+wall_b+3.5+wall+7+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	//%color("red")
	translate([(width/2)+offset,offset-1,6+height/2])
	rotate([90,0,0])
	linear_extrude(height=2)
	oshw_logo_2d(40);
	
	//%color("red")
	translate([(width/2)+offset,offset+depth+3,6+height/2])
	rotate([90,0,0])
	linear_extrude(height=2)
	oshw_logo_2d(40);
}