Star [] sky = new Star [480]; 
Spaceship jose = new Spaceship(); 
Asteroid bea = new Asteroid(); 
ArrayList <Asteroid> ash = new ArrayList <Asteroid>();

public void setup() 
{
  size(1000,550); 
  for(int i = 0; i <sky.length; i++){
      sky[i] = new Star(); 
  }
  
  for (int i = 0; i < 12; i++){
    ash.add(new Asteroid());
  }
  
}//ends setup 

public void draw() 
{
 background(0,0,0);
 jose.show(); 
 jose.move();

 for (int j = 0; j < sky.length; j++){
    sky[j].show(); 
  }

 bea.show(); 
 bea.move();
  for (int i = 0; i < ash.size(); i++){
    ash.get(i).move(); 
    ash.get(i).show(); 
    float d = dist((float)jose.getXS(), (float)jose.getYS(), (float)ash.get(i).getXA(), (float)ash.get(i).getYA());
 if (d < 13) {
   ash.remove(i); 
   }
  }
}

public void keyPressed(){

  if (key == 'f'){
    jose.hyperspace(); //hyperspace
  }
  
  if(key=='w'){
    jose.accelerate(Math.random()*2);//accelerate
  }
    if (key == 'a'){
    jose.turn(-45); //turn counter clockwise
    
  }
  if(key=='s'){
    jose.accelerate((Math.random()*2)-2);//decelerate 
  }
   if (key == 'd'){
    jose.turn(45); //turn clockwise
  } 
} //ends keypressed 
