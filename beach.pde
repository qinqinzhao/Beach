void setup(){
  size(800, 600);
  background(160, 255, 250);
  sky(0, "up");
  sea(260, "down");
  closerBeach(410, "down");
  fartherBeach();
  cloud();
  sign();
  
  pushMatrix();
  boat();
  translate(240, 110);
  scale(0.5);
  boat();
  translate(280, -60);
  scale(1.5);
  boat();
  popMatrix();
  
  pushMatrix();
  palm();
  translate(-105, 130);
  scale(0.2);
  palm(); 
  popMatrix();
  
  pushMatrix();
  seagull();
  translate(170, -25);
  scale(0.8);
  rotate(radians(-5));
  seagull();
  translate(180, 80);
  scale(1.5);
  rotate(radians(20));
  seagull();
  popMatrix();
  
  pushMatrix();
  starfish();
  translate(280, -60);
  rotate(radians(10));
  starfish();
  popMatrix();
  
  pushMatrix();
  chair();
  translate(100, -12);
  chair();
  popMatrix(); 
}


/** Dr.Dave's linearGradient method */
void linearGradient(float x, float y, float w, float h,
                    color c1, color c2, String dir){
  if (dir.equals("down")){
    for (float dy = 0; dy < h; dy += 1){
      stroke(lerpColor(c1, c2, dy / h));
      line(x, y + dy, x + w - 1, y + dy);
    }
  } else if (dir.equals("up")){
      for (float dy = 0; dy < h; dy += 1){
        stroke(lerpColor(c2, c1, dy / h));
        line(x, y + dy, x + w - 1, y + dy);
    }
  }
}

     
/** Sky */
void sky(float y, String dir){
  color c1 = color(200, 255, 255);
  color c2 = color(80, 215, 255);
  linearGradient(0, y, 800, 260, c1, c2, dir);
}


/** Sea */
void sea(float y, String dir){
  color c1 = color(0, 60, 250);
  color c2 = color(0, 220, 250);
  linearGradient(0, y, 800, 150, c1, c2, dir);
}


/** Closer beach */
void closerBeach(float y, String dir){
  color c1 = color(210, 170, 100);
  color c2 = color(225, 208, 146);
  linearGradient(0, y, 800, 20, c1, c2, dir);
  noStroke();
  fill(225, 208, 146);
  rect(0, 430, 800, 170);
}


/** Farther beach */
void fartherBeach(){
  noStroke();
  fill(225, 208, 146);
  triangle(0,240, 0,300, 180,290);
}


/** Palm */
void palm(){
  // Trunk
  fill(155, 100, 0);
  beginShape();
    curveVertex(700, 200);
    curveVertex(690, 250);
    curveVertex(680, 300);
    curveVertex(672, 350);
    curveVertex(666, 400);
    curveVertex(660, 450);
    curveVertex(658, 500);
    curveVertex(658, 550);
    curveVertex(665, 610);
    curveVertex(700, 630);
    curveVertex(695, 500);
    curveVertex(693, 400);
    curveVertex(700, 300);
    curveVertex(710, 240);
    curveVertex(710, 200);
  endShape(CLOSE);
  // Leaves
  fill(0, 150, 0);
  arc(605, 272, 200, 140, 4.2, 6, CHORD);
  arc(647, 300, 220, 120, 3.2, 5.2, CHORD);
  arc(778, 266, 180, 100, 3.5, 5.5, CHORD);
  arc(724, 294, 250, 100, 4.4, 6.3, CHORD);
  arc(685, 396, 150, 300, 3.5, 4.9, CHORD);
  arc(704, 410, 160, 320, 4.6, 5.8, CHORD);
}


/** Boat */
void boat(){
  fill(139, 69, 0);
  beginShape();
    vertex(180, 370);
    vertex(270, 370);
    vertex(254, 386);
    vertex(196, 386);
  endShape(CLOSE);
  fill(255, 255, 240);
  triangle(225, 300, 225, 370, 193, 364);
  triangle(226, 308, 226, 366, 261, 360);
}


/** Cloud */
void cloud(){
  //left
  fill(240, 248, 255);
  ellipse(320, 220, 160, 10);
  ellipse(220, 205, 130, 30);
  ellipse(220, 190, 70, 40);
  ellipse(290, 215, 40, 20);
  //right
  ellipse(645, 130, 240, 10);
  ellipse(532, 133, 20, 10);
  ellipse(555, 140, 120, 15);
  ellipse(609, 136, 15, 10);
  ellipse(620, 125, 130, 25);
  ellipse(615, 115, 85, 35);
}


/** Seagull */
void seagull(){
  stroke(255, 255, 255);
  strokeWeight(6);
  noFill();
  arc(100, 100, 40, 25, 4.5, 6); //left wing
  arc(142, 100, 40, 25, 3.5, 5); //right wing
  line(114, 100, 128, 99);
}
  

/** Starfish */
void starfish(){
  noStroke();
  fill(255, 127, 0);
  triangle(420,419, 416,412, 412,418); //top
  triangle(412,418, 403,418, 409,423); //left
  triangle(409,424, 405,431, 415,426); //downleft
  triangle(415,427, 423,433, 421,424); //downright
  triangle(421,424, 428,419, 419,418); //right
  ellipse(415, 422, 12, 9);
}


/* Chair */
void chair(){
  stroke(0, 0, 128);
  strokeWeight(2);
  fill(30, 144, 255);
  quad(82,484, 132,478, 158,528, 108,534);
  fill(0, 0, 205);
  quad(108,534, 158,528, 198,546, 148,552);
  fill(30, 144, 255);
  quad(148,552, 198,546, 214,586, 164,592);
  line(108, 534, 104, 554);
  line(104, 554, 138, 548);
}


/* Sign */
void sign(){
  PFont myFont;
  myFont = createFont("Georgia", 14);
  textFont(myFont);
  fill(0, 0, 0);
  text("Qinqin Zhao", 710, 560);
  text("10/24/2016", 710, 580);
}
