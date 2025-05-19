module roundedRect( w, l, h, r ) {
  innerL = l - (2*r);
  innerW = w - (2*r);

  // Sides
  translate([0,r,0])
  cube([w, innerL, h]);
  translate([r,0,0])
  cube([innerW, r, h]);
  translate([r,r+innerL,0])
  cube([innerW, r, h]);

  // Corners
  translate([r,r,0])
  cylinder(h,r = r, center=false);
  translate([innerW+r,r,0])
  cylinder(h,r = r, center=false);
  translate([r,innerL+r,0])
  cylinder(h,r = r, center=false);
  translate([innerW+r,innerL+r,0])
  cylinder(h,r = r, center=false);
}
