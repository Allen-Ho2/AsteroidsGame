//your variable declarations here
Spaceship bob= new Spaceship();
Star[] nightSky= new Star [200];
ArrayList <Asteroids> bub=new ArrayList <Asteroids>();
ArrayList <Bullet> shots=new ArrayList <Bullet>();
public void setup() 
{
  //your code here
  background(0);
  size(400,400);
   for (int i=0;i<nightSky.length;i++){
   nightSky[i]=new Star();
  }  
  for (int i=0;i<200;i++){
   bub.add(i, new Asteroids());
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
   for (int i=0;i<20;i++){
   bub.get(i).show();
   bub.get(i).move();
   
   if(dist(bob.getX(), bob.getY(), bub.get(i).getX(), bub.get(i).getY()) <=20){
     bub.remove(i);
  }
   }
  for (int j=0; j<shots.size();j++){
    shots.get(j).show();
    shots.get(j).move();
    System.out.println(shots.size());
  }
  for (int j=0; j<shots.size();j++){
    for (int i=0; i<bub.size();i++){
    if(dist((float)bub.get(i).getX(), (float)bub.get(i).getY(), (float)shots.get(j).getX(), (float)shots.get(j).getY()) < 10){
     shots.remove(j);
     bub.remove(i);
     break;
   }
   }
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
  if(key==' '){
    shots.add(new Bullet(bob));
  }
}
