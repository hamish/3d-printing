# Cylinder Pen Holder

A parametric OpenSCAD design for a cylindrical pen holder with rounded edges.

## Features

- Parametric design with configurable dimensions
- Rounded inner and outer edges for smooth finish
- Cup-like shape created by difference operation
- Uses BOSL2 library for advanced rounding

## Parameters

- `radius`: Outer radius in mm (default: 50mm)
- `height`: Height in mm (default: 70mm)
- `wall_thickness`: Material thickness in mm (default: 2mm)
- `edge_radius`: Radius for rounded edges in mm (default: 3mm)

## Dependencies

This design requires the BOSL2 library for rounding functions.

### Installing BOSL2

1. Download BOSL2 from: https://github.com/BelfrySCAD/BOSL2
2. Extract to your OpenSCAD libraries directory:
   - **Linux/Mac**: `~/.local/share/OpenSCAD/libraries/`
   - **Windows**: `%USERPROFILE%\Documents\OpenSCAD\libraries\`
3. Alternatively, clone directly into the libraries directory:
   ```bash
   cd ~/.local/share/OpenSCAD/libraries/
   git clone https://github.com/BelfrySCAD/BOSL2.git
   ```

## Usage

1. Open `pen_holder.scad` in OpenSCAD
2. Adjust parameters as needed
3. Render with F6
4. Export STL for 3D printing

## File Structure

```
cylinder_pen_holder/
├── pen_holder.scad     # Main design file
├── README.md           # This file
└── lib/               # Directory for local libraries (if needed)
```