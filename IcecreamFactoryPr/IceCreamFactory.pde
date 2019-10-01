class IceCreamFactory{

  int ball1 = 0;
  int ball2 = 0;
  int ball3 = 0;
  
  public void renderSmallOne(){
    
  }
  
  public void setBall(int flavour){
    if(ball1 == 0){
      ball1 = flavour;
    }else if(ball2 == 0){
      ball2 = flavour;
    }else if(ball3 == 0){
      ball3 = flavour;
    }
  }
  
  public void changeColor(int c){
    if( c == 1)
      fill(255,0,0);
    
    if( c== 2)
      fill(0,0,0);
      
    if( c == 3)
      fill( 255,255,0);
  }
  
  public void renderBigOne(){
     triangle(300,200,600,200,450,400);
     
     if(ball1 != 0){
      changeColor(ball1);
       ellipse(375, 200, 150,150);
     }
      if(ball2 != 0){
        changeColor(ball2);
       ellipse(450+75, 200, 150,150);
     }
      if(ball3 != 0){
        changeColor(ball3);
       ellipse(460, 100, 150,150);
     }
     fill(255);
  }
}
