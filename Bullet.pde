class Bullet extends Floater {
  public Bullet(Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getDirectionX();
    myYspeed = bob.getDirectionY();
    myPointDirection = bob.getPointDirection();
    accelerate(.6);
    myColor = color(255);
  }
  public void show() {
    fill(myColor);   
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
