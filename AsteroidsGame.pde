//your variable declarations here
Spaceship bob= new Spaceship();
public void setup() 
{
  //your code here
  background(0);
  size(400,400);
  bob.turn(90);
  bob.accelerate(0);
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for (int i=0;i<200;i++){
    Star bob= new Star();
    bob.show();
  }
}
public void keyPressed(){
  if(key=='w'){
    bob.accelerate(0.5);
}
   if(key=='a'){
     bob.turn(5);
   }
   if(key=='d'){
     bob.turn(-5);
   }
   if(key=='s'){
    bob.accelerate(-0.5);
}
  if(key=='h'){
  bob.setXspeed(0.0);
  bob.setYspeed(0.0);
  bob.turn((int)(Math.random()*360));
  bob.hyperspace();
}
}
