float posX=300;
float posY=300;
int size=40;
float speed = 1;
float speedY=1;
int c=0;
boolean status=true;

void setup()
{
  size(800,800);
  background(0);
  frameRate(130);
    
}

void draw()
{
  
  background(254,145,145);
  fill(156,41,127);
  rectMode(CENTER);
  rect(mouseX,500,100,20);
  fill(20,100,18);
  ellipse(posX,posY,size,size);
  posX+=speed;posY+=speedY;
  
  if(posX>width)
  {
    speed=random(-5,-2);
  }
  if(posX<0)
  {
    speed=random(3,5);

  }
       if((posY>480))
  {
    
    if((posX>mouseX+60)||(posX<mouseX-60))
    {
      fill(0);
      textSize(50);
      
     status=false;
    text("G A M E\nO V E R!\n",280,100);
    textSize(25);
    text( " Score:"+c,320,250);
    noLoop();    
    }
   
    
    speedY=random(-3,-6);
   
    c++;
  }
  
  if(posY<0)
  {
    speedY=random(3,5);
  }
  fill(230,28,93);
  if(status)
  {
   textSize(15);
    text("SCORE",400,20);
    textSize(40);
    text(" "+c,400,65);
}
}
