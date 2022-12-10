class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int []{-13, 25, -13, -4};
      yCorners = new int []{-13, 0, 13, 0}; 
      myColor = color(129, 105, 237);
      myXspeed = 2;
      myYspeed = 2 ;
      myCenterX = width/2;
      myCenterY = height/2; 
      myPointDirection = 0; 
      
    }
   public void hyperspace(){
     myCenterX = (int)(Math.random()*width);
     myCenterY =  (int)(Math.random()*height); 
     myPointDirection = (int) (Math.random()*360); 
     myXspeed = myYspeed = 0; 
   }
   
     public double getXS(){ 
     return myCenterX; 
   }
 
   public double getYS(){ 
     return myCenterY; 
   }
   public double getPD(){ 
     return myPointDirection; 
   }
   
  public double getXspeed(){ 
     return myXspeed; 
   }
   public double getYspeed(){ 
     return myYspeed; 
   }
   
}
 
