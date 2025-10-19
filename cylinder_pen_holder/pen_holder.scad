// Cylinder Pen Holder with Rounded Bottom Edge
// A cup-like pen holder with rounded bottom outer edge using BOSL2 library

// Import BOSL2 library for rounding functions
include <lib/BOSL2/std.scad>

// Parameters
radius = 50;              // Outer radius in mm (default: 50mm)
height = 70;              // Height in mm (default: 70mm)
wall_thickness = 2;       // Material thickness in mm (default: 2mm)
bottom_radius = 4;        // Bottom edge rounding radius in mm (default: 4mm)

// Main pen holder object with rounded bottom edge
difference() {
    // Outer cylinder with rounded bottom edge using minkowski
    minkowski() {
        union() {
            // Main cylinder body (reduced by bottom_radius)
            cylinder(h = height - bottom_radius, r = radius - bottom_radius, $fn = 100);

            // Bottom disc to ensure flat base
            cylinder(h = 0.1, r = radius - bottom_radius, $fn = 100);
        }

        // Sphere for rounding
        sphere(r = bottom_radius, $fn = 32);
    }

    // Inner cylinder to cut out (creating the cup shape)
    translate([0, 0, wall_thickness]) {
        cylinder(h = height - wall_thickness + 1, r = radius - wall_thickness, $fn = 100);
    }
}