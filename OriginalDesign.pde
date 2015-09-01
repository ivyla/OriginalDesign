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
  //function(); 
  //  backgrass();
  //scene();
  //below is the real moon
  //noStroke();
  fill(255, 255, 255);
  ellipse(320, moonY+h2, 40, 40);
  h2 = 3*sin(h);
  h+=0.010;
  //moon reflection
  fill(255, 255, 255, 30);
  ellipse(320, moonReflectionY+h2, 40, 40);
  h2 = 5*sin(h);
  h+=0.02;

  //stars();
}

