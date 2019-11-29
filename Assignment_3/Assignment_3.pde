float sliderX=50;
float thickness=2;
float sliderY=570;
int clearX,clearY;
int r=91;
int g=216;
int b=237;
int n1=1;
int n2=1;
int n3=1;
int m=255;
int m2=255;
int m3=255;
int m4=255;
int m5=255;
int m6=255;
int m7=255;
color s=#000000;
int tool=0;
PImage dio;
PImage eraser;
PImage tl;
PImage tbc;
PImage sb;
PImage go;
void setup(){
  size(800,600);
  background(255);
  textAlign(CENTER,CENTER);
  clearX=50;
  clearY=50;
  dio=loadImage("dioface.png");
  imageMode(CENTER);
  eraser=loadImage("eraser.png");
  tl=loadImage("tl.png");
  tbc=loadImage("tbc.png");
  sb=loadImage("sb.png");
  go=loadImage("go.png");
}
void draw(){
  
  
  //prln
  println(mouseX,mouseY);
  
  
 
  //too bar
  stroke(0);
  strokeWeight(2);
  fill(100);
  rect(100,0,700,90);
  rect(0,0,100,600);
  
  
  
  //slide
  fill(255);
  line(50,570,50,370);
  ellipse(sliderX,sliderY,40,40);
  if(dist(sliderX,sliderY,mouseX,mouseY)<15){
    fill(100,100,100);
  }
  ellipse(sliderX,sliderY,30,30);
  
  
  
  //slider movement
  if(dist(50,sliderY,mouseX,mouseY)<=15 && mousePressed){
    sliderY=mouseY;
  }
  if(sliderY<=370){
    sliderY=370;
  }
  if(sliderY>=570){
    sliderY=570;
  }
 
  
  //thickness
  thickness = map(sliderY,570,370,1,20);
  strokeWeight(thickness);
  
  
  //color select
  
  //red
   noStroke();
  if((mouseX<85) && (mouseX>15) && (mouseY<130) && (mouseY>100)){
    fill(r,g,b);
  }
    else{fill(250,42,0);}
    rect(15,100,70,30);
    fill(250,42,0,m7);
    rect(17,102,66,26);
    
    r=r+n1;
    g=g+n2;
    b=b+n3;
    
    if(r>=255){n1=-2;}
    if(r<=0){n1=2;}
    if(g>=255){n2=-3;}
    if(g<=0){n2=3;}
    if(b>=255){n3=-4;}
    if(b<=0){n3=4;}
    if((mouseX<85) && (mouseX>15) && (mouseY<130) && (mouseY>100)&& mousePressed){
      m7=20;}else{m7=255;}
      
  
  //orange
   noStroke();
  if((mouseX<85) && (mouseX>15) && (mouseY<165) && (mouseY>135)){
    fill(r,g,b);}
    else{fill(243,134,48);}
    rect(15,135,70,30);
    fill(243,134,48,m6);
    rect(17,137,66,26);
    
    r=r+n1;
    g=g+n2;
    b=b+n3;
    
    if(r>=255){n1=-2;}
    if(r<=0){n1=2;}
    if(g>=255){n2=-3;}
    if(g<=0){n2=3;}
    if(b>=255){n3=-4;}
    if(b<=0){n3=4;}
     if( (mouseX<85) && (mouseX>15) && (mouseY<165) && (mouseY>135)&& mousePressed){
      m6=20;}else{m6=255;}
      
  
  //yellow
  noStroke();
  if((mouseX<85) && (mouseX>15) && (mouseY<200) && (mouseY>170)){
    fill(r,g,b);}
    else{fill(229,240,76);}
    rect(15,170,70,30);
    fill(229,240,76,m5);
    rect(17,172,66,26);
    
    r=r+n1;
    g=g+n2;
    b=b+n3;
    
    if(r>=255){n1=-2;}
    if(r<=0){n1=2;}
    if(g>=255){n2=-3;}
    if(g<=0){n2=3;}
    if(b>=255){n3=-4;}
    if(b<=0){n3=4;}
    if((mouseX<85) && (mouseX>15) && (mouseY<200) && (mouseY>170)&& mousePressed){
      m5=20;
    }
      else{m5=255;}
      
  
  //green
  noStroke();
  if((mouseX<85) && (mouseX>15) && (mouseY<235) && (mouseY>205)){
    fill(r,g,b);
  }
    else{fill(190,242,2);}
    rect(15,205,70,30);
    fill(190,242,2,m4);
    rect(17,207,66,26);
    
    r=r+n1;
    g=g+n2;
    b=b+n3;
    
    if(r>=255){n1=-2;}
    if(r<=0){n1=2;}
    if(g>=255){n2=-3;}
    if(g<=0){n2=3;}
    if(b>=255){n3=-4;}
    if(b<=0){n3=4;}
    if( (mouseX<85) && (mouseX>15) && (mouseY<235) && (mouseY>205)&& mousePressed){
      m4=20;
    }
      else{m4=255;}
 
  //blue
  noStroke();
  if((mouseX<85) && (mouseX>15) && (mouseY<270) && (mouseY>240)){
    fill(r,g,b);
  }
    else{fill(7,223,234);}
    rect(15,240,70,30);
    fill(7,223,234,m3);
    rect(17,242,66,26);
    
    r=r+n1;
    g=g+n2;
    b=b+n3;
    
    if(r>=255){n1=-2;}
    if(r<=0){n1=2;}
    if(g>=255){n2=-3;}
    if(g<=0){n2=3;}
    if(b>=255){n3=-4;}
    if(b<=0){n3=4;}
    if((mouseX<85) && (mouseX>15) && (mouseY<270) && (mouseY>240)&& mousePressed){
      m3=20;

      }
      else{m3=255;}
      
  
  //purple
  noStroke();
  if((mouseX<85) && (mouseX>15) && (mouseY<305) && (mouseY>275)){
    fill(r,g,b);
  }
    else{fill(116,14,122);}
    rect(15,275,70,30);
    fill(116,14,122,m2);
    rect(17,277,66,26);
    
    r=r+n1;
    g=g+n2;
    b=b+n3;
    
    if(r>=255){n1=-2;}
    if(r<=0){n1=2;}
    if(g>=255){n2=-3;}
    if(g<=0){n2=3;}
    if(b>=255){n3=-4;}
    if(b<=0){n3=4;}
   if( (mouseX<85) && (mouseX>15) && (mouseY<305) && (mouseY>275)&&mousePressed){
      m2=20;

   }
      else{m2=255;}
      
      
  //black
  noStroke();
  if((mouseX<85) && (mouseX>15) && (mouseY<340) && (mouseY>310)){
    fill(r,g,b);
  }
    else{fill(0);}
    rect(15,310,70,30);
    fill(0,m);
    rect(17,312,66,26);
    
    r=r+n1;
    g=g+n2;
    b=b+n3;
    
    if(r>=255){n1=-2;}
    if(r<=0){n1=2;}
    if(g>=255){n2=-3;}
    if(g<=0){n2=3;}
    if(b>=255){n3=-4;}
    if(b<=0){n3=4;}
    
   if((mouseX<85) && (mouseX>15) && (mouseY<340) && (mouseY>310)&& mousePressed){
      m=20;

    }
      else{m=255;}
      
      
  //dioface
  if(dist(152,45,mouseX,mouseY)<=33){
  fill(r,g,b);}
  else{fill(100);}
  ellipse(152,45,66,66);
  fill(255);
  ellipse(152,45,62,62);
  image(dio,150,50,70,70);
  
  
  //eraser
  if(dist(230,45,mouseX,mouseY)<=33){
  fill(r,g,b);}
  else{fill(100);}
  ellipse(230,45,66,66);
  fill(255);
  ellipse(230,45,62,62);
  image(eraser,230,45,40,40);
  
  
  //tl
  if(dist(310,45,mouseX,mouseY)<=33){
  fill(r,g,b);}
  else{fill(100);}
  ellipse(310,45,66,66);
  fill(255);
  ellipse(310,45,62,62);
  image(tl,310,45,40,40);
  
  
  //tbc
  if(dist(390,45,mouseX,mouseY)<=33){
  fill(r,g,b);}
  else{fill(100);}
  ellipse(390,45,66,66);
  fill(255);
  ellipse(390,45,62,62);
  image(tbc,390,45,40,10);
  
  
  //sb
  if(dist(470,45,mouseX,mouseY)<=33){
  fill(r,g,b);}
  else{fill(100);}
  ellipse(470,45,66,66);
  fill(255);
  ellipse(470,45,62,62);
  image(sb,470,45,40,30);
  
  
  //go
  if(dist(550,45,mouseX,mouseY)<=33){
  fill(r,g,b);}
  else{fill(100);}
  ellipse(550,45,66,66);
  fill(255);
  ellipse(550,45,62,62);
  image(go,550,45,40,30);
  
  
  //load button
  if(mouseX>710 &&mouseX<780 && mouseY>15 && mouseY<40){
    fill(r,g,b);}else{fill(255);}
  rect(710,15,70,25);
  fill(255);
  rect(712,17,66,21);
  fill(0);
  text("LOAD",745,27);
  
  //save botton
  if(mouseX>710 &&mouseX<780 && mouseY>50 && mouseY<75){
    fill(r,g,b);}else{fill(255);}
  rect(710,50,70,25);
  fill(255);
  rect(712,52,66,21);
  fill(0);
  text("SAVE",745,62);
  
  //drawing
  
    
  if(mousePressed && mouseX>100 && mouseY>80 && tool==1){
    image(dio,mouseX,mouseY,170,170);}
  stroke(s);
  if(mousePressed && mouseX>90 && mouseY>80 && tool==0){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
  if(mousePressed && mouseX>100 && mouseY>80 && tool==2){
    image(tl,mouseX,mouseY,170,110);}
    if(mousePressed && mouseX>100 && mouseY>80 && tool==3){
    image(tbc,mouseX,mouseY,200,55);}
    if(mousePressed && mouseX>100 && mouseY>80 && tool==4){
    image(sb,mouseX,mouseY,150,120);}
    if(mousePressed && mouseX>100 && mouseY>80 && tool==5){
    image(go,mouseX,mouseY,50,50);}
  noStroke();
  fill(255);
  ellipse(50,50,50,50);
  if(dist(50,50,mouseX,mouseY)<25){
    fill(17,249,201);
  }
  else{fill(0);}
  stroke(0);
  text("CLEAR",50,50);


//indicate
  fill(s,80);
  noStroke();
  ellipse(80,90,10,10);
  fill(s);
  ellipse(80,90,7,7);
  if( mousePressed && dist(50,sliderY,mouseX,mouseY)<=15){
    stroke(s);
    strokeWeight(thickness);
    point(50,sliderY);}
}


void mouseReleased(){
  if(dist(50,50,mouseX,mouseY)<25){
    background(255);
  }
      if((mouseX<85) && (mouseX>15) && (mouseY<130) && (mouseY>100)){
      tool=0;
      s=#FA2A00;}
 
      
      if( (mouseX<85) && (mouseX>15) && (mouseY<165) && (mouseY>135)){
      tool=0;
      s=#F38630;}
      
      
      if((mouseX<85) && (mouseX>15) && (mouseY<200) && (mouseY>170)){
      tool=0;
      s=#E5F04C;}
      
      
      if( (mouseX<85) && (mouseX>15) && (mouseY<235) && (mouseY>205)){
      tool=0;
      s=#BEF202;}

      
      if((mouseX<85) && (mouseX>15) && (mouseY<270) && (mouseY>240)){
      tool=0;
      s=#07DFEA;}
      
      
       if( (mouseX<85) && (mouseX>15) && (mouseY<305) && (mouseY>275)){
      tool=0;
       s=#740E7A;}
      
      
      if((mouseX<85) && (mouseX>15) && (mouseY<340) && (mouseY>310)){
      tool=0;
      s=#000000;}
      
      
      if((mouseX<65) && (mouseX>35) && (mouseY<570) && (mouseY>370)){
      sliderY=mouseY;}
      
      
      if(dist(152,45,mouseX,mouseY)<=33){
    tool=1;}
       
       
       if(dist(250,45,mouseX,mouseY)<=33){
         tool=0;
         s=#FFFFFF;}
         
         
         if(dist(310,45,mouseX,mouseY)<=33){
           tool=2;}
       
       if(dist(390,45,mouseX,mouseY)<=33){
         tool=3;}
         
         if(dist(470,45,mouseX,mouseY)<=33){
         tool=4;}
         
         if(dist(550,45,mouseX,mouseY)<=33){
           tool=5;}
         
         if(mouseX>710 &&mouseX<780 && mouseY>15 && mouseY<40){
    selectInput("skr","openImage");}
           
         if(mouseX>710 &&mouseX<780 && mouseY>50 && mouseY<75){
           selectOutput("Save as...","saveImage");
         }
}


//-------------------------------------------------
void extend(){
  
  fill(100);
  rect(0,0,100,600);
}


void openImage(File f){
  if (f != null){
    int n = 0;
    while(n<10){
    PImage pic =loadImage(f.getAbsolutePath());
    image(pic,450,345);
    n++;
    }
  }
 }


void saveImage(File f){
  if(f !=null){
    PImage canvas = get(100,90,width-101,height-90);
    canvas.save(f.getAbsolutePath());
  }
}
