Spaceship bob = new Spaceship();
Star[] sue = new Star[200];
ArrayList <Asteroid> brick = new ArrayList <Asteroid> ();
ArrayList <Bullet> shots = new ArrayList <Bullet> ();
public void setup()
{
  size(500,500);
  for(int i = 0; i < sue.length; i++)
  {
    sue[i] = new Star();
  }
  for(int i = 0; i < 20; i++) {
    brick.add(new Asteroid());
  }
 
}
public void draw()
{
   background(0);
   for(int i= 0; i< sue.length; i++) {
    sue[i].show();
   }
   bob.show();
   bob.move();
   for(int i = 0; i < brick.size(); i++) {
     brick.get(i).show();
     brick.get(i).move();
     float d = dist((float)bob.getX(), (float)bob.getY(), (float)brick.get(i).getX(),(float) brick.get(i).getY());
       if(d<30) {
         brick.remove(i);
         i--;
         break;
       }
       for(int j =0; j < shots.size(); j++) {
         shots.get(j).move();
         shots.get(j).show();
         float e = dist((float)brick.get(i).getX(),(float) brick.get(i).getY(), (float)shots.get(j).getX(),(float) shots.get(j).getY());
           if(e<20) {
             brick.remove(i);
             shots.remove(j);
              i--;
              j--;
             break;
           }
       }
   }
}

public void keyPressed() {
  if(key == '1')
  {
    bob.hyperspace();
  }
  if(key == '2') {
    bob.turn(-15);
  }
  if(key == '3') {
    bob.turn(15);
  }
  if(key == '4'){
    bob.accelerate(1);
  }
  if(key == 'b') {
    shots.add(new Bullet(bob));
  }
}
