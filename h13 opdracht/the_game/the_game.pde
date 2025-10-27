// values
boolean gameover = false;
int lives = 3;
int level = 0;
int score = 0;
int leftright = 10;
// 
Orb orb1;
hitbox hitbox1;
hitbox hitbox2;
blocker blocker1;
// 
void setup() {
  size(400, 400);
  orb1 = new Orb(25, 25, 15);
  hitbox1 = new hitbox(25, 25, 15, 15);
  hitbox2 = new hitbox(leftright, 370, 25, 10);
  blocker1 = new blocker(leftright, 370, 25, 10);
  
}
void draw() {
  background(255);
  fill(0);
  text("score = " + score, 10, 10);
  text("level = " + level, 10, 20);
  text("lives = " + lives, 350, 10);
  if (score == 10) {
    level = 1;
  } else if (score == 27) {
    level = 2;
  } else if (score == 40) {
    level = 3;
  } else if (score == 50) {
    level = 4;
  } else if (score == 60) {
    level = 5;
  } else if (score == 75) {
    level = 6;
  } else if (score == 85) {
    level = 7;
  } else if (score == 10) {
    level = 8;
  } else if (score == 110) {
    level = 9;
  }
  // hitbox detection
  float centerX1 = hitbox1.a + hitbox1.c / 2;
  float centerY1 = hitbox1.b + hitbox1.d / 2;
  float centerX2 = hitbox2.a + hitbox2.c / 2;
  float centerY2 = hitbox2.b + hitbox2.d / 2;
  float distance = dist(centerX1, centerY1, centerX2, centerY2);
  float collisionThreshold = (hitbox1.c + hitbox2.c) / 2;
  if (distance < collisionThreshold) {
    score++;
    orb1.y = 10;
    orb1.x = random(10, width - 10);
  }
  // balk movement
  if (keyPressed) {
    if (key == 'a' && leftright >= 10) {
      leftright -= 7.5;
    } else if (key == 'd' && leftright <= 360) {
      leftright += 7.5;
    }
  }
  // hitbox
  noFill();
  stroke(255, 255, 255);
  hitbox1.displayhitbox();
  hitbox1.a = orb1.x - 8;
  hitbox1.b = orb1.y - 5;
  hitbox2.displayhitbox();
  hitbox2.a = leftright;
  // blocker
  fill(0);
  stroke(0);
  blocker1.displayblocker();
  // ball
  noFill();
  fill(0, 255, 0);
  stroke(0, 255, 0);
  orb1.display();
  orb1.FALL();
//
  keyPressed();
if (lives == 0 && !gameover) {
  gameover = true;
  noLoop();  
  background(255, 0, 0);
  fill(0);
  textSize(16);
  text("GAME OVER Press R to restart", 100, 200);
  textSize(12);
  text("score = " + score, 10, 10);
    text("level = " + level, 10, 20);
    text("lives = " + lives, 350, 10);
}

  }

  

public class Orb {
  float x;
  float y;
  float diameter;
  float speed = 2;
  Orb(float x, float y, float diameter) {
    this. x = x;
    this. y = y;
    this. diameter = diameter;
  }
  public void FALL() {
    y += speed;
    if ( y >= 400) {
      y = 10;
      x = random(10, width - 80);
      lives --;
    }
    if (score == 10) {
      speed += 0.015;
    }
    if (score == 27) {
      speed += 0.008;
    }
    if (score == 40) {
      speed += 0.006;
    }
    if (score == 50) {
      speed += 0.006;
    }
    if (score == 60) {
      speed += 0.004;
    }
    if (score == 75) {
      speed += 0.004;
    }
    if (score == 85) {
      speed += 0.004;
    }
    if (score == 100) {
      speed += 0.004;
    }
    if (score == 110) {
      speed += 0.004;
    }
  }
  void display() {
    ellipse(x, y, diameter, diameter);
  }
}
class hitbox {
  float a;
  float b;
  float c;
  float d;
  hitbox(float a, float b, float c, float d) {
    this. a = a;
    this. b = b;
    this. c = c;
    this. d = d;
  }
  void displayhitbox() {
    rect(a, b, c, d);
  }
}
class blocker {
  float a;
  float b;
  float c;
  float d;
  blocker(float a, float b, float c, float d) {
    this. a = leftright;
    this. b = b;
    this. c = c;
    this. d = d;
  }
  void displayblocker() {
    rect(leftright, b, c, d);
  }
}
void keyPressed() {
  
  if (key == 'r' || key == 'R') {
    if (gameover) {
    
      lives = 3;
      score = 0;
      level = 0;
      gameover = false;
      orb1.y = 25;
      orb1.x = 25;
      orb1.speed = 2;
      leftright = 10;
      loop(); 
    }
  }
}



 
