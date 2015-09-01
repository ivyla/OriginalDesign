float moonY = 60;
float moonReflectionY = 200;
float h = 0;
float h2 = 50;
boolean isDown = true;
boolean starsExist = true;
boolean starsShrink = true;
float ellipseW = 1;
float ellipseH = 1;

boolean starsOpen = true;

void setup() {
    size(400, 400);
    background(0, 10, 35);
}

void draw() {
  scene();
  //below is the real moon
  noStroke();
  fill(255, 255, 255);
  ellipse(320, moonY+h2, 40, 40);
  h2 = 3*sin(h);
  h+=0.010;
  //moon reflection
  fill(255, 255, 255, 30);
  ellipse(320, moonReflectionY+h2, 40, 40);
  h2 = 5*sin(h);
  h+=0.02;

  stars();
}

void scene() {
  background(0, 10, 35);

  // Water
  strokeWeight(3);
  stroke(255, 255, 255, 50);
  fill(0, 20, 100, 70);
  rect(-10, 170, 430, 100); 

  // Dock
  strokeWeight(5);
  stroke(35, 10, 0);
  fill(71, 38, 0);
  quad(125, 250, 180, 170, 225, 170, 275, 250);
  stroke(55, 20, 0);
  line(170, 188, 234, 188); 
  strokeWeight(7);

  // Backgrass 
  noStroke();
  fill(211, 149, 63);
  rect(0, 250, 400, 290);

  // Base of grass (the frnt)
  fill(11, 51, 0);
  noStroke();
  for (int grassX = 0; grassX<400; grassX+= 30) {
    fill(11, 51, 0);
    strokeWeight(5);
    stroke(5, 30, 0);
    triangle(grassX, 230, grassX-30, 340, grassX+20, 340);
    noStroke();
    rect(0, 340, 400, 60);
    fill(10, 30, 0);
    rect(0, 340, 400, 35);

    for (int shad = 0; shad<400; shad+= 30) {
      fill(5, 30, 0);
      triangle(shad, 370, shad+10, 400, shad+30, 370);
    }

    //water details: left side
    stroke(85);
    strokeWeight(1);
    line(20, 180, 140, 180);
    line(0, 200, 60, 200);
    line(50, 190, 150, 190);
    line(80, 200, 130, 200);
    line(40, 215, 99, 215);
    line(60, 225, 85, 225);
    line(70, 235, 80, 235);
    //right side
    line(237, 180, 285, 180);
    line(318, 180, 400, 180);
    line(266, 190, 346, 190);
    line(377, 190, 400, 190);
    line(280, 200, 330, 200);
    line(350, 200, 400, 200);
    line(287, 210, 319, 210);
    line(297, 220, 307, 220);
  }

}

void stars() {
  //Stars
  fill(255, 255, 0);
  //VALUES LESS THAN 120; LEFT HALF OF STARS
  ellipse(50, 40, ellipseW, ellipseH);
  ellipse(23, 86, ellipseW, ellipseH);
  ellipse(103, 86, ellipseW, ellipseH);
  ellipse(60, 100, ellipseW, ellipseH);
  ellipse(94, 52, ellipseW, ellipseH);
  ellipse(90, 12, ellipseW, ellipseH);
  ellipse(59, 73, ellipseW, ellipseH);

  //VALUES GREATER THAN 120, BUT LESS THAN 200. RIGHT HALF OF STARS
  ellipse(137, 38, ellipseW, ellipseH);
  ellipse(146, 83, ellipseW, ellipseH);
  ellipse(188, 69, ellipseW, ellipseH);
  ellipse(169, 53, ellipseW, ellipseH);
  ellipse(180, 88, ellipseW, ellipseH);
  ellipse(174, 17, ellipseW, ellipseH); 

  //VALUES GREATER THAN 200, BUT LESS THAN 330. LEFT RIGHT HALF OF STARS
  ellipse(318, 15, ellipseW, ellipseH);  
  ellipse(282, 89, ellipseW, ellipseH);
  ellipse(234, 18, ellipseW, ellipseH);
  ellipse(263, 27, ellipseW, ellipseH);
  ellipse(278, 49, ellipseW, ellipseH);
  ellipse(289, 23, ellipseW, ellipseH);

  //GREATER THAN 300
  ellipse(365, 73, ellipseW, ellipseH);
  ellipse(386, 26, ellipseW, ellipseH);
  ellipse(393, 104, ellipseW, ellipseH);
  ellipse(349, 24, ellipseW, ellipseH);
  ellipse(356, 45, ellipseW, ellipseH);
  ellipse(330, 100, ellipseW, ellipseH);
  ellipse(335, 117, ellipseW, ellipseH);

  // REFLECTION
  fill(255, 255, 0, 70);
  //VALUES LESS THAN 120; LEFT HALF OF STARS
  ellipse(50, 40+142, ellipseW, ellipseH);
  ellipse(23, 86+142, ellipseW, ellipseH);
  ellipse(103, 86+142, ellipseW, ellipseH);
  ellipse(94, 52+142, ellipseW, ellipseH);
  ellipse(59, 73+142, ellipseW, ellipseH);

  //VALUES GREATER THAN 120, BUT LESS THAN 200. RIGHT HALF OF STARS
  ellipse(137, 38+142, ellipseW, ellipseH);

  //VALUES GREATER THAN 200, BUT LESS THAN 330. LEFT RIGHT HALF OF STARS
  ellipse(282, 89+142, ellipseW, ellipseH);
  //ellipse(234, 18+142, ellipseW, ellipseH);
  ellipse(263+50, 27+148, ellipseW, ellipseH);
  ellipse(278, 49+142, ellipseW, ellipseH);

  //GREATER THAN 300
  ellipse(365, 73+142, ellipseW, ellipseH);
  ellipse(330, 100+142, ellipseW, ellipseH);


  if (ellipseW >= 1 && ellipseH >= 1 && ellipseW + 2 <= 3 && ellipseH + 2 <= 3) {
    starsExist = true;
  } 
  if (ellipseW >= 5 && ellipseH >= 5) {
   starsExist = false;
   starsShrink = true;
  }
  if (starsExist = true) {
    ellipseW += 0.10;
    ellipseH += 0.10;
  }
  if (starsExist = false){
    starsShrink = true;
  }
  if (starsShrink = true) {
    ellipseW -= 0.2;
    ellipseH -= 0.2;
  }

  if (ellipseW < 3 && ellipseH < 3) {
    starsOpen = true;
  } else {
    starsOpen = false; 
  }
  if(starsOpen){
    ellipseW += 1;
    ellipseH += 1;
  } else {
    ellipseW -= 2;
    ellipseH -= 2;
  }
}

