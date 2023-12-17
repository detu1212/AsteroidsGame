class Spaceship extends Floater  
{  
    public Spaceship() {
      corners = 4;
      xCorners = new int[] {-8,16,-8,-2};
      yCorners = new int[] {-8,0,8,0};
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = (Math.random()*2);
      myYspeed = (Math.random()*2);
      myPointDirection = Math.random()*2;
      myColor = color(240,0,44);
    }
    public void show () {            
      fill(myColor);  
      stroke(myColor);
      super.show();
     }
    public double getX() {
      return myCenterX;
    }
    public void setX(int x) {
      myCenterX = x;
    }
    public double getY() {
      return myCenterY;
    }
     public void setY(int y) {
      myCenterY = y;
    }
    public void setPointDirection(int degrees) {
      myPointDirection = degrees;
    }
    public double getPointDirection() {
      return myPointDirection;
    }
    public void setDirectionX(double x){
      myXspeed = x;
    }
    public double getDirectionX() {
      return myXspeed;
    }
    public void setDirectionY(double y){
      myYspeed = y;
    }
    public double getDirectionY() {
      return myYspeed;
  }
  public void hyperspace() {
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*250);
      myCenterY= (int)(Math.random()*250);
      myPointDirection = 0;
    }
}
