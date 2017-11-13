Star[] stars;
int numbers[] = new int[11];
int NumStars = 38;
int CurrentStar = 0;
int i;
float x, y;
float xborder, yborder;

void setup()
{
  size(800, 800);
  stars = new Star[NumStars];
  x = y = 0;
  xborder = 150;
  yborder = 50;
  
  for (i = 0; i < numbers.length; i++)
  {
    numbers[i] = i - 5;
  }
  
   for (int i = 0; i < stars.length; i++)
   {
   stars[i] = new Star();
   }
}

void draw()
{
  background(0);
  stroke(155, 0, 155);
  strokeWeight(2);
  textSize(25);
  fill(155, 0, 155);
  
  i = 0;
  for (x = xborder; x < width - xborder + 1; x = x + 50)
  {
    line(x, yborder, x, height - yborder);
    text(numbers[i], x - 10, yborder/2);
    i++;
  }
  
  i = 0;
  for (y = yborder; y < height - yborder + 1; y = y + 70)
  {
    line(xborder, y, width - xborder, y);
    text(numbers[i], xborder/2, y);
    i++;
  }
  
  //Display text
  
}