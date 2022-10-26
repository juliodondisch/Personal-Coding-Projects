import processing.sound.*;
import gifAnimation.*;
Gif background;
SoundFile intro;
SoundFile wrong;
SoundFile sfx1;
SoundFile sfx2;
SoundFile sfx3;
SoundFile sfx4;
SoundFile sfx5;
SoundFile sfx6;
SoundFile sfx7;
SoundFile sfx8;
SoundFile sfx9;
SoundFile sfx10;
SoundFile sfx11;
SoundFile sfx12;
SoundFile sfx13;
SoundFile sfx14;
SoundFile sfx15;
color squareColor= color(0, 255, 0);
color comboColor= color(255, 0, 0);
int noteCycler=0;
int noteDirection=1;
boolean playMusic=true;
boolean loadingScreen=true;
boolean game=false;
float playBoxScale=1;
float playButtonX=600;
float playButtonY=250;
float getCloser=-8000;
float getCloserMultiplier=150;
boolean d=false;
boolean w=false;
boolean s=false;
boolean a=false;
boolean df=false;
boolean wf=false;
boolean sf=false;
boolean af=false;
float d1=0;
float w1=0;
float s1=0;
float a1=0;
float x=0;
float y=0;
float x1=100;
float y1=100;
float x2=100;
float y2=100;
boolean f=false;
int moves=2;
boolean wd=false;
boolean sd=false;
boolean wa=false;
boolean sa=false;
boolean dw=false;
boolean aw=false;
boolean ds=false;
boolean as=false;
float rx=0;
float ry=0;
float rz=0;
float yy=400;
int m=1;
int score=0;
boolean aight=true;
float l=25;
float xRotator=0;
float rx2=0;
int[] highScore = new int[0];
void setup(){
  size(1200, 800, P3D);
  m = int(random(1, 8.99));
  highScore = int(loadBytes("highscore.dat"));
  //intro sound
  intro = new SoundFile(this, "introMelody.wav");
  wrong = new SoundFile(this, "wrong.wav");
  sfx1 = new SoundFile(this, "1.wav");
  sfx2 = new SoundFile(this, "2.wav");
  sfx3 = new SoundFile(this, "3.wav");
  sfx4 = new SoundFile(this, "4.wav");
  sfx5 = new SoundFile(this, "5.wav");
  sfx6 = new SoundFile(this, "6.wav");
  sfx7 = new SoundFile(this, "7.wav");
  sfx8 = new SoundFile(this, "8.wav");
  sfx9 = new SoundFile(this, "9.wav");
  sfx10 = new SoundFile(this, "10.wav");
  sfx11 = new SoundFile(this, "11.wav");
  sfx12 = new SoundFile(this, "12.wav");
  sfx13 = new SoundFile(this, "13.wav");
  sfx14 = new SoundFile(this, "14.wav");
  sfx15 = new SoundFile(this, "15.wav");
  background= new Gif(this, "php.gif");
}
void draw(){
  camera(600.0, 400.0, 600.0, 600.0, 400.0, 0.0, 
  0.0, 1.0, 0.0);
  background(255);
  if(loadingScreen){
    if(playMusic){
      intro.loop();
      playMusic=false;
    }
    pushMatrix();
    translate(-100, 0, -50);
    scale(2.8);
    background.play();
    image(background, 0, 0);
    popMatrix();
    pushMatrix();
    translate(playButtonX, playButtonY);
    fill(0);
    stroke(255);
    scale(playBoxScale);
    box(400, 100, 50);
    fill(255);
    textSize(80);
    text("Play", -80, 35, 60);
    fill(255);
    textSize(80);
    scale(1/playBoxScale);
    text("Highscore: " + highScore[0], -240, 300, 60);
    popMatrix();
    if (mouseX>=playButtonX-240 && mouseX<=playButtonX+240 && mouseY>=playButtonY-90 && mouseY<=playButtonY+39) {
      playBoxScale=1.2;
      if(mousePressed){
        intro.stop();
        game=true;
        loadingScreen=false;
        getCloser=-8000;
        getCloserMultiplier=150;
        d=false;
        w=false;
        s=false;
        a=false;
        df=false;
        wf=false;
        sf=false;
        af=false;
        d1=0;
        w1=0;
        s1=0;
        a1=0;
        x=0;
        y=0;
        x1=100;
        y1=100;
        x2=100;
        y2=100;
        f=false;
        moves=2;
        wd=false;
        sd=false;
        wa=false;
        sa=false;
        dw=false;
        aw=false;
        ds=false;
        as=false;
        rx=0;
        ry=0;
        rz=0;
        yy=400;
        aight=true;
        l=25;
        score=0;
      }
    } else {
      playBoxScale=1;
    }
  }
  if (game){
    camera(600.0, 200.0, 600.0, 600.0, 400.0, 0.0, 
    0.0, 1.0, 0.0);
    pushMatrix();
    translate(600, yy, 0);
    rotateX(radians(rx));
    rotateY(radians(ry));
    rotateZ(radians(rz));
    stroke(1);
    background(255);
    if (getCloser>=-80-(l/2) && getCloser<=-80+(l/2)) {
      if(!wd){
        if (m==2) {
          wrong.play();
          delay(500);
          loadingScreen=true;
          game=false;
          getCloserMultiplier=0;
          playMusic=true;
          if(aight==true){
            l+=1;
          }
          aight=false;
        }
      }
      if(!sd){
        if (m==5) {
          wrong.play();
          delay(500);
          loadingScreen=true;
          game=false;
          getCloserMultiplier=0;
          playMusic=true;
          if(aight==true){
            l+=1;
          }
          aight=false;
        }
      }
      if(!dw){
        if (m==3) {
          wrong.play();
          delay(500);
          loadingScreen=true;
          game=false;
          playMusic=true;
          getCloserMultiplier=0;
          if(aight==true){
            l+=1;
          }
          aight=false; 
        }
      }
      if(!aw){
        if (m==8) {
          wrong.play();
          delay(500);
          loadingScreen=true;
          game=false;
          playMusic=true;
          getCloserMultiplier=0;
          if(aight==true){
            l+=1;
          }
          aight=false;  
        }
      }
      if(!ds){
        if (m==4) {
          wrong.play();
          delay(500);
          loadingScreen=true;
          game=false;
          playMusic=true;
          getCloserMultiplier=0;
          if(aight==true){
            l+=1;
          }
          aight=false;
        }
      }
      if(!as){
        if (m==7) {
          wrong.play();
          delay(500);
          loadingScreen=true;
          game=false;
          playMusic=true;
          getCloserMultiplier=0;
          if(aight==true){
            l+=1;
          }
          aight=false;
        }
      }
      if(!wa){
        if(m==1){
          wrong.play();
          delay(500);
          loadingScreen=true;
          game=false;
          playMusic=true;
          getCloserMultiplier=0;
          if(aight==true){
            l+=1;
          }
          aight=false;
  
        }
      }
      if(!sa){
        if (m==6) {
          wrong.play();
          delay(500);
          loadingScreen=true;
          game=false;
          playMusic=true;
          getCloserMultiplier=0;
          if(aight==true){
            l+=1;
          }
          aight=false;
        }
      }
    }
    if(getCloser<-1976 && getCloser>-2024){
      getCloserMultiplier=l;
    }
    if (m==1){
      combination1(0, xRotator, getCloser);
    }
    if (m==2){
      combination2(0, xRotator, getCloser);
    }
    if (m==3){
      combination3(0, xRotator, getCloser);
    }
    if (m==4){
      combination4(0, xRotator, getCloser);
    }
    if (m==5){
      combination5(0, xRotator, getCloser);
    }
    if (m==6){
      combination6(0, xRotator, getCloser);
    }
    if (m==7){
      combination7(0, xRotator, getCloser);
    }
    if (m==8){
      combination8(0, xRotator, getCloser);
    }
    getCloser+=getCloserMultiplier;
    if(xRotator==-150){
      translate(0, -150);
    }
    if (getCloser>=-l/2 && getCloser<=l/2) {
      if(wd){
        if (m==2) {
          getCloserMultiplier=0;
          getCloser=0;
          rz-=4;
          yy+=30;
          comboColor= color(0, 255, 0);
          //changes variables once
          if(aight==true){
            //plays the sound effect
            noteCycler+=noteDirection;
            if(noteCycler==1){
              sfx1.play();
              noteDirection=1;
            }
            else if(noteCycler==2){
              sfx2.play();
            }
            else if(noteCycler==3){
              sfx3.play();
            }
            else if(noteCycler==4){
              sfx4.play();
            }
            else if(noteCycler==5){
              sfx5.play();
            }
            else if(noteCycler==6){
              sfx6.play();
            }
            else if(noteCycler==7){
              sfx7.play();
            }
            else if(noteCycler==8){
              sfx8.play();
            }
            else if(noteCycler==9){
              sfx9.play();
            }
            else if(noteCycler==10){
              sfx10.play();
            }
            else if(noteCycler==11){
              sfx11.play();
            }
            else if(noteCycler==12){
              sfx12.play();
            }
            else if(noteCycler==13){
              sfx13.play();
            }
            else if(noteCycler==14){
              sfx14.play();
            }
            else if(noteCycler==15){
              sfx15.play();
              noteDirection=-1;
            }
            
            //adds 1 to the score
            score+=1;
            l+=1;
          }
          aight=false;
        }
      }
      if(sd){
        if (m==5) {
          getCloserMultiplier=0;
          getCloser=0;
          rz-=4;
          yy+=30;
          comboColor= color(0, 255, 0);
          if(aight==true){
            //plays the sound effect
            noteCycler+=noteDirection;
            if(noteCycler==1){
              sfx1.play();
              noteDirection=1;
            }
            else if(noteCycler==2){
              sfx2.play();
            }
            else if(noteCycler==3){
              sfx3.play();
            }
            else if(noteCycler==4){
              sfx4.play();
            }
            else if(noteCycler==5){
              sfx5.play();
            }
            else if(noteCycler==6){
              sfx6.play();
            }
            else if(noteCycler==7){
              sfx7.play();
            }
            else if(noteCycler==8){
              sfx8.play();
            }
            else if(noteCycler==9){
              sfx9.play();
            }
            else if(noteCycler==10){
              sfx10.play();
            }
            else if(noteCycler==11){
              sfx11.play();
            }
            else if(noteCycler==12){
              sfx12.play();
            }
            else if(noteCycler==13){
              sfx13.play();
            }
            else if(noteCycler==14){
              sfx14.play();
            }
            else if(noteCycler==15){
              sfx15.play();
              noteDirection=-1;
            }
            score+=1;
            l+=1;
          }
          aight=false;
        }
      }
      if(dw){
        if (m==3) {
          getCloserMultiplier=0;
          getCloser=0;
          rz-=4;
          yy+=30;
          comboColor= color(0, 255, 0);
          if(aight==true){
            //plays the sound effect
            noteCycler+=noteDirection;
            if(noteCycler==1){
              sfx1.play();
              noteDirection=1;
            }
            else if(noteCycler==2){
              sfx2.play();
            }
            else if(noteCycler==3){
              sfx3.play();
            }
            else if(noteCycler==4){
              sfx4.play();
            }
            else if(noteCycler==5){
              sfx5.play();
            }
            else if(noteCycler==6){
              sfx6.play();
            }
            else if(noteCycler==7){
              sfx7.play();
            }
            else if(noteCycler==8){
              sfx8.play();
            }
            else if(noteCycler==9){
              sfx9.play();
            }
            else if(noteCycler==10){
              sfx10.play();
            }
            else if(noteCycler==11){
              sfx11.play();
            }
            else if(noteCycler==12){
              sfx12.play();
            }
            else if(noteCycler==13){
              sfx13.play();
            }
            else if(noteCycler==14){
              sfx14.play();
            }
            else if(noteCycler==15){
              sfx15.play();
              noteDirection=-1;
            }
            score+=1;
            l+=1;
          }
          aight=false;
        }
      }
      if(aw){
        if (m==8) {
          getCloserMultiplier=0;
          getCloser=0;
          rz-=4;
          yy+=30;
          comboColor= color(0, 255, 0);
          if(aight==true){
            //plays the sound effect
            noteCycler+=noteDirection;
            if(noteCycler==1){
              sfx1.play();
              noteDirection=1;
            }
            else if(noteCycler==2){
              sfx2.play();
            }
            else if(noteCycler==3){
              sfx3.play();
            }
            else if(noteCycler==4){
              sfx4.play();
            }
            else if(noteCycler==5){
              sfx5.play();
            }
            else if(noteCycler==6){
              sfx6.play();
            }
            else if(noteCycler==7){
              sfx7.play();
            }
            else if(noteCycler==8){
              sfx8.play();
            }
            else if(noteCycler==9){
              sfx9.play();
            }
            else if(noteCycler==10){
              sfx10.play();
            }
            else if(noteCycler==11){
              sfx11.play();
            }
            else if(noteCycler==12){
              sfx12.play();
            }
            else if(noteCycler==13){
              sfx13.play();
            }
            else if(noteCycler==14){
              sfx14.play();
            }
            else if(noteCycler==15){
              sfx15.play();
              noteDirection=-1;
            }
            score+=1;
            l+=1;
          }
          aight=false;
        }
      }
      if(ds){
        if (m==4) {
          getCloserMultiplier=0;
          getCloser=0;
          rz-=4;
          yy+=30;
          comboColor= color(0, 255, 0);
          if(aight==true){
            //plays the sound effect
            noteCycler+=noteDirection;
            if(noteCycler==1){
              sfx1.play();
              noteDirection=1;
            }
            else if(noteCycler==2){
              sfx2.play();
            }
            else if(noteCycler==3){
              sfx3.play();
            }
            else if(noteCycler==4){
              sfx4.play();
            }
            else if(noteCycler==5){
              sfx5.play();
            }
            else if(noteCycler==6){
              sfx6.play();
            }
            else if(noteCycler==7){
              sfx7.play();
            }
            else if(noteCycler==8){
              sfx8.play();
            }
            else if(noteCycler==9){
              sfx9.play();
            }
            else if(noteCycler==10){
              sfx10.play();
            }
            else if(noteCycler==11){
              sfx11.play();
            }
            else if(noteCycler==12){
              sfx12.play();
            }
            else if(noteCycler==13){
              sfx13.play();
            }
            else if(noteCycler==14){
              sfx14.play();
            }
            else if(noteCycler==15){
              sfx15.play();
              noteDirection=-1;
            }
            score+=1;
            l+=1;
          }
          aight=false;
        }
      }
      if(as){
        if (m==7) {
          getCloserMultiplier=0;
          getCloser=0;
          rz-=4;
          yy+=30;
          comboColor= color(0, 255, 0);
          if(aight==true){
            //plays the sound effect
            noteCycler+=noteDirection;
            if(noteCycler==1){
              sfx1.play();
              noteDirection=1;
            }
            else if(noteCycler==2){
              sfx2.play();
            }
            else if(noteCycler==3){
              sfx3.play();
            }
            else if(noteCycler==4){
              sfx4.play();
            }
            else if(noteCycler==5){
              sfx5.play();
            }
            else if(noteCycler==6){
              sfx6.play();
            }
            else if(noteCycler==7){
              sfx7.play();
            }
            else if(noteCycler==8){
              sfx8.play();
            }
            else if(noteCycler==9){
              sfx9.play();
            }
            else if(noteCycler==10){
              sfx10.play();
            }
            else if(noteCycler==11){
              sfx11.play();
            }
            else if(noteCycler==12){
              sfx12.play();
            }
            else if(noteCycler==13){
              sfx13.play();
            }
            else if(noteCycler==14){
              sfx14.play();
            }
            else if(noteCycler==15){
              sfx15.play();
              noteDirection=-1;
            }
            score+=1;
            l+=1;
          }
          aight=false;
        }
      }
      if(wa){
        if(m==1){
          getCloserMultiplier=0;
          getCloser=0;
          rz-=4;
          yy+=30;
          comboColor= color(0, 255, 0);
          if(aight==true){
            //plays the sound effect
            noteCycler+=noteDirection;
            if(noteCycler==1){
              sfx1.play();
              noteDirection=1;
            }
            else if(noteCycler==2){
              sfx2.play();
            }
            else if(noteCycler==3){
              sfx3.play();
            }
            else if(noteCycler==4){
              sfx4.play();
            }
            else if(noteCycler==5){
              sfx5.play();
            }
            else if(noteCycler==6){
              sfx6.play();
            }
            else if(noteCycler==7){
              sfx7.play();
            }
            else if(noteCycler==8){
              sfx8.play();
            }
            else if(noteCycler==9){
              sfx9.play();
            }
            else if(noteCycler==10){
              sfx10.play();
            }
            else if(noteCycler==11){
              sfx11.play();
            }
            else if(noteCycler==12){
              sfx12.play();
            }
            else if(noteCycler==13){
              sfx13.play();
            }
            else if(noteCycler==14){
              sfx14.play();
            }
            else if(noteCycler==15){
              sfx15.play();
              noteDirection=-1;
            }
            score+=1;
            l+=1;
          }
          aight=false;
        }
      }
      if(sa){
        if (m==6) {
          getCloserMultiplier=0;
          getCloser=0;
          rz-=4;
          yy+=30;
          comboColor= color(0, 255, 0);
          if(aight==true){
            //plays the sound effect
            noteCycler+=noteDirection;
            if(noteCycler==1){
              sfx1.play();
              noteDirection=1;
            }
            else if(noteCycler==2){
              sfx2.play();
            }
            else if(noteCycler==3){
              sfx3.play();
            }
            else if(noteCycler==4){
              sfx4.play();
            }
            else if(noteCycler==5){
              sfx5.play();
            }
            else if(noteCycler==6){
              sfx6.play();
            }
            else if(noteCycler==7){
              sfx7.play();
            }
            else if(noteCycler==8){
              sfx8.play();
            }
            else if(noteCycler==9){
              sfx9.play();
            }
            else if(noteCycler==10){
              sfx10.play();
            }
            else if(noteCycler==11){
              sfx11.play();
            }
            else if(noteCycler==12){
              sfx12.play();
            }
            else if(noteCycler==13){
              sfx13.play();
            }
            else if(noteCycler==14){
              sfx14.play();
            }
            else if(noteCycler==15){
              sfx15.play();
              noteDirection=-1;
            }
            score+=1;
            l+=1;
          }
          aight=false;
        }
      }
    }
    if (yy>1500) {
      if (score>highScore[0]) {
        highScore[0]=score;
        saveBytes("highscore.dat", byte(highScore));
      }
      comboColor= color(255, 0, 0);
      m = int(random(1, 8.99));
      getCloser=-8000;
      getCloserMultiplier=150;
      d=false;
      w=false;
      s=false;
      a=false;
      df=false;
      wf=false;
      sf=false;
      af=false;
      d1=0;
      w1=0;
      s1=0;
      a1=0;
      x=0;
      y=0;
      x1=100;
      y1=100;
      x2=100;
      y2=100;
      f=false;
      moves=2;
      wd=false;
      sd=false;
      wa=false;
      sa=false;
      dw=false;
      aw=false;
      ds=false;
      as=false;
      rx=0;
      ry=0;
      rz=0;
      yy=400;
      aight=true;
    }
    //middle
    fill(squareColor);
    box(100);
    //d
    stroke(1);
    if (d==true){
      if(w==true){
        pushMatrix();
        fill(squareColor);
        translate(100, -100);
        box(d1);
        popMatrix();
        f=true;
        moves=0;
        if(wf==true){
          wd=true;
        }
      }
      else if(s==true){
        pushMatrix();
        fill(squareColor);
        translate(100, 100);
        box(d1);
        popMatrix();
        f=true;
        moves=0;
        if(sf==true){
          sd=true;
        }
      }
      else if(a==true){
        pushMatrix();
        fill(squareColor);
        translate(0, 0);
        box(d1);
        popMatrix();
        f=true;
        moves=0;
      }
      else if(d==true) {
        df=true;
        moves=1;
      }
    }
    if (df==true){
      pushMatrix();
      fill(squareColor);
      translate(100, 0);
      box(d1);
      popMatrix();
    }
    //w
    if (w==true){
      if(d==true){
        pushMatrix();
        fill(squareColor);
        translate(100, -100);
        box(w1);
        popMatrix();
        f=true;
        moves=0;
        if(df==true){
          dw=true;
        }
      }
      else if(s==true){
        pushMatrix();
        fill(squareColor);
        translate(0, 0);
        box(w1);
        popMatrix();
        f=true;
        moves=0;
      }
      else if(a==true){
        pushMatrix();
        fill(squareColor);
        translate(-100, -100);
        box(w1);
        popMatrix();
        f=true;
        moves=0;
        if(af==true){
          aw=true;
        }
      }
      else if(w==true) {
        wf=true;
        moves=1;
      }
    }
    if (wf==true) {
      pushMatrix();
      fill(squareColor);
      translate(0, -100);
      box(w1);
      popMatrix();
    }
    //s
    if (s==true){
      if(d==true){
        pushMatrix();
        fill(squareColor);
        translate(100, 100);
        box(s1);
        popMatrix();
        f=true;
        moves=0;
        if(df==true){
          ds=true;
        }
      }
      else if(w==true){
        pushMatrix();
        fill(squareColor);
        translate(0, 0);
        box(s1);
        popMatrix();
        f=true;
        moves=0;
      }
      else if(a==true){
        pushMatrix();
        fill(squareColor);
        translate(-100, 100);
        box(s1);
        popMatrix();
        f=true;
        moves=0;
        if(af==true){
          as=true;
        }
      }
      else if(s==true) {
        sf=true;
        moves=1;
      }
    }
    if (sf==true){
      pushMatrix();
      fill(squareColor);
      translate(0, 100);
      box(s1);
      popMatrix();
    }
    //a 
    if(a==true){
      if(d==true){
        pushMatrix();
        fill(squareColor);
        translate(0, 0);
        box(a1);
        popMatrix();
        f=true;
        moves=0;
      }
      else if(s==true){
        pushMatrix();
        fill(squareColor);
        translate(-100, 100);
        box(a1);
        popMatrix();
        f=true;
        moves=0;
        if(sf==true){
          sa=true;
        }
      }
      else if(w==true){
        pushMatrix();
        fill(squareColor);
        translate(-100, -100);
        box(a1);
        popMatrix();
        f=true;
        moves=0;
        if(wf==true){
          wa=true;
        }
      }
      else if(a==true && d==false) {
         af=true;
         moves=1;
      }
    }
    if (af==true){
      pushMatrix();
      fill(squareColor);
      translate(-100, 0);
      box(a1);
      popMatrix();
    }
    if (f==false) {
      if(keyPressed){
        if(key=='d' || keyCode==RIGHT){
            d=true;
            if(a==false){
              d1=100;
            }
            else{
              d1=0;
              a1=0;
            }
          }
        else if(key=='w' || keyCode==UP){
          w=true;
          if(s==false){
            w1=100;
          }
          else{
            w1=0;
            s1=0;
          }
        }
        else if(key=='s' || keyCode==DOWN){
          s=true;
          if(w==false){
            s1=100;
          }
          else{
            s1=0;
            w1=0;
          }
          }
        else if(key=='a' || keyCode==LEFT){
            a=true;
            if(d==false){
              a1=100;
            }
            else{
              a1=0;
              d1=0;
           }
         }
       }
     }
    //d check
    /*
    if(d==true){
      println("dtrue");
    }
    else{
      println("dfalse");
    }
    
    //w check
    if(w==true){
      println("wtrue");
    }else{
      println("wfalse");
    }
    
    //s check
    if(s==true){
      println("strue");
    }else{
      println("sfalse");
    }
    
    //a check
    if(a==true){
      println("atrue");
    }else{
      println("afalse");
    }*/
    println(score);
    popMatrix();
    translate(600, 400);
    box(100);
    fill(0);
    textSize(50);
    text(score, -450, -270);
    text("Moves: " + moves, 240, -270);
  }
}
void combination1(float x, float y, float z){
  pushMatrix();
  noStroke();
  noFill();
  translate(x-100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noStroke();
  noFill();
  translate(x, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x+100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x+100, y, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x+100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x-100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x-100, y, z);
  box(100);
  popMatrix();
}
void combination2(float x, float y, float z){
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x-100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noStroke();
  noFill();
  translate(x, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noFill();
  translate(x+100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x+100, y, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x+100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x-100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x-100, y, z);
  box(100);
  popMatrix();
}
void combination3(float x, float y, float z){
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x-100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noStroke();
  noFill();
  translate(x+100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noFill();
  translate(x+100, y, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x+100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x-100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x-100, y, z);
  box(100);
  popMatrix();
}
void combination4(float x, float y, float z){
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x-100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x+100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noStroke();
  noFill();
  translate(x+100, y, z);
  box(100);
  popMatrix();
  pushMatrix();
  noFill();
  translate(x+100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x-100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x-100, y, z);
  box(100);
  popMatrix();
}
void combination5(float x, float y, float z){
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x-100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x+100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x+100, y, z);
  box(100);
  popMatrix();
  pushMatrix();
  noStroke();
  noFill();
  translate(x+100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noFill();
  translate(x, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x-100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x-100, y, z);
  box(100);
  popMatrix();
}
void combination6(float x, float y, float z){
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x-100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();

  fill(comboColor);
  translate(x+100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x+100, y, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x+100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noStroke();
  noFill();
  translate(x, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noFill();
  translate(x-100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x-100, y, z);
  box(100);
  popMatrix();
}
void combination7(float x, float y, float z){
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x-100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x+100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x+100, y, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x+100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noStroke();
  noFill();
  translate(x-100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noFill();
  translate(x-100, y, z);
  box(100);
  popMatrix();
}
void combination8(float x, float y, float z){
  pushMatrix();
  noStroke();
  noFill();
  translate(x-100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  stroke(1);
  fill(comboColor);
  translate(x+100, y-100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x+100, y, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x+100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  fill(comboColor);
  translate(x-100, y+100, z);
  box(100);
  popMatrix();
  pushMatrix();
  noStroke();
  noFill();
  translate(x-100, y, z);
  box(100);
  popMatrix();
}
