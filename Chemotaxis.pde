PImage img;
Bacteria[] bob;
void setup() {
  img = loadImage("pizza.png");
  //https://pixelartmaker-data-78746291193.nyc3.digitaloceanspaces.com/image/6d5ccb722de8ad3.png
  img.resize(50,50);
  size(500,500);
  background(0);
  bob = new Bacteria[100];
  for(int i = 0; i < bob.length; i++) {
    bob[i] = new Bacteria();
  }
}   
void draw() { 
  cursor(img);
  background(0);
  for(int i = 0; i < bob.length; i++) {
     bob[i].show();
     bob[i].move();
  }
}  
class Bacteria {     
  int myX,myY,myColor;
  Bacteria() {
    myX = 150;
    myY = 150;
    myColor = color(249,215,28);
  }
  void move() {
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*15)-6;
    else 
      myX = myX + (int)(Math.random()*15)-8;
      
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*15)-6;
    else
      myY = myY + (int)(Math.random()*15)-8;
  
  }
  void show() {
    if(dist(myX,myY,mouseX,mouseY) < 50)
      myColor = color((int)(Math.random()*36)+210,(int)(Math.random()*36)+150,(int)(Math.random()*36));
    else
      myColor = color(249,215,28);
    fill(myColor);
    ellipse(myX,myY,30,30);
    fill(0);
    ellipse(myX-3,myY-3,5,5);
    triangle(myX+3,myY,myX+15,myY+7,myX+15,myY-7);
  }
}
