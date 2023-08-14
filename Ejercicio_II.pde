//Javier Salazar
//5212-22-107

float posX, posY;
float size = 100;
color shapeColor;

void setup() {
  size(800, 600);
  background(255);
  posX = width / 2;
  posY = height / 2;
  shapeColor = color(random(255), random(255), random(255));
}

void draw() {
  background(255);
  fill(shapeColor);
  if (mousePressed) {
    if (dist(mouseX, mouseY, posX, posY) < size / 2) {
      shapeColor = color(random(255), random(255), random(255));
    }
  }
  
  ellipse(posX, posY, size, size);
}

void mouseClicked() {
  posX = mouseX;
  posY = mouseY;
}
