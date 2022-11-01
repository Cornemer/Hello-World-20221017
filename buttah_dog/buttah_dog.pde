//Global Variables
int appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect;
color black=#000000, white=#FFFFFF, red=#E01B1B, green=#2BE01B;
color redNightMode=#F8FC00, greenNightMode=#FA0096;
float thick, thin;
Boolean grayScale=false, randomColour=false, blackBackground=false, nightMode=false;
//
void setup() {
  //Declare Display Geometry: square, landscape, portrait
  size(1920, 1080); //Use size for debugging
  //fullScreen(); //Use fullScreen for easy deployment
  appWidth = width;
  appHeight = height;
  //
  //Concatenation
  println("\t\t\tWidth="+width, "\tHeight="+height); //key variables
  println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="what the dog doin";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  if ( appWidth < appHeight ) { //Declare Landscape Mode
    println(instruct);
  } else {
    //Fit CANVAS into Display Monitor
    if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.");
    } else {
      println("Stop, you have violated the law");
    }
  }
  //
  //If ORIENTATION is wrong ... feedback to change it
  //if ( orientation==p ) println(instruct);
  //
  //Population
  centerWidth = appWidth * 1/2;
  centerHeight = appHeight * 1/2;
  xStart = centerWidth - ( appWidth * 1/4 ) ;
  yStart = centerHeight - ( appHeight * 1/4 ) ;
  ;
  widthRect = appWidth * 1/2;
  heightRect = appHeight * 1/2;
  thick = appWidth * 1/70;
  thin =  appWidth * 1/140;
} //End setup
//
void draw() {
  color c;  // Declare color 'c'
  noStroke();  // Don't draw a stroke around shapes

  // If no colorMode is specified, then the
  // default of RGB with scale of 0-255 is used.
  c = color(50, 55, 100);  // Create a color for 'c'
  fill(c);  // Use color variable 'c' as fill color
  rect(0, 40, 180, 320);  // Draw left rect

  colorMode(HSB, 100);  // Use HSB with scale of 0-100
  c = color(50, 55, 100);  // Update 'c' with new color
  fill(c);  // Use updated 'c' as fill color
  rect(220, 40, 180, 320);  // Draw right rect
  square(120, 100, 220); 
  if ( grayScale == true ) background(225); //Gray Scale 0-255
  //random(a, b)
  if ( randomColour == true ) background( color( random(0, 255), random(255), random(255) ) ); //color(r,g,b), Casting 
  //Night Mode

  //
  strokeWeight(thick); //noStroke()
  //Night Mode Decision
  if ( nightMode == true )
  {
    if ( blackBackground == true ) background(black);
    stroke(greenNightMode);
    fill(redNightMode);
  } else
  {
    stroke(red);
    fill(green);
  }
  rect(xStart, yStart, widthRect, heightRect);
  // Reset default
  fill(white);
  stroke(black);
  strokeWeight(1);
} //End draw
//
void keyPressed() {
  grayScale = false;
  randomColour = false;
  blackBackground = false;
  if ( key=='A' || key=='a' ) grayScale = true;
  if ( key=='S' || key=='s' ) randomColour = true;
  if ( key=='W' || key=='w' ) blackBackground = true;
} //End keyPressed
//
void mousePressed() {
  if ( mouseButton == LEFT ) nightMode = true;
  if ( mouseButton == RIGHT ) nightMode = false;
} //End mousePressed
//
// End Main Program
