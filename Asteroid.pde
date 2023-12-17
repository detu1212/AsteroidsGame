class Asteroid extends Floater {
  private double rotSpeed = (Math.random()*2)+2;
  public Asteroid() {
    corners = (int)(Math.random()*3)+4;
    xCorners = new int[] {-11,7,15,6,-11,-20,-8,-3};
    yCorners = new int[] {-16,-16,0, 12, 20, -8,1};
    //xCorners = new int[] {-11,7,13,6,-11,-5};
    //yCorners = new int[] {-8,-8,0,10,8,0};
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (Math.random()*3);
    myXspeed = (Math.random()*3);
    myPointDirection = (Math.random()*360);
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public void show() {
    noFill();
    stroke(255);
    super.show();
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
