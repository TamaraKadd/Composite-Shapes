//Shapes
float rectX, rectY, rectWidth, rectHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2;
float mouthThick;
float measleX, measleY, measleDiameter;
color green = #1DF502;
color purple = #9F02F5; 
float reset;
color resetColour= #FFFFFF;
color measlesColour = color(random(0, 225), random(255), random(255));

//
void setup() {
  //geomtry
  fullScreen();
  //
  //Population
  rectX = displayWidth*1/2 - displayHeight*1/2;
  rectY = displayHeight * 0;
  rectWidth = displayHeight;
  rectHeight = displayHeight;
  faceX = displayWidth*1/2;
  faceY = displayHeight*1/2;
  faceDiameter = displayHeight; //smallest dimension
  eyeDiameter = displayWidth*1/8;
  leftEyeX = displayWidth*1.5/4;
  leftEyeY = displayHeight*1.5/4;
  rightEyeX = displayWidth*2.5/4;
  rightEyeY = leftEyeY;
  noseX1 = displayWidth/2;
  noseY1 = displayHeight*2/5;
  noseX2 = displayWidth*7/16;
  noseY2 = displayHeight*6/10;
  noseX3 = displayWidth*9/16;
  noseY3 = noseY2;
  mouthX1 = leftEyeX;
  mouthY1 = displayHeight*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthThick = 20;
  reset = 1;
//
 rect(rectX, rectY, rectWidth, rectHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);

}

void draw() {
  //
  color measlesColour = color(random(0, 225), random(255), random(255));
  //
    fill(purple);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  fill(reset);
  fill(green);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  fill(reset);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  //Canvas
 
  
   measleX = random(faceDiameter);
  measleY  = random(faceY);
  measleDiameter = random(displayHeight*1/20, displayHeight*1/10);
  fill(measlesColour);
 

   ellipse(measleX, measleY, measleDiameter, measleDiameter);
  fill(resetColour);
}
