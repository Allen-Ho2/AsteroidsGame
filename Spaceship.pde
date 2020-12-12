    myPointDirection=0; //holds current direction the ship is pointing in degrees    
 
}
  public void setXspeed (double x){
    myXspeed=x;
  }
    public void setYspeed (double y){
    myYspeed=y;
  }
  public void hyperspace(){
    myCenterX=(int)(Math.random()*401);
    myCenterY=(int)(Math.random()*401);
  }
   public int getX() {
    return (int)myCenterX;
  }
  public void setX(double x) {
    myCenterX = x;
  }
  public int getY() {
    return (int)myCenterY;
  } 
  public void setY(double y) {
    myCenterY = y;
  }
  public double getPointDirection(){return myPointDirection;}
}
