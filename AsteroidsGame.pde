
Star [] sky = new Star [480]; 
Spaceship jose = new Spaceship(); 

public void setup() 
{
  size(1000,550); 
  for(int i = 0; i <sky.length; i++){
      sky[i] = new Star(); 
  }
}
public void draw() 
{
 background(0,0,0);
 jose.show(); 
 jose.move();
 //jose.turn(PI); 
 for (int j = 0; j < sky.length; j++){
    sky[j].show(); 
  }
 
}

public void keyPressed(){
 
  
  if (key == 'a'){
    jose.turn(-45); //turn counter clockwise
    //jose.getmyCenterX() += jose.getmyXspeed();
  }
  if (key == 'd'){
    jose.turn(45); //turn clockwise
  } 
  if (key == 'h'){
    jose.hyperspace(); //hyperspace
  }
  
  if(key=='w'){
    jose.accelerate(Math.random()*2);//accelerate
  }
  
  if(key=='s'){
    jose.accelerate((Math.random()*2)-2);//decelerate 
  }
  
} 
