class Rect
{
  float _x;
  float _y;
  float _velocity;
  int _color;
  int score;

  Rect()
  {
    _velocity = random(1, 5);
    _color = (int)random(1, 5);

    if (_color == 1)
    {
      _x = 50;
      _y = random(-400, 0);
    }
    if (_color == 2)
    {
      _x = 200;
      _y = random(-400, 0);
    }
    if (_color == 3)
    {
      _x = 350;
      _y = random(-400, 0);
    }
    if (_color == 4)
    {
      _x = 500;
      _y = random(-400, 0);
    }
  }

  void draw()
  {
    if (_color == 1)
    {
      fill(432, 0, 78);
      stroke(432, 0, 78);
      if (keyPressed)
      {
        if (key == 'q')
        {
          _x = 50;
          _y = random(-400, 0);
        }
      }
    }
    if (_color == 2)
    {
      fill(123, 1, 6778);
      stroke(123, 1, 6778);
      if (keyPressed)
      {
        if (key == 'w')
        {
          _x = 200;
          _y = random(-400, 0);
        }
      }
    }
    if (_color == 3) // RED
    {
      fill(234, 234, 23);
      stroke(234, 234, 23);
      if (keyPressed)
      {
        if (key == 'e')
        {
          _x = 350;
          _y = random(-400, 0);
        }
      }
    }
    if (_color == 4) // GREEN
    {
      fill(124, 329, 4);
      stroke(124, 329, 4);
      if (keyPressed)
      {
        if (key == 'r')
        {
          _x = 500;
          _y = random(-400, 0);
        }
      }
    }

    rect(_x, _y, 100, 200);
    _y= _y + 2 *_velocity;
    fill(255, 255, 255);

    if (_y>800)
    {
      _y=random(-400, 0);
      score = score +1;
    }
  }

  void score()              //            HOW TO MAKE IT SO THE SCORE DOESN'T GET COVERED

  {
    textSize(80);
    text("Score: "+score, 50, 100);
  }
}
