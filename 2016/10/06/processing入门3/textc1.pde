PGraphics pg;
color PGRAPHICS_COLOR = color(0);

void setup() {
  size(1100, 400, JAVA2D);
  background(255);
  smooth();
  //font = loadFont("Arial-BoldMT-48.vlw");
  //blendMode(ADD);
 
  // create and draw to PPraphics (see Getting Started > UsingPGraphics example)
  pg = createGraphics(width, height, JAVA2D);
  pg.beginDraw();
//  pg.textFont(font);
  pg.textSize(200);
  pg.textAlign(CENTER, CENTER);
  pg.fill(PGRAPHICS_COLOR);
  pg.text("NINGHUA", pg.width/2, pg.height/2);
  pg.endDraw();
   
}

void draw() {
//background(255);  
for (int i = 0; i < 9000; i++){  

strokeWeight (random (0.25, 0.7));
float x1 = random(width);
float y1 = random(height);
float x2 = x1+random(-50,50);
float y2 = y1+random(-50,50);
color c1 = pg.get( int(x1), int(y1) );
color c2 = pg.get( int(x2), int(y2) );
if ( (c1 == PGRAPHICS_COLOR) && (c2 == PGRAPHICS_COLOR) ) {
  stroke (100, 100); 
  line(x1,y1,x2,y2);
}
else{stroke (255, 12); 
  line(x1,y1,x2,y2);}
}
}