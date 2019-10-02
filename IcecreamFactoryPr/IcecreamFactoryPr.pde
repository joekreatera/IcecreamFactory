IceCreamFactory factory = new IceCreamFactory();
boolean canEnter = true;
void setup(){
  size(900,600);
}

void draw(){
  rect(100,50,100,100);
  rect(100,250,100,100);
  rect(100,450,100,100);
  
  factory.renderBigOne();
  
  if( mousePressed && canEnter){
    canEnter = false;
    if( mouseX > 100 && mouseX < 200){
      if( mouseY > 50 && mouseY < 150){
         factory.setBall(1);
      }
      if( mouseY > 250 && mouseY < 350){
        factory.setBall(2);
      }
      if( mouseY > 450 && mouseY < 550){
        factory.setBall(3);
      }
    }
  }
  if( !canEnter && !mousePressed ){
    canEnter = true;
  }
  
}

void keyPressed(){
  print(key);
}
