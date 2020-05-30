class STAR{
  
PVector position = new PVector();
  
int size;
float mass;

  STAR(int size,int i){
   this.mass = 1; 
   this.size = size;
     position.x = W/2+cos(i)*random(10,W/2);
     position.y = H/2+sin(i)*random(10,H/2);
  }

  void showSTAR(){
   float colDistance = PVector.dist(bh,position);
   push();
   translate(position.x,position.y);
     float col = map(colDistance,0,450,255,0);
     float alpha = map(colDistance,0,450,100,20);
   stroke(255,col,255-col,alpha*(mass*2));
   strokeWeight(size);
   point(0,0);
   pop();
  }
}
