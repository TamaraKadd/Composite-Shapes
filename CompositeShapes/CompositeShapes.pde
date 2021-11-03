//Shapes
float rectX, rectY, rectWidth, rectHeight;
float circleX, circleY, circleDiameter;
fullScreen();
//
//Population
rectX = displayWidth*1/2 - displayHeight*1/2 ;
rectY = displayHeight*0;
rectWidth = displayHeight;
rectHeight = displayHeight;
circleX = displayWidth*1/2;
circleY = displayHeight*1/2;
circleDiameter = displayHeight;
//Canvas
rect(rectX, rectY, rectWidth, rectHeight);
ellipse(circleX, circleY, circleDiameter, circleDiameter);
