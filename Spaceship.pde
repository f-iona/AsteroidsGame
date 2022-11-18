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
      myPointDirection = Math.random()*2*PI; 
      
    }
   public void hyperspace(){
     myCenterX = (int)(Math.random()*width);
     myCenterY =  (int)(Math.random()*height); 
   }
   
   public double getmyCenterX(){ 
     return myCenterX; 
   }
   public void setmyCenterX(double cx){ 
     myCenterX = cx;
   }
   public double getmyCenterY(){ 
     return myCenterY; 
   }
   public void setmyCenterY(double cy){ 
     myCenterY = cy;
   }
   
   public double getmyXspeed(){ 
     return myXspeed; 
   }
   public void setmyXspeed(double Xs){
     myXspeed = Xs; 
   }
   
    public double getmyYspeed(){ 
     return myYspeed; 
   }
   public void setmyYspeed(double Ys){
     myYspeed = Ys; 
   }
   
 
}
