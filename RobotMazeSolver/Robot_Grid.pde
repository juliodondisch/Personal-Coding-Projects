//setup variables
int[] a = {0,0,0,0,0,0,0,0,0,0,0,0};

int[] b = new int[12];

int[] c = new int[12];

int[] d = new int[12];

int[] e = new int[12];

int[] f = new int[12];

int[] g = new int[12];

int[] h = new int[12];

int[] i = new int[12];

int[] j = new int[12];

int[] k = new int[12];

String typing = "";
float[] firstScore;
float[] secondScore;
float[] thirdScore;
float[] fourthScore;
float[] fifthScore;

String[] firstName;
String[] secondName;
String[] thirdName;
String[] fourthName;
String[] fifthName;

Boolean type = false;

boolean setup = true;

boolean recordNames = true;

float time = 0.00;

//maze solve variables
color rightC;

color upC;

color leftC;

Boolean startRightTurn = false;

Boolean move = true;

float r = 0;

Boolean one = false;
Boolean two = false;
Boolean three = false;
Boolean four = false;
Boolean five = false;

Boolean stopTurning = false;

int matrixDirection = 1;

Boolean turnedBefore = false;

Boolean besideEnd = false;

Boolean finish = false;

Boolean upFinish = false;
Boolean rightFinish = false;
Boolean leftFinish = false;

int q=0;

int n = 0;

int x = 275;

int y = 575;

Boolean left = false;

Boolean right = false;

Boolean up = true;

Boolean down = false;

Boolean recordOnce = true;

float l = 1;

void setup () {
  size(550, 600);
  background(0);
  firstScore = float(loadBytes("firstScore.dat"));
  secondScore = float(loadBytes("secondScore.dat"));
  thirdScore = float(loadBytes("thirdScore.dat"));
  fourthScore = float(loadBytes("fourthScore.dat"));
  fifthScore = float(loadBytes("fifthScore.dat"));
  firstName = loadStrings("firstName.dat");
  secondName = loadStrings("secondName.dat");
  thirdName = loadStrings("thirdName.dat");
  fourthName = loadStrings("fourthName.dat");
  fifthName = loadStrings("fifthName.dat");
  println(firstScore[0]);
  println(secondScore[0]);
  println(thirdScore[0]);
  println(fourthScore[0]);
  println(fifthScore[0]);
  println(firstName[0]);
  println(secondName[0]);
  println(thirdName[0]);
  println(fourthName[0]);
  println(fifthName[0]);

}

void draw (){
  if(keyCode==ENTER && (f[1]==255 || e[0]==255 || g[0]==255)){
    setup = false;
  }
  //Maze trail
  background(0);
  strokeWeight(l);
  stroke(255);
  //end block
  f[0] = 170;
  fill(f[0]);
  rect(250,0,51,51);
  
  f[11]=255;
  //block row A
  fill(a[0]);
  rect(0,0,51,51);
  fill(a[1]);
  rect(0,50,51,51);
  fill(a[2]);
  rect(0,100,50,50);
  fill(a[3]);
  rect(0,150,50,50);
  fill(a[4]);
  rect(0,200,50,50);
  fill(a[5]);
  rect(0,250,50,50);
  fill(a[6]);
  rect(0,300,50,50);
  fill(a[7]);
  rect(0,350,50,50);
  fill(a[8]);
  rect(0,400,50,50);
  fill(a[9]);
  rect(0,450,50,50);
  fill(a[10]);
  rect(0,500,50,50);
  fill(a[11]);
  rect(0,550,50,50);
  
  //block row B
  fill(b[0]);
  rect(50,0,51,51);
  fill(b[1]);
  rect(50,50,51,51);
  fill(b[2]);
  rect(50,100,50,50);
  fill(b[3]);
  rect(50,150,50,50);
  fill(b[4]);
  rect(50,200,50,50);
  fill(b[5]);
  rect(50,250,50,50);
  fill(b[6]);
  rect(50,300,50,50);
  fill(b[7]);
  rect(50,350,50,50);
  fill(b[8]);
  rect(50,400,50,50);
  fill(b[9]);
  rect(50,450,50,50);
  fill(b[10]);
  rect(50,500,50,50);
  fill(b[11]);
  rect(50,550,50,50);

  //block row C
  fill(c[0]);
  rect(100,0,51,51);
  fill(c[1]);
  rect(100,50,51,51);
  fill(c[2]);
  rect(100,100,50,50);
  fill(c[3]);
  rect(100,150,50,50);
  fill(c[4]);
  rect(100,200,50,50);
  fill(c[5]);
  rect(100,250,50,50);
  fill(c[6]);
  rect(100,300,50,50);
  fill(c[7]);
  rect(100,350,50,50);
  fill(c[8]);
  rect(100,400,50,50);
  fill(c[9]);
  rect(100,450,50,50);
  fill(c[10]);
  rect(100,500,50,50);
  fill(c[11]);
  rect(100,550,50,50);
  
  //block row D
  fill(d[0]);
  rect(150,0,51,51);
  fill(d[1]);
  rect(150,50,51,51);
  fill(d[2]);
  rect(150,100,50,50);
  fill(d[3]);
  rect(150,150,50,50);
  fill(d[4]);
  rect(150,200,50,50);
  fill(d[5]);
  rect(150,250,50,50);
  fill(d[6]);
  rect(150,300,50,50);
  fill(d[7]);
  rect(150,350,50,50);
  fill(d[8]);
  rect(150,400,50,50);
  fill(d[9]);
  rect(150,450,50,50);
  fill(d[10]);
  rect(150,500,50,50);
  fill(d[11]);
  rect(150,550,50,50);
  
  //block row E
  fill(e[0]);
  rect(200,0,51,51);
  fill(e[1]);
  rect(200,50,51,51);
  fill(e[2]);
  rect(200,100,50,50);
  fill(e[3]);
  rect(200,150,50,50);
  fill(e[4]);
  rect(200,200,50,50);
  fill(e[5]);
  rect(200,250,50,50);
  fill(e[6]);
  rect(200,300,50,50);
  fill(e[7]);
  rect(200,350,50,50);
  fill(e[8]);
  rect(200,400,50,50);
  fill(e[9]);
  rect(200,450,50,50);
  fill(e[10]);
  rect(200,500,50,50);
  fill(e[11]);
  rect(200,550,50,50);

  //block row F
  fill(f[1]);
  rect(250,50,51,51);
  fill(f[2]);
  rect(250,100,50,50);
  fill(f[3]);
  rect(250,150,50,50);
  fill(f[4]);
  rect(250,200,50,50);
  fill(f[5]);
  rect(250,250,50,50);
  fill(f[6]);
  rect(250,300,50,50);
  fill(f[7]);
  rect(250,350,50,50);
  fill(f[8]);
  rect(250,400,50,50);
  fill(f[9]);
  rect(250,450,50,50);
  fill(f[10]);
  rect(250,500,50,50);
  fill(f[11]);
  rect(250,550,50,50);

  
  //block row G
  fill(g[0]);
  rect(300,0,51,51);
  fill(g[1]);
  rect(300,50,51,51);
  fill(g[2]);
  rect(300,100,50,50);
  fill(g[3]);
  rect(300,150,50,50);
  fill(g[4]);
  rect(300,200,50,50);
  fill(g[5]);
  rect(300,250,50,50);
  fill(g[6]);
  rect(300,300,50,50);
  fill(g[7]);
  rect(300,350,50,50);
  fill(g[8]);
  rect(300,400,50,50);
  fill(g[9]);
  rect(300,450,50,50);
  fill(g[10]);
  rect(300,500,50,50);
  fill(g[11]);
  rect(300,550,50,50);
  
  
  //block row H
  fill(h[0]);
  rect(350,0,51,51);
  fill(h[1]);
  rect(350,50,51,51);
  fill(h[2]);
  rect(350,100,50,50);
  fill(h[3]);
  rect(350,150,50,50);
  fill(h[4]);
  rect(350,200,50,50);
  fill(h[5]);
  rect(350,250,50,50);
  fill(h[6]);
  rect(350,300,50,50);
  fill(h[7]);
  rect(350,350,50,50);
  fill(h[8]);
  rect(350,400,50,50);
  fill(h[9]);
  rect(350,450,50,50);
  fill(h[10]);
  rect(350,500,50,50);
  fill(h[11]);
  rect(350,550,50,50);
  
  
  //block row I
  fill(i[0]);
  rect(400,0,51,51);
  fill(i[1]);
  rect(400,50,51,51);
  fill(i[2]);
  rect(400,100,50,50);
  fill(i[3]);
  rect(400,150,50,50);
  fill(i[4]);
  rect(400,200,50,50);
  fill(i[5]);
  rect(400,250,50,50);
  fill(i[6]);
  rect(400,300,50,50);
  fill(i[7]);
  rect(400,350,50,50);
  fill(i[8]);
  rect(400,400,50,50);
  fill(i[9]);
  rect(400,450,50,50);
  fill(i[10]);
  rect(400,500,50,50);
  fill(i[11]);
  rect(400,550,50,50);
  
  //block row J
  fill(j[0]);
  rect(450,0,51,51);
  fill(j[1]);
  rect(450,50,51,51);
  fill(j[2]);
  rect(450,100,50,50);
  fill(j[3]);
  rect(450,150,50,50);
  fill(j[4]);
  rect(450,200,50,50);
  fill(j[5]);
  rect(450,250,50,50);
  fill(j[6]);
  rect(450,300,50,50);
  fill(j[7]);
  rect(450,350,50,50);
  fill(j[8]);
  rect(450,400,50,50);
  fill(j[9]);
  rect(450,450,50,50);
  fill(j[10]);
  rect(450,500,50,50);
  fill(j[11]);
  rect(450,550,50,50);
  
  //block row K
  fill(k[0]);
  rect(500,0,51,51);
  fill(k[1]);
  rect(500,50,51,51);
  fill(k[2]);
  rect(500,100,50,50);
  fill(k[3]);
  rect(500,150,50,50);
  fill(k[4]);
  rect(500,200,50,50);
  fill(k[5]);
  rect(500,250,50,50);
  fill(k[6]);
  rect(500,300,50,50);
  fill(k[7]);
  rect(500,350,50,50);
  fill(k[8]);
  rect(500,400,50,50);
  fill(k[9]);
  rect(500,450,50,50);
  fill(k[10]);
  rect(500,500,50,50);
  fill(k[11]);
  rect(500,550,50,50);
  
  
  
    // Solving time
  if(!setup) {
    if(x>270 && x<280 && y<80 && y>70 || x>220 && x<230 && y<30 && y>20 || x>320 && x<330 && y<30 && y>20 || besideEnd == true){
      time+= 0.016666666667;
      besideEnd = true;
      if(x>267 && x<283 && y<30 && y>20){
      besideEnd = false;
      print("end");
      finish = true;
      upFinish = false;
      rightFinish = false;
      leftFinish = false;
      } else if(x>270 && x<280 && y<80 && y>50 || upFinish){
        upFinish = true;
        y--;
        fill(0, 0, 255);
        rotate(radians(r));
        ellipse(x,y,30,30);
      }
      else if(x>220 && x<230 && y<30 && y>20 || rightFinish){
        rightFinish = true;
        x++;
        fill(0, 0, 255);
        rotate(radians(r));
        ellipse(x,y,30,30);
      }
      else if(x>320 && x<330 && y<30 && y>20|| leftFinish){
        leftFinish = true;
        x--;
        fill(0, 0, 255);
        rotate(radians(r));
        ellipse(x,y,30,30);
      }
    } else if(finish){
      fill(0);
      rect(0,0,550,600);
      fill(255);
      rect(100,100,350,400);
      fill(0);
      textSize(30);
      text("Finished!", 208, 175);
      text("Time:  " + time + " s", 150, 235);
      textSize(20);
      text("1.  " + firstName[0] + "   " + firstScore[0], 150, 330);
      text("2.  " + secondName[0] + "   " + secondScore[0], 150, 360);
      text("3.  " + thirdName[0] + "   " + thirdScore[0], 150, 390);
      text("4.  " + fourthName[0] + "   " + fourthScore[0], 150, 420);
      text("5.  " + fifthName[0] + "   " + fifthScore[0], 150, 450);
      if(type){
          fill(0);
          text("Name: " + typing, 150, 275);
          if(keyPressed){
              if (key == '\n' ) {
                if(recordNames){
                    print("recorded");
                   if(one){
                     print("recorded1");
                     saveStrings("fifthName.dat", fourthName);
                     saveStrings("fourthName.dat", thirdName);
                     saveStrings("thirdName.dat", secondName);
                     saveStrings("secondName.dat", firstName);
                     firstName[0] = typing;
                     saveStrings("firstName.dat", firstName);
                   }
                   else if (two){
                     print("recorded2");
                     saveStrings("fifthName.dat", fourthName);
                     saveStrings("fourthName.dat", thirdName);
                     saveStrings("thirdName.dat", secondName);
                     secondName[0] = typing;
                     saveStrings("secondName.dat", secondName);
                   }
                   else if (three){
                     print("recorded3");
                     saveStrings("fifthName.dat", fourthName);
                     saveStrings("fourthName.dat", thirdName);
                     thirdName[0] = typing;
                     saveStrings("thirdName.dat", thirdName);
                   }
                   else if (four){
                     print("recorded4");
                     saveStrings("fifthName.dat", fourthName);
                     fourthName[0] = typing;
                     saveStrings("fourthName.dat", fourthName);
                   }
                   else if (five){
                     print("recorded5");
                     fifthName[0] = typing;
                     saveStrings("fifthName.dat", fifthName);
                   }
                   recordNames = false;
                }
              // A String can be cleared by setting it equal to ""
            } else if(key == BACKSPACE) {
              if(typing.length()>=1){
                 typing = typing.substring(0, typing.length()-1);
                 delay(100);
              }
            } else {
              // Otherwise, concatenate the String
              // Each character typed by the user is added to the end of the String variable.
              typing = typing + key; 
              delay(100);
            }
          }
      }
      if(recordOnce){
        if(time>firstScore[0]){
          fifthScore[0] = fourthScore[0];
          fourthScore[0] = thirdScore[2];
          thirdScore[2] = secondScore[1];
          secondScore[1] = firstScore[0]; 
          firstScore[0] = time;
          type = true;
          one = true;
        } 
        else if (time>secondScore[0]){
          fifthScore[0] = fourthScore[0];
          fourthScore[0] = thirdScore[0];
          thirdScore[0] = secondScore[0];
          secondScore[0] = time; 
          type = true;
          two = true;
        } 
        else if (time>thirdScore[0]){
          fifthScore[0] = fourthScore[0];
          fourthScore[0] = thirdScore[0];
          thirdScore[0] = time;
          type = true;
          three = true;
        } 
        else if (time>fourthScore[0]){
          fifthScore[0] = fourthScore[0];
          fourthScore[0] = time;
          type = true;
          four = true;
        } 
        else if (time>fifthScore[0]){
          fifthScore[0] = time;
          type = true;
          five = true;
        }
        saveBytes("firstScore.dat", byte(firstScore));
        saveBytes("secondScore.dat", byte(secondScore));
        saveBytes("thirdScore.dat", byte(thirdScore));
        saveBytes("fourthScore.dat", byte(fourthScore));
        saveBytes("fifthScore.dat", byte(fifthScore));
        saveStrings("firstName.dat", firstName);
        saveStrings("secondName.dat", secondName);
        saveStrings("thirdName.dat", thirdName);
        saveStrings("fourthName.dat", fourthName);
        saveStrings("fifthName.dat", fifthName);

        recordOnce = false;
      }

    }
    else {
      time+= 0.016666666667;
        if(q<26){
              rightCAssign();
              if(rightC==color(255)){
                startRightTurn = true;
                matrixDirection = 2;
              }
              q++;
              print(matrixDirection);
        } 
        else {
              l = 0;
              if(!startRightTurn && !stopTurning){
              if (right){
                startRightTurn = true;
                println("right");
              } else if (up){
                goUp();
                //println("up");
              } else {
                cycleMatrix(0);
                println("left");
              }
            }
            
            //detect if there is black or white to the right
            rightCAssign();
            if(rightC == color(255)){
              right = true;
            } else {
              right= false;
            }
            
            
            //detect if there is black or white up
            upCAssign();
            if(upC == color(255)){
              up = true;
            } else {
              up=false;
            }
            
            
            //end of track code
            //moves or initiates the turn for the robot
            if(stopTurning){
              if(n<26){
                goUp();
                n++;
              } else {
                stopTurning = false;
                n=0;
              }
            }
            if (startRightTurn){
              if(n<25){
                goUp();
                n++;
                print(n);
              } else {
                cycleMatrix(1);
                startRightTurn = false;
                stopTurning = true;
                n=0;
                print("right is turning");
             }
            }
            //robot
            fill(0, 0, 255);
            rotate(radians(r));
            ellipse(x,y,30,30);
            fill(255, 0, 0);
            println(matrixDirection);
        }
    }
  }
  
  
  
  
  // Maze setup
  if(setup){
        if(mousePressed){
          
          
          
          //AAAAAAAA
          if(mouseX<50){
            if(mouseY<50){
              if(keyCode == SHIFT){
                a[0] = 0;
              }
              if((a[1] == 255 || b[0] == 255) && !(a[1] == 255 && b[0] == 255 && b[1]==255)){
                a[0] = 255;
              }
            } 
            else if(mouseY<100){
              if(keyCode == SHIFT){
                a[1] = 0;
              }
              else if((a[2] == 255 || b[1] == 255 || a[0] == 255) && !(a[0] == 255 && b[0] == 255 && b[1]==255) && !(a[2] == 255 && b[1] == 255 && b[2]==255)){
                a[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                a[2] = 0;
              }
              else if((a[3] == 255 || b[2] == 255 || a[1] == 255) && !(a[1] == 255 && b[1] == 255 && b[2]==255) && !(a[3] == 255 && b[2] == 255 && b[3]==255)){
                a[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                a[3] = 0;
              }
              else if((a[4] == 255 || b[3] == 255 || a[2] == 255) && !(a[2] == 255 && b[2] == 255 && b[3]==255) && !(a[4] == 255 && b[3] == 255 && b[4]==255)){
                a[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                a[4] = 0;
              }
              else if((a[5] == 255 || b[4] == 255 || a[3] == 255) && !(a[3] == 255 && b[3] == 255 && b[4]==255) && !(a[5] == 255 && b[4] == 255 && b[5]==255)){
                a[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                a[5] = 0;
              }
              else if((a[6] == 255 || b[5] == 255 || a[4] == 255) && !(a[4] == 255 && b[4] == 255 && b[5]==255) && !(a[6] == 255 && b[5] == 255 && b[6]==255)){
                a[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                a[6] = 0;
              }
              else if((a[7] == 255 || b[6] == 255 || a[5] == 255) && !(a[5] == 255 && b[5] == 255 && b[6]==255) && !(a[7] == 255 && b[6] == 255 && b[7]==255)){
                a[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                a[7] = 0;
              }
              else if((a[8] == 255 || b[7] == 255 || a[6] == 255) && !(a[6] == 255 && b[6] == 255 && b[7]==255) && !(a[8] == 255 && b[7] == 255 && b[8]==255)){
                a[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                a[8] = 0;
              }
              else if((a[9] == 255 || b[8] == 255 || a[7] == 255) && !(a[7] == 255 && b[7] == 255 && b[8]==255) && !(a[9] == 255 && b[8] == 255 && b[9]==255)){
                a[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                a[9] = 0;
              }
              else if((a[10] == 255 || b[9] == 255 || a[8] == 255) && !(a[8] == 255 && b[8] == 255 && b[9]==255) && !(a[10] == 255 && b[9] == 255 && b[10]==255)){
                a[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                a[10] = 0;
              }
              else if((a[11] == 255 || b[10] == 255 || a[9] == 255) && !(a[9] == 255 && b[9] == 255 && b[10]==255) && !(a[11] == 255 && b[10] == 255 && b[11]==255)){
                a[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                a[11] = 0;
              }
              else if((b[11] == 255 || a[10] == 255) && !(a[10] == 255 && b[10] == 255 && b[11]==255)){
                a[11] = 255;
              }
            }
          } 
          
          
          
          
          
          // BBBBBBBBB
          else if(mouseX<100){
            if(mouseY<50){
              if(keyCode == SHIFT){
                b[0] = 0;
              }
              else if((a[0] == 255 || b[1] == 255 || c[0] == 255) && !(a[0] == 255 && b[1] == 255 && a[1]==255) && !(b[1] == 255 && c[0] == 255 && c[1]==255)){
                b[0] = 255;
              }
            } 
            else if(mouseY<100){
              if(keyCode == SHIFT){
                b[1] = 0;
              }
              else if((a[1] == 255 || b[0] == 255 || c[1] == 255 || b[2] == 255) && !(a[0] == 255 && b[0] == 255 && a[1]==255) && !(b[0] == 255 && c[0] == 255 && c[1]==255) 
              && !(b[2] == 255 && c[1] == 255 && c[2]==255) && !(b[2] == 255 && a[1] == 255 && a[2]==255)){
                b[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                b[2] = 0;
              }
              else if((a[2] == 255 || b[1] == 255 || c[2] == 255 || b[3] == 255) && !(a[1] == 255 && b[1] == 255 && a[2]==255) && !(b[1] == 255 && c[1] == 255 && c[2]==255) 
              && !(b[3] == 255 && c[2] == 255 && c[3]==255) && !(b[3] == 255 && a[2] == 255 && a[3]==255)){
                b[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                b[3] = 0;
              }
              else if((a[3] == 255 || b[2] == 255 || c[3] == 255 || b[4] == 255) && !(a[2] == 255 && b[2] == 255 && a[3]==255) && !(b[2] == 255 && c[2] == 255 && c[3]==255) 
              && !(b[4] == 255 && c[3] == 255 && c[4]==255) && !(b[4] == 255 && a[3] == 255 && a[4]==255)){
                b[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                b[4] = 0;
              }
              else if((a[4] == 255 || b[3] == 255 || c[4] == 255 || b[5] == 255) && !(a[3] == 255 && b[3] == 255 && a[4]==255) && !(b[3] == 255 && c[3] == 255 && c[4]==255) 
              && !(b[5] == 255 && c[4] == 255 && c[5]==255) && !(b[5] == 255 && a[4] == 255 && a[5]==255)){
                b[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                b[5] = 0;
              }
              else if((a[5] == 255 || b[4] == 255 || c[5] == 255 || b[6] == 255) && !(a[4] == 255 && b[4] == 255 && a[5]==255) && !(b[4] == 255 && c[4] == 255 && c[5]==255) 
              && !(b[6] == 255 && c[5] == 255 && c[6]==255) && !(b[6] == 255 && a[5] == 255 && a[6]==255)){
                b[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                b[6] = 0;
              }
              else if((a[6] == 255 || b[5] == 255 || c[6] == 255 || b[7] == 255) && !(a[5] == 255 && b[5] == 255 && a[6]==255) && !(b[5] == 255 && c[5] == 255 && c[6]==255) 
              && !(b[7] == 255 && c[6] == 255 && c[7]==255) && !(b[7] == 255 && a[6] == 255 && a[7]==255)){
                b[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                b[7] = 0;
              }
              else if((a[7] == 255 || b[6] == 255 || c[7] == 255 || b[8] == 255) && !(a[6] == 255 && b[6] == 255 && a[7]==255) && !(b[6] == 255 && c[6] == 255 && c[7]==255) 
              && !(b[8] == 255 && c[7] == 255 && c[8]==255) && !(b[8] == 255 && a[7] == 255 && a[8]==255)){
                b[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                b[8] = 0;
              }
              else if((a[8] == 255 || b[7] == 255 || c[8] == 255 || b[9] == 255) && !(a[7] == 255 && b[7] == 255 && a[8]==255) && !(b[7] == 255 && c[7] == 255 && c[8]==255) 
              && !(b[9] == 255 && c[8] == 255 && c[9]==255) && !(b[9] == 255 && a[8] == 255 && a[9]==255)){
                b[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                b[9] = 0;
              }
              else if((a[9] == 255 || b[8] == 255 || c[9] == 255 || b[10] == 255) && !(a[8] == 255 && b[8] == 255 && a[9]==255) && !(b[8] == 255 && c[8] == 255 && c[9]==255) 
              && !(b[10] == 255 && c[9] == 255 && c[10]==255) && !(b[10] == 255 && a[9] == 255 && a[10]==255)){
                b[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                b[10] = 0;
              }
              else if((a[10] == 255 || b[9] == 255 || c[10] == 255 || b[11] == 255) && !(a[9] == 255 && b[9] == 255 && a[10]==255) && !(b[9] == 255 && c[9] == 255 && c[10]==255) 
              && !(b[11] == 255 && c[10] == 255 && c[11]==255) && !(b[11] == 255 && a[10] == 255 && a[11]==255)){
                b[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                b[11] = 0;
              }
              else if((a[11] == 255 || b[10] == 255 || c[11] == 255) && !(a[10] == 255 && b[10] == 255 && a[11]==255) && !(b[10] == 255 && c[10] == 255 && c[11]==255)){
                b[11] = 255;
              }
            }
          }
          
          
              
          //CCCCCCCCCC
          else if(mouseX<150){
            if(mouseY<50){
              if(keyCode == SHIFT){
                c[0] = 0;
              }
              else if((b[0] == 255 || c[1] == 255 || d[0] == 255) && !(b[0] == 255 && c[1] == 255 && b[1]==255) && !(c[1] == 255 && d[0] == 255 && d[1]==255)){
                c[0] = 255;
              }
            } 
            else if(mouseY<100){
              if(keyCode == SHIFT){
                c[1] = 0;
              }
              else if((b[1] == 255 || c[0] == 255 || d[1] == 255 || c[2] == 255) && !(b[0] == 255 && c[0] == 255 && b[1]==255) && !(c[0] == 255 && d[0] == 255 && d[1]==255) 
              && !(c[2] == 255 && d[1] == 255 && d[2]==255) && !(c[2] == 255 && b[1] == 255 && b[2]==255)){
                c[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                c[2] = 0;
              }
              else if((b[2] == 255 || c[1] == 255 || d[2] == 255 || c[3] == 255) && !(b[1] == 255 && c[1] == 255 && b[2]==255) && !(c[1] == 255 && d[1] == 255 && d[2]==255) 
              && !(c[3] == 255 && d[2] == 255 && d[3]==255) && !(c[3] == 255 && b[2] == 255 && b[3]==255)){
                c[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                c[3] = 0;
              }
              else if((b[3] == 255 || c[2] == 255 || d[3] == 255 || c[4] == 255) && !(b[2] == 255 && c[2] == 255 && b[3]==255) && !(c[2] == 255 && d[2] == 255 && d[3]==255) 
              && !(c[4] == 255 && d[3] == 255 && d[4]==255) && !(c[4] == 255 && b[3] == 255 && b[4]==255)){
                c[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                c[4] = 0;
              }
              else if((b[4] == 255 || c[3] == 255 || d[4] == 255 || c[5] == 255) && !(b[3] == 255 && c[3] == 255 && b[4]==255) && !(c[3] == 255 && d[3] == 255 && d[4]==255) 
              && !(c[5] == 255 && d[4] == 255 && d[5]==255) && !(c[5] == 255 && b[4] == 255 && b[5]==255)){
                c[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                c[5] = 0;
              }
              else if((b[5] == 255 || c[4] == 255 || d[5] == 255 || c[6] == 255) && !(b[4] == 255 && c[4] == 255 && b[5]==255) && !(c[4] == 255 && d[4] == 255 && d[5]==255) 
              && !(c[6] == 255 && d[5] == 255 && d[6]==255) && !(c[6] == 255 && b[5] == 255 && b[6]==255)){
                c[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                c[6] = 0;
              }
              else if((b[6] == 255 || c[5] == 255 || d[6] == 255 || c[7] == 255) && !(b[5] == 255 && c[5] == 255 && b[6]==255) && !(c[5] == 255 && d[5] == 255 && d[6]==255) 
              && !(c[7] == 255 && d[6] == 255 && d[7]==255) && !(c[7] == 255 && b[6] == 255 && b[7]==255)){
                c[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                c[7] = 0;
              }
              else if((b[7] == 255 || c[6] == 255 || d[7] == 255 || c[8] == 255) && !(b[6] == 255 && c[6] == 255 && b[7]==255) && !(c[6] == 255 && d[6] == 255 && d[7]==255) 
              && !(c[8] == 255 && d[7] == 255 && d[8]==255) && !(c[8] == 255 && b[7] == 255 && b[8]==255)){
                c[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                c[8] = 0;
              }
              else if((b[8] == 255 || c[7] == 255 || d[8] == 255 || c[9] == 255) && !(b[7] == 255 && c[7] == 255 && b[8]==255) && !(c[7] == 255 && d[7] == 255 && d[8]==255) 
              && !(c[9] == 255 && d[8] == 255 && d[9]==255) && !(c[9] == 255 && b[8] == 255 && b[9]==255)){
                c[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                c[9] = 0;
              }
              else if((b[9] == 255 || c[8] == 255 || d[9] == 255 || c[10] == 255) && !(b[8] == 255 && c[8] == 255 && b[9]==255) && !(c[8] == 255 && d[8] == 255 && d[9]==255) 
              && !(c[10] == 255 && d[9] == 255 && d[10]==255) && !(c[10] == 255 && b[9] == 255 && b[10]==255)){
                c[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                c[10] = 0;
              }
              else if((b[10] == 255 || c[9] == 255 || d[10] == 255 || c[11] == 255) && !(b[9] == 255 && c[9] == 255 && b[10]==255) && !(c[9] == 255 && d[9] == 255 && d[10]==255) 
              && !(c[11] == 255 && d[10] == 255 && d[11]==255) && !(c[11] == 255 && b[10] == 255 && b[11]==255)){
                c[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                c[11] = 0;
              }
              else if((b[11] == 255 || c[10] == 255 || d[11] == 255) && !(b[10] == 255 && c[10] == 255 && b[11]==255) && !(c[10] == 255 && d[10] == 255 && d[11]==255)){
                c[11] = 255;
              }
            }
          }
          
          
          
          // DDDDDDDDD
          else if(mouseX<200){
            if(mouseY<50){
              if(keyCode == SHIFT){
                d[0] = 0;
              }
              else if((c[0] == 255 || d[1] == 255 || e[0] == 255) && !(c[0] == 255 && d[1] == 255 && c[1]==255) && !(d[1] == 255 && e[0] == 255 && e[1]==255)){
                d[0] = 255;
              }
            } 
            else if(mouseY<100){
              if(keyCode == SHIFT){
                d[1] = 0;
              }
              else if((c[1] == 255 || d[0] == 255 || e[1] == 255 || d[2] == 255) && !(c[0] == 255 && d[0] == 255 && c[1]==255) && !(d[0] == 255 && e[0] == 255 && e[1]==255) 
              && !(d[2] == 255 && e[1] == 255 && e[2]==255) && !(d[2] == 255 && c[1] == 255 && c[2]==255)){
                d[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                d[2] = 0;
              }
              else if((c[2] == 255 || d[1] == 255 || e[2] == 255 || d[3] == 255) && !(c[1] == 255 && d[1] == 255 && c[2]==255) && !(d[1] == 255 && e[1] == 255 && e[2]==255) 
              && !(d[3] == 255 && e[2] == 255 && e[3]==255) && !(d[3] == 255 && c[2] == 255 && c[3]==255)){
                d[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                d[3] = 0;
              }
              else if((c[3] == 255 || d[2] == 255 || e[3] == 255 || d[4] == 255) && !(c[2] == 255 && d[2] == 255 && c[3]==255) && !(d[2] == 255 && e[2] == 255 && e[3]==255) 
              && !(d[4] == 255 && e[3] == 255 && e[4]==255) && !(d[4] == 255 && c[3] == 255 && c[4]==255)){
                d[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                d[4] = 0;
              }
              else if((c[4] == 255 || d[3] == 255 || e[4] == 255 || d[5] == 255) && !(c[3] == 255 && d[3] == 255 && c[4]==255) && !(d[3] == 255 && e[3] == 255 && e[4]==255) 
              && !(d[5] == 255 && e[4] == 255 && e[5]==255) && !(d[5] == 255 && c[4] == 255 && c[5]==255)){
                d[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                d[5] = 0;
              }
              else if((c[5] == 255 || d[4] == 255 || e[5] == 255 || d[6] == 255) && !(c[4] == 255 && d[4] == 255 && c[5]==255) && !(d[4] == 255 && e[4] == 255 && e[5]==255) 
              && !(d[6] == 255 && e[5] == 255 && e[6]==255) && !(d[6] == 255 && c[5] == 255 && c[6]==255)){
                d[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                d[6] = 0;
              }
              else if((c[6] == 255 || d[5] == 255 || e[6] == 255 || d[7] == 255) && !(c[5] == 255 && d[5] == 255 && c[6]==255) && !(d[5] == 255 && e[5] == 255 && e[6]==255) 
              && !(d[7] == 255 && e[6] == 255 && e[7]==255) && !(d[7] == 255 && c[6] == 255 && c[7]==255)){
                d[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                d[7] = 0;
              }
              else if((c[7] == 255 || d[6] == 255 || e[7] == 255 || d[8] == 255) && !(c[6] == 255 && d[6] == 255 && c[7]==255) && !(d[6] == 255 && e[6] == 255 && e[7]==255) 
              && !(d[8] == 255 && e[7] == 255 && e[8]==255) && !(d[8] == 255 && c[7] == 255 && c[8]==255)){
                d[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                d[8] = 0;
              }
              else if((c[8] == 255 || d[7] == 255 || e[8] == 255 || d[9] == 255) && !(c[7] == 255 && d[7] == 255 && c[8]==255) && !(d[7] == 255 && e[7] == 255 && e[8]==255) 
              && !(d[9] == 255 && e[8] == 255 && e[9]==255) && !(d[9] == 255 && c[8] == 255 && c[9]==255)){
                d[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                d[9] = 0;
              }
              else if((c[9] == 255 || d[8] == 255 || e[9] == 255 || d[10] == 255) && !(c[8] == 255 && d[8] == 255 && c[9]==255) && !(d[8] == 255 && e[8] == 255 && e[9]==255) 
              && !(d[10] == 255 && e[9] == 255 && e[10]==255) && !(d[10] == 255 && c[9] == 255 && c[10]==255)){
                d[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                d[10] = 0;
              }
              else if((c[10] == 255 || d[9] == 255 || e[10] == 255 || d[11] == 255) && !(c[9] == 255 && d[9] == 255 && c[10]==255) && !(d[9] == 255 && e[9] == 255 && e[10]==255) 
              && !(d[11] == 255 && e[10] == 255 && e[11]==255) && !(d[11] == 255 && c[10] == 255 && c[11]==255)){
                d[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                d[11] = 0;
              }
              else if((c[11] == 255 || d[10] == 255 || e[11] == 255) && !(c[10] == 255 && d[10] == 255 && c[11]==255) && !(d[10] == 255 && e[10] == 255 && e[11]==255)){
                d[11] = 255;
              }
            }
          }
          
          
          // EEEEEEEEEEEE
          else if(mouseX<250){
            if(mouseY<50){
              if(keyCode == SHIFT){
                e[0] = 0;
              }
              else if((d[0] == 255 || e[1] == 255 || f[0] == 255) && !(d[0] == 255 && e[1] == 255 && d[1]==255) && !(e[1] == 255 && f[0] == 255 && f[1]==255)){
                e[0] = 255;
              }
            } 
            else if(mouseY<100){
              if(keyCode == SHIFT){
                e[1] = 0;
              }
              else if((d[1] == 255 || e[0] == 255 || f[1] == 255 || e[2] == 255) && !(d[0] == 255 && e[0] == 255 && d[1]==255) && !(e[0] == 255 && f[0] == 255 && f[1]==255) 
              && !(e[2] == 255 && f[1] == 255 && f[2]==255) && !(e[2] == 255 && d[1] == 255 && d[2]==255)){
                e[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                e[2] = 0;
              }
              else if((d[2] == 255 || e[1] == 255 || f[2] == 255 || e[3] == 255) && !(d[1] == 255 && e[1] == 255 && d[2]==255) && !(e[1] == 255 && f[1] == 255 && f[2]==255) 
              && !(e[3] == 255 && f[2] == 255 && f[3]==255) && !(e[3] == 255 && d[2] == 255 && d[3]==255)){
                e[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                e[3] = 0;
              }
              else if((d[3] == 255 || e[2] == 255 || f[3] == 255 || e[4] == 255) && !(d[2] == 255 && e[2] == 255 && d[3]==255) && !(e[2] == 255 && f[2] == 255 && f[3]==255) 
              && !(e[4] == 255 && f[3] == 255 && f[4]==255) && !(e[4] == 255 && d[3] == 255 && d[4]==255)){
                e[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                e[4] = 0;
              }
              else if((d[4] == 255 || e[3] == 255 || f[4] == 255 || e[5] == 255) && !(d[3] == 255 && e[3] == 255 && d[4]==255) && !(e[3] == 255 && f[3] == 255 && f[4]==255) 
              && !(e[5] == 255 && f[4] == 255 && f[5]==255) && !(e[5] == 255 && d[4] == 255 && d[5]==255)){
                e[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                e[5] = 0;
              }
              else if((d[5] == 255 || e[4] == 255 || f[5] == 255 || e[6] == 255) && !(d[4] == 255 && e[4] == 255 && d[5]==255) && !(e[4] == 255 && f[4] == 255 && f[5]==255) 
              && !(e[6] == 255 && f[5] == 255 && f[6]==255) && !(e[6] == 255 && d[5] == 255 && d[6]==255)){
                e[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                e[6] = 0;
              }
              else if((d[6] == 255 || e[5] == 255 || f[6] == 255 || e[7] == 255) && !(d[5] == 255 && e[5] == 255 && d[6]==255) && !(e[5] == 255 && f[5] == 255 && f[6]==255) 
              && !(e[7] == 255 && f[6] == 255 && f[7]==255) && !(e[7] == 255 && d[6] == 255 && d[7]==255)){
                e[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                e[7] = 0;
              }
              else if((d[7] == 255 || e[6] == 255 || f[7] == 255 || e[8] == 255) && !(d[6] == 255 && e[6] == 255 && d[7]==255) && !(e[6] == 255 && f[6] == 255 && f[7]==255) 
              && !(e[8] == 255 && f[7] == 255 && f[8]==255) && !(e[8] == 255 && d[7] == 255 && d[8]==255)){
                e[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                e[8] = 0;
              }
              else if((d[8] == 255 || e[7] == 255 || f[8] == 255 || e[9] == 255) && !(d[7] == 255 && e[7] == 255 && d[8]==255) && !(e[7] == 255 && f[7] == 255 && f[8]==255) 
              && !(e[9] == 255 && f[8] == 255 && f[9]==255) && !(e[9] == 255 && d[8] == 255 && d[9]==255)){
                e[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                e[9] = 0;
              }
              else if((d[9] == 255 || e[8] == 255 || f[9] == 255 || e[10] == 255) && !(d[8] == 255 && e[8] == 255 && d[9]==255) && !(e[8] == 255 && f[8] == 255 && f[9]==255) 
              && !(e[10] == 255 && f[9] == 255 && f[10]==255) && !(e[10] == 255 && d[9] == 255 && d[10]==255)){
                e[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                e[10] = 0;
              }
              else if((d[10] == 255 || e[9] == 255 || f[10] == 255 || e[11] == 255) && !(d[9] == 255 && e[9] == 255 && d[10]==255) && !(e[9] == 255 && f[9] == 255 && f[10]==255) 
              && !(e[11] == 255 && f[10] == 255 && f[11]==255) && !(e[11] == 255 && d[10] == 255 && d[11]==255)){
                e[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                e[11] = 0;
              }
              else if((d[11] == 255 || e[10] == 255 || f[11] == 255) && !(d[10] == 255 && e[10] == 255 && d[11]==255) && !(e[10] == 255 && f[10] == 255 && f[11]==255)){
                e[11] = 255;
              }
            }
          }
          
          //FFFFFFFFFFFFFFFFFFFF
          else if(mouseX<300){
            if(mouseY<100 && mouseY>=50){
              if(keyCode == SHIFT){
                f[1] = 0;
              }
              else if((e[1] == 255 || f[0] == 255 || g[1] == 255 || f[2] == 255) && !(e[0] == 255 && f[0] == 255 && e[1]==255) && !(f[0] == 255 && g[0] == 255 && g[1]==255) 
              && !(f[2] == 255 && g[1] == 255 && g[2]==255) && !(f[2] == 255 && e[1] == 255 && e[2]==255)){
                f[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                f[2] = 0;
              }
              else if((e[2] == 255 || f[1] == 255 || g[2] == 255 || f[3] == 255) && !(e[1] == 255 && f[1] == 255 && e[2]==255) && !(f[1] == 255 && g[1] == 255 && g[2]==255) 
              && !(f[3] == 255 && g[2] == 255 && g[3]==255) && !(f[3] == 255 && e[2] == 255 && e[3]==255)){
                f[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                f[3] = 0;
              }
              else if((e[3] == 255 || f[2] == 255 || g[3] == 255 || f[4] == 255) && !(e[2] == 255 && f[2] == 255 && e[3]==255) && !(f[2] == 255 && g[2] == 255 && g[3]==255) 
              && !(f[4] == 255 && g[3] == 255 && g[4]==255) && !(f[4] == 255 && e[3] == 255 && e[4]==255)){
                f[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                f[4] = 0;
              }
              else if((e[4] == 255 || f[3] == 255 || g[4] == 255 || f[5] == 255) && !(e[3] == 255 && f[3] == 255 && e[4]==255) && !(f[3] == 255 && g[3] == 255 && g[4]==255) 
              && !(f[5] == 255 && g[4] == 255 && g[5]==255) && !(f[5] == 255 && e[4] == 255 && e[5]==255)){
                f[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                f[5] = 0;
              }
              else if((e[5] == 255 || f[4] == 255 || g[5] == 255 || f[6] == 255) && !(e[4] == 255 && f[4] == 255 && e[5]==255) && !(f[4] == 255 && g[4] == 255 && g[5]==255) 
              && !(f[6] == 255 && g[5] == 255 && g[6]==255) && !(f[6] == 255 && e[5] == 255 && e[6]==255)){
                f[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                f[6] = 0;
              }
              else if((e[6] == 255 || f[5] == 255 || g[6] == 255 || f[7] == 255) && !(e[5] == 255 && f[5] == 255 && e[6]==255) && !(f[5] == 255 && g[5] == 255 && g[6]==255) 
              && !(f[7] == 255 && g[6] == 255 && g[7]==255) && !(f[7] == 255 && e[6] == 255 && e[7]==255)){
                f[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                f[7] = 0;
              }
              else if((e[7] == 255 || f[6] == 255 || g[7] == 255 || f[8] == 255) && !(e[6] == 255 && f[6] == 255 && e[7]==255) && !(f[6] == 255 && g[6] == 255 && g[7]==255) 
              && !(f[8] == 255 && g[7] == 255 && g[8]==255) && !(f[8] == 255 && e[7] == 255 && e[8]==255)){
                f[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                f[8] = 0;
              }
              else if((e[8] == 255 || f[7] == 255 || g[8] == 255 || f[9] == 255) && !(e[7] == 255 && f[7] == 255 && e[8]==255) && !(f[7] == 255 && g[7] == 255 && g[8]==255) 
              && !(f[9] == 255 && g[8] == 255 && g[9]==255) && !(f[9] == 255 && e[8] == 255 && e[9]==255)){
                f[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                f[9] = 0;
              }
              else if((e[9] == 255 || f[8] == 255 || g[9] == 255 || f[10] == 255) && !(e[8] == 255 && f[8] == 255 && e[9]==255) && !(f[8] == 255 && g[8] == 255 && g[9]==255) 
              && !(f[10] == 255 && g[9] == 255 && g[10]==255) && !(f[10] == 255 && e[9] == 255 && e[10]==255)){
                f[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                f[10] = 0;
              }
              else if((e[10] == 255 || f[9] == 255 || g[10] == 255 || f[11] == 255) && !(e[9] == 255 && f[9] == 255 && e[10]==255) && !(f[9] == 255 && g[9] == 255 && g[10]==255) 
              && !(f[11] == 255 && g[10] == 255 && g[11]==255) && !(f[11] == 255 && e[10] == 255 && e[11]==255)){
                f[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                f[11] = 0;
              }
              else if((e[11] == 255 || f[10] == 255 || g[11] == 255) && !(e[10] == 255 && f[10] == 255 && e[11]==255) && !(f[10] == 255 && g[10] == 255 && g[11]==255)){
                f[11] = 255;
              }
            }
          }
          
          
          
          
          // GGGGGGGGGGGGGGGGG
          else if(mouseX<350){
            if(mouseY<50){
              if(keyCode == SHIFT){
                g[0] = 0;
              }
              else if((f[0] == 255 || g[1] == 255 || h[0] == 255) && !(f[0] == 255 && g[1] == 255 && f[1]==255) && !(g[1] == 255 && h[0] == 255 && h[1]==255)){
                g[0] = 255;
              }
            } 
            else if(mouseY<100){
              if(keyCode == SHIFT){
                g[1] = 0;
              }
              else if((f[1] == 255 || g[0] == 255 || h[1] == 255 || g[2] == 255) && !(f[0] == 255 && g[0] == 255 && f[1]==255) && !(g[0] == 255 && h[0] == 255 && h[1]==255) 
              && !(g[2] == 255 && h[1] == 255 && h[2]==255) && !(g[2] == 255 && f[1] == 255 && f[2]==255)){
                g[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                g[2] = 0;
              }
              else if((f[2] == 255 || g[1] == 255 || h[2] == 255 || g[3] == 255) && !(f[1] == 255 && g[1] == 255 && f[2]==255) && !(g[1] == 255 && h[1] == 255 && h[2]==255) 
              && !(g[3] == 255 && h[2] == 255 && h[3]==255) && !(g[3] == 255 && f[2] == 255 && f[3]==255)){
                g[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                g[3] = 0;
              }
              else if((f[3] == 255 || g[2] == 255 || h[3] == 255 || g[4] == 255) && !(f[2] == 255 && g[2] == 255 && f[3]==255) && !(g[2] == 255 && h[2] == 255 && h[3]==255) 
              && !(g[4] == 255 && h[3] == 255 && h[4]==255) && !(g[4] == 255 && f[3] == 255 && f[4]==255)){
                g[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                g[4] = 0;
              }
              else if((f[4] == 255 || g[3] == 255 || h[4] == 255 || g[5] == 255) && !(f[3] == 255 && g[3] == 255 && f[4]==255) && !(g[3] == 255 && h[3] == 255 && h[4]==255) 
              && !(g[5] == 255 && h[4] == 255 && h[5]==255) && !(g[5] == 255 && f[4] == 255 && f[5]==255)){
                g[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                g[5] = 0;
              }
              else if((f[5] == 255 || g[4] == 255 || h[5] == 255 || g[6] == 255) && !(f[4] == 255 && g[4] == 255 && f[5]==255) && !(g[4] == 255 && h[4] == 255 && h[5]==255) 
              && !(g[6] == 255 && h[5] == 255 && h[6]==255) && !(g[6] == 255 && f[5] == 255 && f[6]==255)){
                g[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                g[6] = 0;
              }
              else if((f[6] == 255 || g[5] == 255 || h[6] == 255 || g[7] == 255) && !(f[5] == 255 && g[5] == 255 && f[6]==255) && !(g[5] == 255 && h[5] == 255 && h[6]==255) 
              && !(g[7] == 255 && h[6] == 255 && h[7]==255) && !(g[7] == 255 && f[6] == 255 && f[7]==255)){
                g[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                g[7] = 0;
              }
              else if((f[7] == 255 || g[6] == 255 || h[7] == 255 || g[8] == 255) && !(f[6] == 255 && g[6] == 255 && f[7]==255) && !(g[6] == 255 && h[6] == 255 && h[7]==255) 
              && !(g[8] == 255 && h[7] == 255 && h[8]==255) && !(g[8] == 255 && f[7] == 255 && f[8]==255)){
                g[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                g[8] = 0;
              }
              else if((f[8] == 255 || g[7] == 255 || h[8] == 255 || g[9] == 255) && !(f[7] == 255 && g[7] == 255 && f[8]==255) && !(g[7] == 255 && h[7] == 255 && h[8]==255) 
              && !(g[9] == 255 && h[8] == 255 && h[9]==255) && !(g[9] == 255 && f[8] == 255 && f[9]==255)){
                g[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                g[9] = 0;
              }
              else if((f[9] == 255 || g[8] == 255 || h[9] == 255 || g[10] == 255) && !(f[8] == 255 && g[8] == 255 && f[9]==255) && !(g[8] == 255 && h[8] == 255 && h[9]==255) 
              && !(g[10] == 255 && h[9] == 255 && h[10]==255) && !(g[10] == 255 && f[9] == 255 && f[10]==255)){
                g[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                g[10] = 0;
              }
              else if((f[10] == 255 || g[9] == 255 || h[10] == 255 || g[11] == 255) && !(f[9] == 255 && g[9] == 255 && f[10]==255) && !(g[9] == 255 && h[9] == 255 && h[10]==255) 
              && !(g[11] == 255 && h[10] == 255 && h[11]==255) && !(g[11] == 255 && f[10] == 255 && f[11]==255)){
                g[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                g[11] = 0;
              }
              else if((f[11] == 255 || g[10] == 255 || h[11] == 255) && !(f[10] == 255 && g[10] == 255 && f[11]==255) && !(g[10] == 255 && h[10] == 255 && h[11]==255)){
                g[11] = 255;
              }
            }
          }
          
          
          
          //  HHHHHHHHHHHHHHH
          else if(mouseX<400){
            if(mouseY<50){
              if(keyCode == SHIFT){
                h[0] = 0;
              }
              else if((g[0] == 255 || h[1] == 255 || i[0] == 255) && !(g[0] == 255 && h[1] == 255 && g[1]==255) && !(h[1] == 255 && i[0] == 255 && i[1]==255)){
                h[0] = 255;
              }
            } 
            else if(mouseY<100){
              if(keyCode == SHIFT){
                h[1] = 0;
              }
              else if((g[1] == 255 || h[0] == 255 || i[1] == 255 || h[2] == 255) && !(g[0] == 255 && h[0] == 255 && g[1]==255) && !(h[0] == 255 && i[0] == 255 && i[1]==255) 
              && !(h[2] == 255 && i[1] == 255 && i[2]==255) && !(h[2] == 255 && g[1] == 255 && g[2]==255)){
                h[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                h[2] = 0;
              }
              else if((g[2] == 255 || h[1] == 255 || i[2] == 255 || h[3] == 255) && !(g[1] == 255 && h[1] == 255 && g[2]==255) && !(h[1] == 255 && i[1] == 255 && i[2]==255) 
              && !(h[3] == 255 && i[2] == 255 && i[3]==255) && !(h[3] == 255 && g[2] == 255 && g[3]==255)){
                h[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                h[3] = 0;
              }
              else if((g[3] == 255 || h[2] == 255 || i[3] == 255 || h[4] == 255) && !(g[2] == 255 && h[2] == 255 && g[3]==255) && !(h[2] == 255 && i[2] == 255 && i[3]==255) 
              && !(h[4] == 255 && i[3] == 255 && i[4]==255) && !(h[4] == 255 && g[3] == 255 && g[4]==255)){
                h[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                h[4] = 0;
              }
              else if((g[4] == 255 || h[3] == 255 || i[4] == 255 || h[5] == 255) && !(g[3] == 255 && h[3] == 255 && g[4]==255) && !(h[3] == 255 && i[3] == 255 && i[4]==255) 
              && !(h[5] == 255 && i[4] == 255 && i[5]==255) && !(h[5] == 255 && g[4] == 255 && g[5]==255)){
                h[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                h[5] = 0;
              }
              else if((g[5] == 255 || h[4] == 255 || i[5] == 255 || h[6] == 255) && !(g[4] == 255 && h[4] == 255 && g[5]==255) && !(h[4] == 255 && i[4] == 255 && i[5]==255) 
              && !(h[6] == 255 && i[5] == 255 && i[6]==255) && !(h[6] == 255 && g[5] == 255 && g[6]==255)){
                h[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                h[6] = 0;
              }
              else if((g[6] == 255 || h[5] == 255 || i[6] == 255 || h[7] == 255) && !(g[5] == 255 && h[5] == 255 && g[6]==255) && !(h[5] == 255 && i[5] == 255 && i[6]==255) 
              && !(h[7] == 255 && i[6] == 255 && i[7]==255) && !(h[7] == 255 && g[6] == 255 && g[7]==255)){
                h[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                h[7] = 0;
              }
              else if((g[7] == 255 || h[6] == 255 || i[7] == 255 || h[8] == 255) && !(g[6] == 255 && h[6] == 255 && g[7]==255) && !(h[6] == 255 && i[6] == 255 && i[7]==255) 
              && !(h[8] == 255 && i[7] == 255 && i[8]==255) && !(h[8] == 255 && g[7] == 255 && g[8]==255)){
                h[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                h[8] = 0;
              }
              else if((g[8] == 255 || h[7] == 255 || i[8] == 255 || h[9] == 255) && !(g[7] == 255 && h[7] == 255 && g[8]==255) && !(h[7] == 255 && i[7] == 255 && i[8]==255) 
              && !(h[9] == 255 && i[8] == 255 && i[9]==255) && !(h[9] == 255 && g[8] == 255 && g[9]==255)){
                h[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                h[9] = 0;
              }
              else if((g[9] == 255 || h[8] == 255 || i[9] == 255 || h[10] == 255) && !(g[8] == 255 && h[8] == 255 && g[9]==255) && !(h[8] == 255 && i[8] == 255 && i[9]==255) 
              && !(h[10] == 255 && i[9] == 255 && i[10]==255) && !(h[10] == 255 && g[9] == 255 && g[10]==255)){
                h[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                h[10] = 0;
              }
              else if((g[10] == 255 || h[9] == 255 || i[10] == 255 || h[11] == 255) && !(g[9] == 255 && h[9] == 255 && g[10]==255) && !(h[9] == 255 && i[9] == 255 && i[10]==255) 
              && !(h[11] == 255 && i[10] == 255 && i[11]==255) && !(h[11] == 255 && g[10] == 255 && g[11]==255)){
                h[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                h[11] = 0;
              }
              else if((g[11] == 255 || h[10] == 255 || i[11] == 255) && !(g[10] == 255 && h[10] == 255 && g[11]==255) && !(h[10] == 255 && i[10] == 255 && i[11]==255)){
                h[11] = 255;
              }
            }
          }
          
          
          
          // IIIIIIIIIIII
          else if(mouseX<450){
            if(mouseY<50){
              if(keyCode == SHIFT){
                i[0] = 0;
              }
              else if((h[0] == 255 || i[1] == 255 || j[0] == 255) && !(h[0] == 255 && i[1] == 255 && h[1]==255) && !(i[1] == 255 && j[0] == 255 && j[1]==255)){
                i[0] = 255;
              }
            } 
            else if(mouseY<100){
              if(keyCode == SHIFT){
                i[1] = 0;
              }
              else if((h[1] == 255 || i[0] == 255 || j[1] == 255 || i[2] == 255) && !(h[0] == 255 && i[0] == 255 && h[1]==255) && !(i[0] == 255 && j[0] == 255 && j[1]==255) 
              && !(i[2] == 255 && j[1] == 255 && j[2]==255) && !(i[2] == 255 && h[1] == 255 && h[2]==255)){
                i[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                i[2] = 0;
              }
              else if((h[2] == 255 || i[1] == 255 || j[2] == 255 || i[3] == 255) && !(h[1] == 255 && i[1] == 255 && h[2]==255) && !(i[1] == 255 && j[1] == 255 && j[2]==255) 
              && !(i[3] == 255 && j[2] == 255 && j[3]==255) && !(i[3] == 255 && h[2] == 255 && h[3]==255)){
                i[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                i[3] = 0;
              }
              else if((h[3] == 255 || i[2] == 255 || j[3] == 255 || i[4] == 255) && !(h[2] == 255 && i[2] == 255 && h[3]==255) && !(i[2] == 255 && j[2] == 255 && j[3]==255) 
              && !(i[4] == 255 && j[3] == 255 && j[4]==255) && !(i[4] == 255 && h[3] == 255 && h[4]==255)){
                i[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                i[4] = 0;
              }
              else if((h[4] == 255 || i[3] == 255 || j[4] == 255 || i[5] == 255) && !(h[3] == 255 && i[3] == 255 && h[4]==255) && !(i[3] == 255 && j[3] == 255 && j[4]==255) 
              && !(i[5] == 255 && j[4] == 255 && j[5]==255) && !(i[5] == 255 && h[4] == 255 && h[5]==255)){
                i[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                i[5] = 0;
              }
              else if((h[5] == 255 || i[4] == 255 || j[5] == 255 || i[6] == 255) && !(h[4] == 255 && i[4] == 255 && h[5]==255) && !(i[4] == 255 && j[4] == 255 && j[5]==255) 
              && !(i[6] == 255 && j[5] == 255 && j[6]==255) && !(i[6] == 255 && h[5] == 255 && h[6]==255)){
                i[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                i[6] = 0;
              }
              else if((h[6] == 255 || i[5] == 255 || j[6] == 255 || i[7] == 255) && !(h[5] == 255 && i[5] == 255 && h[6]==255) && !(i[5] == 255 && j[5] == 255 && j[6]==255) 
              && !(i[7] == 255 && j[6] == 255 && j[7]==255) && !(i[7] == 255 && h[6] == 255 && h[7]==255)){
                i[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                i[7] = 0;
              }
              else if((h[7] == 255 || i[6] == 255 || j[7] == 255 || i[8] == 255) && !(h[6] == 255 && i[6] == 255 && h[7]==255) && !(i[6] == 255 && j[6] == 255 && j[7]==255) 
              && !(i[8] == 255 && j[7] == 255 && j[8]==255) && !(i[8] == 255 && h[7] == 255 && h[8]==255)){
                i[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                i[8] = 0;
              }
              else if((h[8] == 255 || i[7] == 255 || j[8] == 255 || i[9] == 255) && !(h[7] == 255 && i[7] == 255 && h[8]==255) && !(i[7] == 255 && j[7] == 255 && j[8]==255) 
              && !(i[9] == 255 && j[8] == 255 && j[9]==255) && !(i[9] == 255 && h[8] == 255 && h[9]==255)){
                i[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                i[9] = 0;
              }
              else if((h[9] == 255 || i[8] == 255 || j[9] == 255 || i[10] == 255) && !(h[8] == 255 && i[8] == 255 && h[9]==255) && !(i[8] == 255 && j[8] == 255 && j[9]==255) 
              && !(i[10] == 255 && j[9] == 255 && j[10]==255) && !(i[10] == 255 && h[9] == 255 && h[10]==255)){
                i[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                i[10] = 0;
              }
              else if((h[10] == 255 || i[9] == 255 || j[10] == 255 || i[11] == 255) && !(h[9] == 255 && i[9] == 255 && h[10]==255) && !(i[9] == 255 && j[9] == 255 && j[10]==255) 
              && !(i[11] == 255 && j[10] == 255 && j[11]==255) && !(i[11] == 255 && h[10] == 255 && h[11]==255)){
                i[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                i[11] = 0;
              }
              else if((h[11] == 255 || i[10] == 255 || j[11] == 255) && !(h[10] == 255 && i[10] == 255 && h[11]==255) && !(i[10] == 255 && j[10] == 255 && j[11]==255)){
                i[11] = 255;
              }
            }
          }
          
          
          
          // JJJJJJJJJJJ
          else if(mouseX<500){
            if(mouseY<50){
              if(keyCode == SHIFT){
                j[0] = 0;
              }
              else if((i[0] == 255 || j[1] == 255 || k[0] == 255) && !(i[0] == 255 && j[1] == 255 && i[1]==255) && !(j[1] == 255 && k[0] == 255 && k[1]==255)){
                j[0] = 255;
              }
            } 
            else if(mouseY<100){
              if(keyCode == SHIFT){
                j[1] = 0;
              }
              else if((i[1] == 255 || j[0] == 255 || k[1] == 255 || j[2] == 255) && !(i[0] == 255 && j[0] == 255 && i[1]==255) && !(j[0] == 255 && k[0] == 255 && k[1]==255) 
              && !(j[2] == 255 && k[1] == 255 && k[2]==255) && !(j[2] == 255 && i[1] == 255 && i[2]==255)){
                j[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                j[2] = 0;
              }
              else if((i[2] == 255 || j[1] == 255 || k[2] == 255 || j[3] == 255) && !(i[1] == 255 && j[1] == 255 && i[2]==255) && !(j[1] == 255 && k[1] == 255 && k[2]==255) 
              && !(j[3] == 255 && k[2] == 255 && k[3]==255) && !(j[3] == 255 && i[2] == 255 && i[3]==255)){
                j[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                j[3] = 0;
              }
              else if((i[3] == 255 || j[2] == 255 || k[3] == 255 || j[4] == 255) && !(i[2] == 255 && j[2] == 255 && i[3]==255) && !(j[2] == 255 && k[2] == 255 && k[3]==255) 
              && !(j[4] == 255 && k[3] == 255 && k[4]==255) && !(j[4] == 255 && i[3] == 255 && i[4]==255)){
                j[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                j[4] = 0;
              }
              else if((i[4] == 255 || j[3] == 255 || k[4] == 255 || j[5] == 255) && !(i[3] == 255 && j[3] == 255 && i[4]==255) && !(j[3] == 255 && k[3] == 255 && k[4]==255) 
              && !(j[5] == 255 && k[4] == 255 && k[5]==255) && !(j[5] == 255 && i[4] == 255 && i[5]==255)){
                j[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                j[5] = 0;
              }
              else if((i[5] == 255 || j[4] == 255 || k[5] == 255 || j[6] == 255) && !(i[4] == 255 && j[4] == 255 && i[5]==255) && !(j[4] == 255 && k[4] == 255 && k[5]==255) 
              && !(j[6] == 255 && k[5] == 255 && k[6]==255) && !(j[6] == 255 && i[5] == 255 && i[6]==255)){
                j[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                j[6] = 0;
              }
              else if((i[6] == 255 || j[5] == 255 || k[6] == 255 || j[7] == 255) && !(i[5] == 255 && j[5] == 255 && i[6]==255) && !(j[5] == 255 && k[5] == 255 && k[6]==255) 
              && !(j[7] == 255 && k[6] == 255 && k[7]==255) && !(j[7] == 255 && i[6] == 255 && i[7]==255)){
                j[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                j[7] = 0;
              }
              else if((i[7] == 255 || j[6] == 255 || k[7] == 255 || j[8] == 255) && !(i[6] == 255 && j[6] == 255 && i[7]==255) && !(j[6] == 255 && k[6] == 255 && k[7]==255) 
              && !(j[8] == 255 && k[7] == 255 && k[8]==255) && !(j[8] == 255 && i[7] == 255 && i[8]==255)){
                j[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                j[8] = 0;
              }
              else if((i[8] == 255 || j[7] == 255 || k[8] == 255 || j[9] == 255) && !(i[7] == 255 && j[7] == 255 && i[8]==255) && !(j[7] == 255 && k[7] == 255 && k[8]==255) 
              && !(j[9] == 255 && k[8] == 255 && k[9]==255) && !(j[9] == 255 && i[8] == 255 && i[9]==255)){
                j[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                j[9] = 0;
              }
              else if((i[9] == 255 || j[8] == 255 || k[9] == 255 || j[10] == 255) && !(i[8] == 255 && j[8] == 255 && i[9]==255) && !(j[8] == 255 && k[8] == 255 && k[9]==255) 
              && !(j[10] == 255 && k[9] == 255 && k[10]==255) && !(j[10] == 255 && i[9] == 255 && i[10]==255)){
                j[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                j[10] = 0;
              }
              else if((i[10] == 255 || j[9] == 255 || k[10] == 255 || j[11] == 255) && !(i[9] == 255 && j[9] == 255 && i[10]==255) && !(j[9] == 255 && k[9] == 255 && k[10]==255) 
              && !(j[11] == 255 && k[10] == 255 && k[11]==255) && !(j[11] == 255 && i[10] == 255 && i[11]==255)){
                j[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                j[11] = 0;
              }
              else if((i[11] == 255 || j[10] == 255 || k[11] == 255) && !(i[10] == 255 && j[10] == 255 && i[11]==255) && !(j[10] == 255 && k[10] == 255 && k[11]==255)){
                j[11] = 255;
              }
            }
          }
          
          
          // KKKKKKKKKKKKKKKK
          else if(mouseX<550){
            if(mouseY<50){
              if(keyCode == SHIFT){
                k[0] = 0;
              }
              else if((k[1] == 255 || j[0] == 255) && !(k[1] == 255 && j[0] == 255 && j[1]==255)){
                k[0] = 255;
              }
            } 
            else if(mouseY<100){
              if(keyCode == SHIFT){
                k[1] = 0;
              }
              else if((k[2] == 255 || j[1] == 255 || k[0] == 255) && !(k[0] == 255 && j[0] == 255 && j[1]==255) && !(k[2] == 255 && j[1] == 255 && j[2]==255)){
                k[1] = 255;
              }
            }
            else if(mouseY<150){
              if(keyCode == SHIFT){
                k[2] = 0;
              }
              else if((k[3] == 255 || j[2] == 255 || k[1] == 255) && !(k[1] == 255 && j[1] == 255 && j[2]==255) && !(k[3] == 255 && j[2] == 255 && j[3]==255)){
                k[2] = 255;
              }
            }
            else if(mouseY<200){
              if(keyCode == SHIFT){
                k[3] = 0;
              }
              else if((k[4] == 255 || j[3] == 255 || k[2] == 255) && !(k[2] == 255 && j[2] == 255 && j[3]==255) && !(k[4] == 255 && j[3] == 255 && j[4]==255)){
                k[3] = 255;
              }
            }
            else if(mouseY<250){
              if(keyCode == SHIFT){
                k[4] = 0;
              }
              else if((k[5] == 255 || j[4] == 255 || k[3] == 255) && !(k[3] == 255 && j[3] == 255 && j[4]==255) && !(k[5] == 255 && j[4] == 255 && j[5]==255)){
                k[4] = 255;
              }
            }
            else if(mouseY<300){
              if(keyCode == SHIFT){
                k[5] = 0;
              }
              else if((k[6] == 255 || j[5] == 255 || k[4] == 255) && !(k[4] == 255 && j[4] == 255 && j[5]==255) && !(k[6] == 255 && j[5] == 255 && j[6]==255)){
                k[5] = 255;
              }
            }
            else if(mouseY<350){
              if(keyCode == SHIFT){
                k[6] = 0;
              }
              else if((k[7] == 255 || j[6] == 255 || k[5] == 255) && !(k[5] == 255 && j[5] == 255 && j[6]==255) && !(k[7] == 255 && j[6] == 255 && j[7]==255)){
                k[6] = 255;
              }
            }
            else if(mouseY<400){
              if(keyCode == SHIFT){
                k[7] = 0;
              }
              else if((k[8] == 255 || j[7] == 255 || k[6] == 255) && !(k[6] == 255 && j[6] == 255 && j[7]==255) && !(k[8] == 255 && j[7] == 255 && j[8]==255)){
                k[7] = 255;
              }
            }
            else if(mouseY<450){
              if(keyCode == SHIFT){
                k[8] = 0;
              }
              else if((k[9] == 255 || j[8] == 255 || k[7] == 255) && !(k[7] == 255 && j[7] == 255 && j[8]==255) && !(k[9] == 255 && j[8] == 255 && j[9]==255)){
                k[8] = 255;
              }
            }
            else if(mouseY<500){
              if(keyCode == SHIFT){
                k[9] = 0;
              }
              else if((k[10] == 255 || j[9] == 255 || k[8] == 255) && !(k[8] == 255 && j[8] == 255 && j[9]==255) && !(k[10] == 255 && j[9] == 255 && j[10]==255)){
                k[9] = 255;
              }
            }
            else if(mouseY<550){
              if(keyCode == SHIFT){
                k[10] = 0;
              }
              else if((k[11] == 255 || j[10] == 255 || k[9] == 255) && !(k[9] == 255 && j[9] == 255 && j[10]==255) && !(k[11] == 255 && j[10] == 255 && j[11]==255)){
                k[10] = 255;
              }
            }
            else if(mouseY<600){
              if(keyCode == SHIFT){
                k[11] = 0;
              }
              else if((j[11] == 255 || k[10] == 255) && !(k[10] == 255 && j[10] == 255 && j[11]==255)){
                k[11] = 255;
              }
           }
      }
    }
  }
}
          void cycleMatrix(int direction){
            if (direction==1){
              println("switchup");
              if (matrixDirection<4){
                matrixDirection++;
              } else {
                matrixDirection = 1;
              }
            } else if (direction==0){
              println("switchdown");
              if (matrixDirection>1){
                matrixDirection--;
              } else {
                matrixDirection = 4;
              }
            }
          }
          void goUp(){
            if(matrixDirection==1){
              y--;
            } 
            else if(matrixDirection==2){
              x++;
            }
            else if(matrixDirection==3){
              y++;
            }
            else if(matrixDirection==4){
              x--;
            }
          }
          
          void upCAssign(){
            if(matrixDirection==1){
              upC = get(x, y-26);
            } 
            else if(matrixDirection==2){
              upC = get(x+26, y);
            }
            else if(matrixDirection==3){
              upC = get(x, y+26);
            }
            else if(matrixDirection==4){
              upC = get(x-26, y);
            }
          }
          
          void rightCAssign(){
            if(matrixDirection==2){
              rightC = get(x, y+26);
            } 
            else if(matrixDirection==3){
              rightC = get(x-26, y);
            }
            else if(matrixDirection==4){
              rightC = get(x, y-27);
            }
            else if(matrixDirection==1){
              rightC = get(x+26, y);
            }
          }
