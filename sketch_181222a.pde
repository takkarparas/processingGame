PImage photo;
boolean isPressed=false;
float x1, x2, x3, x4, x5=0;
float x=550;
float y=150;
float speed1=random(3.0, 5.0);
float speed2=random(3.0, 5.0);
float speed3=random(3.0, 5.0);
float speed4=random(3.0, 5.0);
float speed5=random(3.0, 5.0);
void setup()
{
  size(640, 320, P3D);
  fill(0, 0, 0);
  rect(0, 0, 640, 320);
  size(640, 320,P3D);
  photo = loadImage("game_over.jpg");
}
void draw()

{ 
  background(0, 0, 255);
  move();
  display();
  if(x1>580 && y==30 || x2>580 && y==90 || x3>580 && y==150 || x4>580 && y==210 || x5>580 && y==270)
  {speed1=speed2=speed3=speed4=speed5=0;
  image(photo, 0, 0);
}
  if(y<30)
  {y=30;}
  if(y>270)
  {y=270;}
  println(y);
  fill(255);
  rect(610, y, 30, 30);
}
void move() 

{
  x1=x1+speed1;
  if (x1>width)
  {x1=0;}
  x2=x2+speed2;
  if(x2>width)
  {x2=0;}
  x3=x3+speed3;
  if(x3>width)
  {x3=0;}
  x4=x4+speed4;
  if(x4>width)
  {x4=0;}
  x5=x5+speed5;
  if (x5>width)
  {x5=0;}
}

void display()

{
  fill(255, 0, 0);
  rect(x1, 30, 30, 30);
  fill(255, 0, 0);
  rect(x2, 90, 30, 30);
  fill(255, 0, 0);
  rect(x3, 150, 30, 30);
  fill(255, 0, 0);
  rect(x4, 210, 30, 30);
  fill(255, 0, 0);
  rect(x5, 270, 30, 30);
}

void keyPressed()
{
  if(keyCode==UP)
  {y=y-60;}
  else 
  if(keyCode==DOWN)
  {y=y+60;}
}
