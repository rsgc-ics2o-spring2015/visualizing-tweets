// "Young" Russell Gordon
// Program started on: Friday, April 3, 2015
//
// See this page for plans and documentation of learning:
//
// https://sesamehq.com/view/7iredjZnwkH5TgCBerYuzZYhjipOQoOp/
//

// Variables with global scope – accessible in any function below
float m, n;  // Centre of my circle
float x1, y1;  // Co-ordinates for first control point
float a1;      // Angle of rotation for first control point (degrees)
float r1;      // Distance of control point from centre of circle
float x2, y2;  // Co-ordinates for first control point
float a2;      // Angle of rotation for first control point (degrees)
float r2;      // Distance of control point from centre of circle
float x3, y3;  // Co-ordinates for first control point
float a3;      // Angle of rotation for first control point (degrees)
float r3;      // Distance of control point from centre of circle
float x4, y4;  // Co-ordinates for first control point
float a4;      // Angle of rotation for first control point (degrees)
float r4;      // Distance of control point from centre of circle
float x5, y5;  // Co-ordinates for first control point
float a5;      // Angle of rotation for first control point (degrees)
float r5;      // Distance of control point from centre of circle
float x6, y6;  // Co-ordinates for first control point
float a6;      // Angle of rotation for first control point (degrees)
float r6;      // Distance of control point from centre of circle
float x7, y7;  // Co-ordinates for first control point
float a7;      // Angle of rotation for first control point (degrees)
float r7;      // Distance of control point from centre of circle
float x8, y8;  // Co-ordinates for first control point
float a8;      // Angle of rotation for first control point (degrees)
float r8;      // Distance of control point from centre of circle

// This function runs once
void setup() {
  
  // Make canvas
  size(500, 500);
  
  // Use Hue-Saturation-Brightness colour model
  colorMode(HSB, 360, 100, 100);
  
  // Black background
  background(0, 0, 0);
  
  // Smoother edges for curves
  smooth(8);
  
  // Initialize control point values
  // First point
  a1 = 45;
  r1 = 100;
  x1 = m + r1*cos(radians(a1));
  y1 = n + r1*sin(radians(a1));
  // Second point
  a2 = 90;
  r2 = 100;
  x2 = m + r2*cos(radians(a2));
  y2 = n + r2*sin(radians(a2));
  // Third point
  a3 = 135;
  r3 = 100;
  x3 = m + r3*cos(radians(a3));
  y3 = n + r3*sin(radians(a3));
  // Fourth point
  a4 = 180;
  r4 = 100;
  x4 = m + r4*cos(radians(a4));
  y4 = n + r4*sin(radians(a4));
  // Fifth point
  a5 = 225;
  r5 = 100;
  x5 = m + r5*cos(radians(a5));
  y5 = n + r5*sin(radians(a5));
  // Sixth point
  a6 = 270;
  r6 = 100;
  x6 = m + r6*cos(radians(a6));
  y6 = n + r6*sin(radians(a6));
  // Seventh point
  a7 = 315;
  r7 = 100;
  x7 = m + r7*cos(radians(a7));
  y7 = n + r7*sin(radians(a7));
  // Eighth point
  a8 = 360;
  r8 = 100;
  x8 = m + r8*cos(radians(a8));
  y8 = n + r8*sin(radians(a8));
  
}

// This function runs repeatedly
void draw() {
 
  // Make the co-ordinate system in Processing behave like
  // a regular Cartesian co-ordinate system
  translate(height/2, width/2); // Move origin to middle of canvas
  scale(1, -1);   // Positive values on y-axis above origin, not below
  
  // For reference, draw a small point at centre of circle
  fill(0, 0, 100); // White
  ellipse(m, n, 5, 5);
  
  // Draw location of first control point
  ellipse(x1, y1, 5, 5);
  // Draw location of second control point
  ellipse(x2, y2, 5, 5);
  // Draw location of third control point
  ellipse(x3, y3, 5, 5);
  // Draw location of fourth control point
  ellipse(x4, y4, 5, 5);
  // Draw location of fifth control point
  ellipse(x5, y5, 5, 5);
  // Draw location of sixth control point
  ellipse(x6, y6, 5, 5);
  // Draw location of seventh control point
  ellipse(x7, y7, 5, 5);
  // Draw location of eighth control point
  ellipse(x8, y8, 5, 5);
  
  // Now draw the smooth circle joining all control points
  strokeWeight(0.25);
  stroke(0, 0, 100); // White
  noFill();
  beginShape();
  curveVertex(x8, y8);  // Start at last point (per Generative Design pg. 225)
  curveVertex(x1, y1); 
  curveVertex(x2, y2); 
  curveVertex(x3, y3); 
  curveVertex(x4, y4); 
  curveVertex(x5, y5); 
  curveVertex(x6, y6); 
  curveVertex(x7, y7); 
  curveVertex(x8, y8); 
  curveVertex(x1, y1);
  curveVertex(x2, y2);  // Finish at one point past final control point (per Generative Design pg. 225)
  endShape();

}
