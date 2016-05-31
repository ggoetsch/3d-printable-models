
$fn=100;

radius = 8;
thickness = 1.7;
depth = 8;
width = depth+(4*radius)+(6*thickness)+4;

rel_depth = 0.8;

ring_dist = width - (2 * radius) - (2 * thickness);
offset_square = ((radius*(1-rel_depth))+thickness)/2;

module base() { 
	difference() {
		union() {
			
			translate([-ring_dist/2,0,0])
			circle(r=radius+thickness);

			translate([ring_dist/2,0,0])
			circle(r=radius+thickness);

			translate([0,offset_square,0])
			square([ring_dist,thickness+(radius*(1+rel_depth))],true);
			
		}
		
		translate([-ring_dist/2,0,0])
		circle(r=radius);

		translate([ring_dist/2,0,0])
		circle(r=radius);
		
		translate([0,offset_square,0])
		square([depth+2*thickness+0.2,-(4*thickness)+(radius*(1+rel_depth))],true);
		
		hull() {
			translate([(-(ring_dist-radius)/2),offset_square,0])
			square([radius,-(thickness)+(radius*(1+rel_depth))],true);
			
			translate([-((depth+2*thickness)/2)-0.5,offset_square,0])
			square([1,-(4*thickness)+(radius*(1+rel_depth))],true);
		}
		
		hull() {
			translate([((ring_dist-radius)/2),offset_square,0])
			square([radius,-(thickness)+(radius*(1+rel_depth))],true);
			
			translate([+((depth+2*thickness)/2)+0.5,offset_square,0])
			square([1,-(4*thickness)+(radius*(1+rel_depth))],true);
		}
	}
}

module holder() {
	difference() {
		minkowski() {
			square([10+(2*thickness),25],true);
			circle(radius=2);
		}

		translate([0,-(25/2),0])
		hull() {
			translate([0,2,0])
			circle(5);
			translate([0,-2,0])
			circle(5);
		}
		
		translate([0,4,0])
		circle(5);
	}
}

difference() {
	
	union() {
		
		linear_extrude(height = depth, center = true, convexity = 10, twist = 0)
		translate([0,-(radius+(2*thickness)+1),0])
		base();
			
		linear_extrude(height = depth, center = true, convexity = 10, twist = 0)
		translate([0,-(radius+(2*thickness)+1),0])
		translate([0,-(25/2)-(radius*(rel_depth)),0])
		holder();
	}
	
	translate([0,-(radius+(2*thickness)+22),0])
	cube([16,2,4], true);
	
	translate([0,offset_square-(radius+(2*thickness)+1),0])
	cube([depth,-(2*thickness)+(radius*(1+rel_depth)),depth+1],true);
}

difference() {
	linear_extrude(height = depth, center = true, convexity = 10, twist = 0)
	translate([0,(radius+(2*thickness)+1),0])
	mirror([0,1,0])
	base();
	
	translate([0,1+(thickness*1.5),0])
	cube([depth,thickness+0.1,depth+1],true);
	
	translate([0,1+(1.5*thickness)+(radius*(1+rel_depth)),0])
	cube([depth,thickness+0.1,depth+1],true);
	
	
}
