

r=23.8;
d=7;
d2=2.5;
h=38;
x=10;

$fn=200;

linear_extrude(height = 10, center = true, convexity = 10, twist = 0, slices = 20)
union() {
    difference() {
        union() {
			
            difference() {
                circle(d=r+2*d);
                circle(d=r);
            };


            translate([h,0,0])
                difference() {
                circle(d=r+2*d2);
                circle(d=r);
            };

            translate([(h+x)/2,r/2+d/2,0])
            square([h+x,d], center = true);

            translate([h+x,r+d,0])
            difference() {
                circle(d=r+2*d);
                circle(d=r);
            };
        }
        
        polygon([[0,0],[0,r/2],[d/2+r/2,r/2],[h+r,-r/2],[h+r,-d-r/2],[r/2,-d-r/2]]);
        
        polygon([[h+r/2,d+r/2],[h+r/2,(2*d)+(1.5*r)],[h-r/2,(2*d)+(1.5*r)],[h-r/2,d+r/2]]);
        
    };

    translate([h+r/2,(1.5*d)+(1.5*r),0])
    circle(d=d);
}

//%color("blue")
//polygon([[0,0],[0,r/2],[d/2+r/2,r/2],[h+r,-r/2],[h+r,-d-r/2],[r/2,-d-r/2]]);
        
    