
public void setup()
{
size(600, 600);
background(255, 255, 255);
}
public void draw()
{
  int xSize = 200;
  int ySize = 200;
//  frameRate(60);
  noFill();
// that one makes differnt rings ^
  fractal (300, 300 , xSize, ySize);
}

public void fractal(int x, int y, int xLength, int yLength) 
{
  if (xLength <= 10){
    ellipse (x,y, xLength, yLength);
  }
  else {
  if(mousePressed == true){   
  fill( (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
}
  ellipse (x,y, xLength, yLength);


  fractal(x , y , xLength /2, yLength /2);
  fractal(x/2 , y/2 , xLength /2, yLength /2);
  fractal((x + x/2) , (y/2) , xLength /2, yLength /2);
  fractal(x/2 , (y + y/2) , xLength /2, yLength /2);
  fractal((x + x/2) , (y  + y/2), xLength /2, yLength /2);
}
}
