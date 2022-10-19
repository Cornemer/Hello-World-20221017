//Global Variables
int  appWidth, appHeight;
//
void setup() {
  //Declare Display Geometry; square, landscape, portrait
size(1920,1080); //Use size for debugging
//fullscreen(); //Use fullscreen for easy deployment
appWidth = width;
appHeight = height;
//
//Concatenation
println("\t\t\tWidth ="+ width, "\tHeight ="+ height); //key variables
println("Display Monitor:", "\tWidth=", displayWidth, "\tHeight=", displayHeight);
//
//Ternary Operator
String ls="Landscape or Square", p="portrait",  DO="Display Orientation", instruct="what bizzare act is that canine preforming";
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

} //end setup
//
void draw() {
ellipse(960, 540, 1000, 1000);
square(690, 270, 540);
triangle(1000, 1000, 500, 1000, 1000, 1000);
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
// End Main Program
