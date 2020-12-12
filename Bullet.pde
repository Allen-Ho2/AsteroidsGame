class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX= theShip.getX();
    myCenterY= theShip.getY();
    myXspeed= 0.05;
    myYspeed= 0.05;
    myPointDirection=theShip.getPointDirection();
    accelerate(6.0);
    myColor= color(255,0,0);
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,10,10);
    fill(myColor);
  }
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getX(){
    return myCenterX;
  }
   public double getY(){
    return myCenterY;
  }
}
