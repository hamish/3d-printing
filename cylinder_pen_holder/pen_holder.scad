// Cylinder Pen Holder
// A simple cup-like pen holder created by subtracting an inner cylinder from an outer cylinder

// Parameters
radius = 50;              // Outer radius in mm (default: 50mm)
height = 70;              // Height in mm (default: 70mm)
wall_thickness = 2;       // Material thickness in mm (default: 2mm)
show_cross_section = true; // Show cross-section view (default: false)

// Main pen holder object
difference() {
    // Outer cylinder
    cylinder(h = height, r = radius, $fn = 100);

    // Inner cylinder to cut out (creating the cup shape)
    translate([0, 0, wall_thickness]) {
        cylinder(h = height - wall_thickness + 1, r = radius - wall_thickness, $fn = 100);
    }

    // Cross-section box (controlled by show_cross_section parameter)
    if (show_cross_section) {
        translate([0, -200, -50]) {
            cube([200, 400, 200]);
        }
    }
}