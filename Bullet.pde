class Bullet extends Floater 
{
  public Bullet(Spaceship theShip){
      myCenterX = theShip.getXS();
      myCenterY = theShip.getYS(); 
      //myXspeed = Math.cos(theShip.getPD());
      //myYspeed =Math.sin(theShip.getPD());
      myColor = color (191, 250, 52);
      myPointDirection= theShip.getPD();
   
      accelerate(1); 
      super.move();
   
  }
  
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10); 
  }
  
 public void move(){
    myCenterX += 3;
    myCenterY +=3; 
    myPointDirection= jose.getPD();
   
 }
   public double getXB(){ 
     return myCenterX; 
   }
   public double getYB(){ 
     return myCenterY; 
   }
}
