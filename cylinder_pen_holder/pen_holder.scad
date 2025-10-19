// Cylinder Pen Holder with Rounded Outer Edges
// A cup-like pen holder with rounded outer edges using BOSL2 library

// Import BOSL2 library for rounding functions
include <lib/BOSL2/std.scad>

// Parameters
radius = 50;              // Outer radius in mm (default: 50mm)
height = 70;              // Height in mm (default: 70mm)
wall_thickness = 2;       // Material thickness in mm (default: 2mm)
rounding = 4;             // Outer edge rounding radius in mm (default: 4mm)
show_cross_section = true; // Show cross-section view (default: false)

// Main pen holder object
difference() {
    // Outer cylinder with different rounding on top and bottom
    cyl(h = height, r = radius, rounding1 = rounding, rounding2 = wall_thickness/2, $fn = 100);

    // Inner cylinder to cut out (creating the cup shape) with rounded bottom edge
    translate([0, 0, wall_thickness]) {
        cyl(h = height - wall_thickness + 1, r = radius - wall_thickness, rounding1 = rounding, $fn = 100);
    }

    // Cross-section box (controlled by show_cross_section parameter)
    if (show_cross_section) {
        translate([0, -200, -50]) {
            cube([200, 400, 200]);
        }
    }
}