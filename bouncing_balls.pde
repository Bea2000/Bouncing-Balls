int pelotas = 100;
float[] posx = new float[pelotas];
float[] posy = new float[pelotas];
color[] colores = new color[pelotas];
int velx[] = new int[pelotas];
int vely[] = new int[pelotas];
int dimx = 600;
int dimy = 600;
int dimpelota = 50;

void setup(){
  size(600,600);
  noStroke();
  frameRate(30);
  for (int i =0; i < pelotas; i++){
    posx[i] = random(0 + dimpelota,width - dimpelota);
    posy[i] = random(0 + dimpelota, height - dimpelota);
    colores[i] = color(random(0,255),random(0,255),random(0,255));
    velx[i] = (int)random(1,5);
    vely[i] = (int)random(1,5);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < pelotas; i++){
    posx[i] += velx[i];
    posy[i] += vely[i];
    
    if (posy[i] > dimy-dimpelota/2 || posy[i] < dimpelota/2){
      vely[i] = -1 * vely[i];
      colores[i] = color(random(0,255),random(0,255),random(0,255));
    }
    if (posx[i] > dimx-dimpelota/2 || posx[i] < dimpelota/2){
      velx[i] = -1 * velx[i];
      colores[i] = color(random(0,255),random(0,255),random(0,255));
    }
    fill(colores[i]);
    ellipse(posx[i],posy[i], dimpelota, dimpelota);
   }
  }
