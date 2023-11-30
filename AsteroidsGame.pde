Spaceship spaceship;
Asteroid[] asteroids;

void setup() {
  size(800, 600);
  spaceship = new Spaceship();
  
  // Create an array of asteroids
  asteroids = new Asteroid[5];
  for (int i = 0; i < asteroids.length; i++) {
    asteroids[i] = new Asteroid();
  }
}

void draw() {
  background(0);
  
  // Move and display the spaceship
  spaceship.move();
  spaceship.display();
  
  // Move and display asteroids
  for (Asteroid asteroid : asteroids) {
    asteroid.move();
    asteroid.display();
  }
}

void keyPressed() {
  // Spaceship controls
  if (keyCode == LEFT) {
    spaceship.turnLeft();
  } else if (keyCode == RIGHT) {
    spaceship.turnRight();
  } else if (keyCode == UP) {
    spaceship.accelerate();
  }
}

void keyReleased() {
  // Stop spaceship movement when keys are released
  if (keyCode == LEFT || keyCode == RIGHT || keyCode == UP) {
    spaceship.stop();
  }
}

// Spaceship class
class Spaceship {
  float x, y;
  float angle;
  float speed;
  boolean isMoving;

  Spaceship() {
    x = width / 2;
    y = height / 2;
    angle = 0;
    speed = 0;
    isMoving = false;
  }

  void move() {
    if (isMoving) {
      x += speed * cos(radians(angle));
      y += speed * sin(radians(angle));
      // Perform boundary check if needed
    }
  }

  void turnLeft() {
    angle -= 5;
  }

  void turnRight() {
    angle += 5;
  }

  void accelerate() {
    isMoving = true;
    speed = 2; // Adjust the speed as needed
  }

  void stop() {
    isMoving = false;
    speed = 0;
  }

  void display() {
    // Draw spaceship based on its position and angle
    pushMatrix();
    translate(x, y);
    rotate(radians(angle));
    fill(255);
    triangle(-10, -10, 10, -10, 0, 20);
    popMatrix();
  }
}

// Asteroid class
class Asteroid {
  float x, y;
  float speedX, speedY;

  Asteroid() {
    x = random(width);
    y = random(height);
    speedX = random(-2, 2);
    speedY = random(-2, 2);
  }

  void move() {
    x += speedX;
    y += speedY;
    // Perform boundary check if needed
  }

  void display() {
    fill(150);
    ellipse(x, y, 20, 20);
  }
}
