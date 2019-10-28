/*

  This is a game where you have to try and sustain
  the lowest possible score for the longest amount 
  of time. The colors red, purple, yellow, and green 
  disappear by pressing 'q', 'w', 'e', and 'r' 
  accordingly.

*/


Rect rectangle[] = new Rect[10];
Rect one = new Rect();

void setup()
{
  size(650, 800);
  
  for (int i=0; i < 10; i++)
  {
    rectangle[i] = new Rect();
  }
}
void draw()
{
  background(0,0,0);
  one.draw();
  
  for (int i=0; i < 10; i++)
  {
    rectangle[i].draw();
    rectangle[i].score();
  }
}
