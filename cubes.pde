color edd= color(0,0,0);



void setup()
{
 size(800, 600, P3D);
 smooth();
 
}

void draw()
{
 background(253, 4, 92);
 lights();
 //noStroke();
 
 translate(width/2-75, height/2-75,0);


 pushMatrix();


   rotateX(-radians(mouseY*3));
   rotateY(radians(mouseX*3));
   sphereDetail(30);
   for (int j = 0; j < 3; j++){
     translate(0, 0, j*50);
     for (int i = 0; i < 9; i++){
       translate(50*(i%3), 50*(i/3), 0);
       sphere(30);
       fill(edd);
       noStroke();
       lights();
       translate(-50*(i%3), -50*(i/3), 0);
     }
     translate(0, 0, -j*50);
   }
 popMatrix();
 

}