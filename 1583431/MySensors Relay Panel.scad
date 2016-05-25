


// Sockel
module boardHolder(width=44,height=18) {
	translate([0,2,0])
	difference() {
		
		union() {	
			//%color("blue")
			hull() {
				translate([0,-2,0])
				cube([width+4,10,1]);
				
				translate([0,1,1])
				cube([width+4,4,1]);
			}
			
			//%color("blue")
			hull() {
				translate([0,0,2])
				cube([4,6,2]);
				
				translate([0,-2,0])
				cube([4,10,1]);
			}
			
			//%color("blue")
			hull() {
				translate([width,0,2])
				cube([4,6,2]);
				
				
				translate([width,-2,0])
				cube([4,10,1]);			
			}
			
			
			//%color("blue")
			translate([width,-2,0])
			cube([4,3,height+2]);	
			
			hull() {
				translate([width,0,height])
				cube([4,6,2]);
				
				
				translate([width,-2,height+2])
				cube([4,10,1]);			
			}
			
			//%color("blue")
			translate([0,-2,0])
			cube([4,3,height+2]);	
			
			hull() {
				translate([0,0,height])
				cube([4,6,2]);
				
				
				translate([0,-2,height+2])
				cube([4,10,1]);			
			}
		}

		//%color("red")
		translate([2,2.25,2.1])
		cube([width,1.5,height+1.1]);
	}
}

module plate(width=44,depth=33) {
		
	union() {	
		
		minkowski() {
			cube([width,depth,1]);
			cylinder(r=3,h=1);
		}		
	}
}

module stand(width=44,depth=33) {
	
	h = 5;
	r1 = 1.8;
	r2 = 1.3;
	
	union() {	
		
		minkowski() {
			cube([width,depth,1]);
			cylinder(r=3,h=1);
		}
		
		translate([0,0,2])
		cylinder(h = h, r1 = r1, r2 = r2, center = false);
		
		translate([0,depth,2])
		cylinder(h = h, r1 = r1, r2 = r2, center = false);
		
		translate([width,0,2])
		cylinder(h = h, r1 = r1, r2 = r2, center = false);
		
		translate([width,depth,2])
		cylinder(h = h, r1 = r1, r2 = r2, center = false);
	}
}

module powerHolder(width=12,depth=15,height=12) {
	
	h = height;
	r1 = 1.8;
	r2 = 1.8;
		
	difference() {
		union() {	
			
			minkowski() {
				cube([width,depth,1]);
				cylinder(r=3,h=1);
			}
			
			translate([-2,-1,2])
			cube([3,3,height]);
			
			translate([-2,depth-2,2])
			cube([3,3,height]);
			
			//%color("red")
			translate([width-2,-2,2])
			cube([3,3,height]);
			
			//%color("red")
			translate([width-2,depth-1,2])
			cube([3,3,height]);
		}
		
		translate([0,0,2.01])
		cube([width,depth,height]);
	}
}


module base() {
	translate([10,-90,0])
	difference() {
		translate([-10,-10,0])
		plate(width=90,depth=75);

		translate([0,0,1])
		stand();

		translate([-2,50,1])
		boardHolder();

		translate([55,50,1])
		boardHolder(width=16,height=29);
		
		translate([60,0,1])
		powerHolder();
		
	}
}

module p1() {
	translate([60,0,1])
	powerHolder();
}

module s1() {
	translate([0,0,1])
	stand();
}

module x1() {
	translate([-2,65,1])
	rotate([90,0,0])
	boardHolder();
}

module x2() {
	translate([60,65,1])
	rotate([90,0,0])
	boardHolder(width=16,height=13);
}

$fn=100;

// base plate
base();
// power
p1();
// relay
s1();
// nano
x1();
// radio
x2();

