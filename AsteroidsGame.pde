//your variable declarations here
Spaceship bob= new Spaceship();
Star[] nightSky= new Star [200];
public void setup() 
{
  //your code here
  background(0);
  size(400,400);
   for (int i=0;i<nightSky.length;i++){
   nightSky[i]=new Star();
  }
  bob.turn(90);
  bob.accelerate(0);
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for (int i=0;i<nightSky.length;i++){
   nightSky[i].show();
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
