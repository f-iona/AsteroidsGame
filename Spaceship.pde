class Spaceship extends Floater  
{   
    public Spaceship(){
      corners =4;
      xCorners = new int []{-9, 17, -9, -3};
      yCorners = new int []{-9, 0, 9, 0}; 
      myColor = color(129, 105, 237);
      myXspeed = myYspeed = (Math.random()*3)+1;
      myCenterX = width/2;
      myCenterY = height/2; 
      myPointDirection = 0; 
      
    }
   public void hyperspace(){
     myCenterX = (int)(Math.random()*width);
     myCenterY =  (int)(Math.random()*height); 
     myPointDirection = (int) (Math.random()*360); 
   }
   
     public double getXS(){ 
     return myCenterX; 
   }
   
   public double getYS(){ 
     return myCenterY; 
   }
 
}
