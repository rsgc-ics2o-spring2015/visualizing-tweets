// "Young" Russell Gordon
// Program started on: Friday, April 3, 2015
//
// See this page for plans and documentation of learning:
//
// https://sesamehq.com/view/7iredjZnwkH5TgCBerYuzZYhjipOQoOp/
//

// Variables with global scope – accessible in any function below
float m, n;  // Centre of my circle
int controlPointCount = 8; // How many control points to use
float x[] = new float[controlPointCount];  // Horizontal positions for control points
float y[] = new float[controlPointCount];  // Vertical positions for control points
float a[] = new float[controlPointCount];  // Angle of rotation for control points
float r[] = new float[controlPointCount];  // Distance from centre (radius) for control points
float c[] = new float[controlPointCount];  // Change value (speed at which control points move from centre)
boolean debug = false;  // Whether to print debug messages

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
  int i = 0;
  while (i < controlPointCount) {

    // Set angles of rotation 
    a[i] = 360 / controlPointCount * i;  // if 8 control points used, increment by 45

    // Set radius for control points
    r[i] = random(50, 100);

    // Set change values for control points
    c[i] = random(0, 1);

    // Calculate horizontal positions
    x[i] = m + r[i]*cos(radians(a[i]));

    // Calculate vertical positions
    y[i] = m + r[i]*sin(radians(a[i]));

    i = i + 1;  // increase counter for loop so that end condition will be met
  }
}

// This function runs repeatedly
void draw() {

  // Clear background
  background(0, 0, 0);

  // Make the co-ordinate system in Processing behave like
  // a regular Cartesian co-ordinate system
  translate(height/2, width/2); // Move origin to middle of canvas
  scale(1, -1);   // Positive values on y-axis above origin, not below

  // Show output that helps illustrate how program works
  if (debug) {
    
    // For reference, draw a small point at centre of circle
    fill(0, 0, 100); // White
    ellipse(m, n, 5, 5);

    // Label and draw control points
    int i = 0;
    while (i < controlPointCount) {

      // Draw label for control point
      myText("" + i, x[i], y[i]); // "" + i forces the value of i to be passed as a string

      // Draw small dot at control point
      ellipse(x[i], y[i], 5, 5);

      // increment counter so that exit condition is met
      i = i + 1;
    }
  }

  // Set visual characteristics for the curve
  strokeWeight(0.5);
  stroke(0, 0, 100); // White
  noFill();
  
  // Now draw the smooth circle joining all control points
  beginShape();
  // First point on curve not actually drawn
  curveVertex(x[controlPointCount - 1], y[controlPointCount - 1]); 
  int i = 0;
  while (i < controlPointCount) {

    // Add control points
    curveVertex(x[i], y[i]); 

    // increment counter so that exit condition is met
    i = i + 1;
  }
  // End with starting point
  curveVertex(x[0], y[0]);
  // Finish at one point past final control point (per Generative Design pg. 225)
  curveVertex(x[1], y[1]);  
  endShape();

  // Change increment values, adjust radius for control points,
  // and re-calculate point positions for next iteration of draw()
  i = 0;
  while (i < controlPointCount) {

    // Change increment values for each control point
    // This is meant to simulate how control points will
    // move when their radius is controlled by character
    // frequency counts... it mostly produces what I expect
    // the animation will look like when I can get my program
    // to actually read tweets posted under the current trending
    // topic on Twitter
    if (floor(r[i]) % (20 + controlPointCount / 2 * 10) == 0) c[i] = random(0, 1);

    // Change radius values for each control point
    // (this is another part where I think arrays will help make code more efficient)
    r[i] = r[i] + c[i];
    
    // Re-calculate horizontal position
    x[i] = m + r[i]*cos(radians(a[i]));

    // Re-calculate vertical position
    y[i] = m + r[i]*sin(radians(a[i]));

    // increment counter so that exit condition is met
    i = i + 1;
  }

}

// Responds when a key is pressed on the keyboard
void keyPressed() {

  // Save a screenshot when the 's' key is pressed
  if (key == 's') {
    saveFrame("output-#####.png");
  }
}

// Responds when mouse is pressed
void mousePressed() {

  // Restart sketch
  setup();
}

// Prints text output
// (works around apparent bug where text is printed upside down
//  after 'scale' command flips the y-axis)
void myText(String message, float x, float y) {

  scale(1, -1);
  text(message, x+5, y*-1+5);
  scale(1, -1);
}
