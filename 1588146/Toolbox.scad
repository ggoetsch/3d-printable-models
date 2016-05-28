
use <oshw.scad>

wall_b = 1;
wall_r = 2;
wall = wall_b + wall_r;
height = 70;

width = 151;

tool_depth = height-50+6;

$fn=40;




difference() {

	union() {
		hull() {
            translate([0,5,0])
			minkowski() {
				cube([width,70,1]);
				cylinder(r=2,h=1);
			}

			translate([20,20,1])
			minkowski() {
				cube([width-40,40,4]);
				cylinder(r=2,h=1);
			}
		}


		translate([20,20,5])
		minkowski() {
			cube([width-40,40,height]);
			cylinder(r=2,h=1);
		}
		
		
		
	}
	
	translate([20+wall,20+wall,6])
	minkowski() {
		cube([20-(2*wall_r),40-(2*wall),height]);
		cylinder(r=2,h=1);
	}
	
	translate([20+wall+20+wall,20+wall,6])
	minkowski() {
		cube([20-(2*wall_r),40-(2*wall),height]);
		cylinder(r=wall_r,h=1);
	}
	
	translate([20+wall+20+wall+20+wall,20+wall,6])
	minkowski() {
		cube([15-(2*wall_r),20-(2*wall),height]);
		cylinder(r=wall_r,h=1);
	}
	
	translate([20+wall+20+wall+20+wall,20+wall+20,6])
	minkowski() {
		cube([15-(2*wall_r),20-(2*wall),height]);
		cylinder(r=wall_r,h=1);
	}
	
	translate([20+wall+20+wall+20+wall+15+wall,20+wall,6])
	minkowski() {
		cube([15-(2*wall_r),20-(2*wall),height]);
		cylinder(r=wall_r,h=1);
	}
	
	translate([20+wall+20+wall+20+wall+15+wall, 20+wall+20,6])
	minkowski() {
		cube([15-(2*wall_r),20-(2*wall),height]);
		cylinder(r=wall_r,h=1);
	}
	
	//%color("red")
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5, 20+wall_b+3.5, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7 , 20+wall_b+3.5, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7+wall+7 , 20+wall_b+3.5, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5, 20+wall_b+3.5+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7 , 20+wall_b+3.5+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7+wall+7 , 20+wall_b+3.5+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5, 20+wall_b+3.5+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7 , 20+wall_b+3.5+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7+wall+7 , 20+wall_b+3.5+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5, 20+wall_b+3.5+wall+7+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7 , 20+wall_b+3.5+wall+7+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	translate([20+wall+20+wall+20+wall+15+wall+15+wall_b+3.5+wall+7+wall+7 , 20+wall_b+3.5+wall+7+wall+7+wall+7, tool_depth])
	rotate([0,0,0])
	cylinder(r=3.5,h=55);
	
	//%color("red")
	translate([width/2,19,6+height/2])
	rotate([90,0,0])
	linear_extrude(height=2)
	oshw_logo_2d(40);
	
	//%color("red")
	translate([width/2,63,6+height/2])
	rotate([90,0,0])
	linear_extrude(height=2)
	oshw_logo_2d(40);
}