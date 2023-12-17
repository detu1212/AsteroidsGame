class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    //myColor = 255;
    myColor = color((int)(Math.random()*30)+222, (int)(Math.random()*30)+210, (int)(Math.random()*20));
  }
  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 5, 5);
  }
}
