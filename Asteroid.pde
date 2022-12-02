class Asteroid extends Floater 
{
  private double rotSpeed; 
  public Asteroid() {
      corners = 6; 
      xCorners = new int []{-11, 7, 13, 6, -11, -5};
      yCorners = new int []{-8, -8, 0, 10, 8, 0}; 
      myColor = color(153, 168, 176);
      myXspeed = myYspeed = (Math.random()*2)+1;
      myCenterX = (int)(Math.random()*width);
      myCenterY = (int)(Math.random()*height); 
      myPointDirection = Math.random()*2*PI; 
      rotSpeed = Math.random()*2*PI;
  } 
  public void move() {
    turn(rotSpeed); 
    super.move(); 
  }
   public double getXA(){ 
     return myCenterX; 
   }
   
   public double getYA(){ 
     return myCenterY; 
   }
   
}
