import processing.sound.*;
SoundFile file;

//variables
int x = 1;
float z = 1.07;
int y = 1;
//Image variables
PImage sand;
PImage bg;
PImage grass;

void setup()
{ 
  size(700, 699, P3D);
//music file
  file = new SoundFile(this, "Mounika.mp3");
  file.play();
  
//to load the images
  bg = loadImage("x720-VJgg.jpg");
  grass = loadImage("grass2.png");
  sand = loadImage("rrr12x12_Pixel_Block_Sand_PRINT_FILE_mirror.png");

}

void draw() {

//background image
background(bg);

//torch base

fill (93, 65, 31);

//to give the shape depth
lights();

//Size and location for the torch base
pushMatrix();
translate(width /2, height /1.2, -10);
rotateY(0);
rotateX(0);
rotateZ(0.0);
box(17, 70, 17);
popMatrix();

//command to keep the torch base in the same position
 x = x + 0; 
  if (x > height)
   { 
     x = 0;
   }


//torch flame

fill (255, 185, 0);

//to give the shape depth
lights();

//Size and location for the torch flame
pushMatrix();
translate(width /2, height /1.3, -10);
rotateY(0);
rotateX(0);
rotateZ(0);
box(17);
popMatrix();

//command to keep the torch flame in the same position
 z = z + 0; 
  if (z > height)
   { 
     z = 0;
   }


//sandblock
fill(209, 195, 146);

//to give the shape depth
lights();

//Size and location for the sandblock
pushMatrix();
translate(width /2, y, -10);
box(110);
popMatrix();

//command to make the sandblock fall
 y = y + 7; 
  if (y > height/1.2) 
  { 
    y = 0;
  }
  
 //grass
  image(grass, 0 , -20);
  image(grass, 0 ,  0);

}
