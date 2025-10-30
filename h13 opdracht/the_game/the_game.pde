boolean gameover = false;
float lives = 300;
int level = 0;
int score = 0;
int leftright = 10;
int orblimit = 3;
ArrayList<Orb> orbs;

hitbox hitbox1;
hitbox hitbox2;
blocker blocker1;

void setup() {

  size(400, 400);
  orbs = new ArrayList<Orb>();
  hitbox1 = new hitbox(25, 25, 15, 15);
  hitbox2 = new hitbox(leftright, 370, 25, 10);
  blocker1 = new blocker(leftright, 370, 25, 10);
}

void draw() {
  background(255);
  fill(0);
  text("score = " + score, 10, 10);
  text("level = " + level, 10, 20);
  text("lives = " + lives, 330, 10);

  if (score <= 10) level = 0;
  else if (score < 27) level = 1;
  else if (score < 40) level = 2;
  else if (score < 50) level = 3;
  else if (score < 60) level = 4;
  else if (score < 75) level = 5;
  else if (score < 85) level = 6;
  else if (score < 100) level = 7;
  else if (score < 110) level = 8;



  if (keyPressed) {
    if (key == 'a' && leftright >= 10)
      leftright -= 10.5;
    else if (key == 'd' && leftright <= 360)
      leftright += 10.5;
  }
  hitbox2.a = leftright;
  fill(0);
  stroke(0);
  blocker1.displayblocker();

  for (int i = 0; i < orbs.size(); i++) {
    Orb o = orbs.get(i);
    hitbox1.a = o.x - o.diameter / 2;
hitbox1.b = o.y - o.diameter / 2;
hitbox1.c = o.diameter;
hitbox1.d = o.diameter;

    float centerX1 = hitbox1.a + hitbox1.c / 2;
    float centerY1 = hitbox1.b + hitbox1.d / 2;
    float centerX2 = hitbox2.a + hitbox2.c / 2;
    float centerY2 = hitbox2.b + hitbox2.d / 2;
    float distance = dist(centerX1, centerY1, centerX2, centerY2);
    float collisionThreshold = (hitbox1.c + hitbox2.c) / 2;

    if (distance < collisionThreshold) {
      if (o.diameter <= 10) {
        score += 2;
      } else score++;
      o.reset();
    }


    o.FALL();
    fill(0, 255, 0);
    stroke(0, 255, 0);
    o.display();
  }
  if (lives == 0 && !gameover) {
    gameover = true;
    noLoop();
    background(255, 0, 0);
    fill(0);
    textSize(16);
    text("GAME OVER - Press R to restart", 70, 200);
    textSize(12);
    text("score = " + score, 10, 10);
    text("level = " + level, 10, 20);
    text("lives = " + lives, 330, 10);
  }

  if (orbs.size() < orblimit) {
    orbs.add(new Orb(random(10, width - 10), random(5, 100), 15));
  }
}
public class Orb {
  float x, y, diameter, speed = 1.3;
  Orb(float x, float y, float diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
  }
  public void FALL() {
    y += speed;
    if (y >= height) {
      y = 10;
      x = random(10, width - 10);
      lives--;
    }
    if (score == 10) speed += 0.006;
    if (score == 27) speed += 0.006;
    if (score == 40) speed += 0.006;
    if (score == 50) speed += 0.004 ;
    if (score == 60) speed += 0.002;
    if (score == 75) speed += 0.002;
    if (score == 85) speed += 0.001;
    if (score == 100) speed += 0.001;
    if (score == 110) speed += 0.001;

    if (diameter <= 10) speed = 1.8;
  }
  void reset() {
    y = random(10, 100);
    x = random(10, width - 10);
    diameter = random(5, 35);
  }
  void display() {
    ellipse(x, y, diameter, diameter);
  }
}
class hitbox {
  float a, b, c, d;
  hitbox(float a, float b, float c, float d) {
    this.a = a;
    this.b = b;
    this.c = c;
    this.d = d;
  }
  void displayhitbox() {
    rect(a, b, c, d);
  }
}
class blocker {
  float a, b, c, d;
  blocker(float a, float b, float c, float d) {
    this.a = a;
    this.b = b;
    this.c = c;
    this.d = d;
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
      leftright = 10;
      orbs.clear();

      loop();
    }
  }
}
