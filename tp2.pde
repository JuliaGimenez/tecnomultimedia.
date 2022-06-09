//codigo
int cant=40;
int tam;
int pos;
float x;
float y;
float vx=7;
float vy=2;
float radio=10;
int dx=1;
int dy=-1;

void setup() {
  size(400, 400);
  background(0);
  tam=width/cant;
  ellipseMode(RADIUS);
  x=40;
  y=90;
}

void draw() {
  background(255); 

//Cuadrados del fondo
  float relleno=map(mouseX, 0, width, 0, 255);
  {
    pos++;
    {
      fill(0, relleno, 0);
      {
        for (int x=0; x<cant; x++) {
          for (int y=0; y<cant; y++) {
            if ((x+y)%2==0) {
              fill(255);
            } else {
              fill(0);
              rect(x*tam, y*tam, tam, tam);
            }
          }// Cuadrados del centro
          fill(0);
          rect(100, 100, 210, 210);  
          fill(255);
          rect(100, 100, 205, 205);
          fill(0);
          rect(100, 100, 200, 200);
          fill(255);
          rect(100, 100, 195, 195);
          fill(0);
          rect(100, 100, 190, 190);
          fill(255);
          rect(100, 100, 185, 185);
          fill(0);
          rect(100, 100, 180, 180);
          fill(255);
          rect(100, 100, 175, 175);
          fill(0);
          rect(100, 100, 170, 170);
          fill(255);
          rect(100, 100, 165, 165);
          fill(mouseX);
          rect(100, 100, 160, 160);
        }
      }
    }
  }
//Ellipse
  fill(255);
  ellipse(x, y, radio, radio);
  {
    x+= vx*dx;
    if ((x>300-radio)||(x<radio)) {
      dx=-dx;
    }
    y+=vx*dy;
    if ((y>300-radio)||(y<radio)) {
      dy=-dy;
    }
  }
}
void keyPressed() {
  if (key==' ');
  {
    x=40;
    y=90;
  }
}
