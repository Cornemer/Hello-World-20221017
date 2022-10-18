//Global Variables
int  appWidth, appHeight;
//
//Declare Display Geometry; square, landscape, portrait
//size(1000, 650);
//fullscreen();
appWidth = width;
appHeight = height;
String ls="Landscape or Square", p="portrait",  DO="Display Orientation", instruct="what bizzare act is that canine preforming";
String orientation = ( width > height ) ? ls : p;
println (DO, orientation);
println("\t\t\tWidth ="+ width, "\tHeight ="+ height); //key variables
println("Display Monitor:", "\tWidth=", displayWidth, "\tHeight=", displayHeight);
//
//Fit CANVAS into Display Monitor
if (width > displayWidth) appWidth = 0;  //CANVAS-width will not fit
if ( height > displayHeight ) appHeight = 0;  //CANVAS-width will not fit
if ( appWidth != 0 && appHeight != 0 ) print("Display Geometry is Good to Go.");
if ( appWidth == 0 || appHeight == 0 ) println("STOP, You've violated the law");
