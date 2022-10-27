//Global Variables
int  appWidth, appHeight;
float centerWidth, centerHeight, xStart, yStart, widthRect, heightRect;
color black=#000000, white=#FFFFFF, blue=#61A0D6, purple=#D1A8ED;
color yellowNightMode=#F8FC00, purpleNightMode=#FA0096;
float thick, thin;
//
void setup() {
  //Declare Display Geometry; square, landscape, portrait
  size(1920, 1080); //Use size for debugging
  //fullscreen(); //Use fullscreen for easy deployment
  appWidth = width;
  appHeight = height;
  //
  //Concatenation
  println("\t\t\tWidth ="+ width, "\tHeight ="+ height); //key variables
  println("Display Monitor:", "\tWidth=", displayWidth, "\tHeight=", displayHeight);
  //
  //Ternary Operator
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="what bizzare act is that canine preforming";
  //String orientation = ( appWidth >= appHeight ) ? ls : p;
  //println (DO, orientation);
  if (appWidth < appHeight) { //Declare Landscape Mode
    println(instruct);
  } else {
    if ( appWidth > displayWidth ) appWidth = 0; //Canvas-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0;  //CANVAS-width will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geometry is Good to Go.");
    } else {
      println("STOP, You've violated the law");
    }
  }
  //
  //If ORIENTATION is wrong ... feedback to change it
  //if (orientation==p) println(instruct);
  //
  //Fit CANVAS into Display Monitor
  //
  //Population
  centerWidth = appWidth * 1/2;
  centerHeight = appHeight * 1/2;
  xStart = centerWidth - ( appWidth * 1/4 ) ;
  yStart = centerHeight - ( appHeight * 1/4 ) ;;
  widthRect = appWidth * 1/2;
  heightRect = appHeight * 1/2;
  thick = appWidth * 1/70;
  thin = appWidth * 1/140;
} //end setup
//
void draw() {
  background(215); //Gray Scale 0-255
  //random(a,b)
  background( color( random(0,155), random(0,15), random(0, 55) ) ); //color(r,g,b),
  //Night Mode
  background(black);
  //
  strokeWeight(thick); //noStrokee()
  stroke(purple);//purpleNightMode
  fill(blue);//blueNightMode
  rect(xStart, yStart, widthRect, heightRect);
  fill(black);// Reset Default
  stroke(black);// Reset Default
  strokeWeight(1);// reset Default
  {
   
  }
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
