Star [] sky = new Star [480]; 
Spaceship jose = new Spaceship(); 
Asteroid bea = new Asteroid(); 
ArrayList <Asteroid> ash = new ArrayList <Asteroid>();
ArrayList <Bullet> bz = new ArrayList <Bullet>();

public void setup() 
{
  size(1000,550); 
  for(int i = 0; i <sky.length; i++){
      sky[i] = new Star(); 
  }
  
  for (int i = 0; i < 15; i++){
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
 bea.move(); //a single asteroid 
 
  for (int i = 0; i < ash.size(); i++){
    ash.get(i).move(); 
    ash.get(i).show(); 
    float d = dist((float)jose.getXS(), (float)jose.getYS(), (float)ash.get(i).getXA(), (float)ash.get(i).getYA());
 if (d < 14) {
   ash.remove(i); 
   }
  }//ends for loop 
  for (int i = 0; i < bz.size(); i++){
    bz.get(i).move(); 
    bz.get(i).show(); 
    
  }//ends bz for loop 
  
  for (int x = 0; x < bz.size(); x++){
    for (int y = ash.size() -1; y >= 0; y--){
       float d2 = dist((float)bz.get(x).getXB(), (float)bz.get(x).getYB(), (float)ash.get(y).getXA(), (float)ash.get(y).getYA());
    
    if (d2 < 10){
      bz.remove(x);
      ash.remove(y);
      break;   
    }
   }//for loop y 
  } //ends for loop x
  
  if (ash.size() == 0){
    color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)); 
    textSize(80); 
    textAlign(CENTER, CENTER); 
    text ("YOU WIN!", width/2, height/2);
      fill (255, 255, 0);
      strokeWeight(1);
      ellipse (55, 463, 50, 50);
      fill (0, 0, 0);
      ellipse ( 43, 455, 10, 18);
      ellipse (63, 455, 10, 18);
      noFill();
      strokeWeight(2);
      arc(55, 468, 25, 25, radians (20), radians (150)); 
  }
  
  
}//ends draw

public void keyPressed(){

  if (key == 'f' || key == 'F'){
    jose.hyperspace(); //hyperspace
  }
  
  if(key=='w'  || key == 'W'){
    jose.accelerate(0.4);//accelerate
  }
    if (key == 'a' || key == 'A'){
    jose.turn(-45); //turn counter clockwise
    
  }
  if(key=='s'  || key == 'S'){
    jose.accelerate(-0.5);//decelerate 
  }
   if (key == 'd' || key == 'D'){
    jose.turn(45); //turn clockwise
  } 
   if (key == ' '){
  bz.add(new Bullet(jose));

  //shooting
  } 
}//ends key pressed
