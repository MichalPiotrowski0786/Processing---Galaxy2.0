class BLACKHOLE{
    
float r;
float mass;
float X;
float Y;
float d;

  BLACKHOLE(float x, float y,int r){
   this.X = x;
   this.Y = y;
   this.r = r;
   this.mass = 2*r;
  }
  
  void showBH(){
   push();
   translate(X,Y);
   noStroke();
   fill(0);
   circle(0,0,r);
   pop();
  }
  
  void attractor(STAR s){
    PVector force = PVector.sub(bh,s.position);
    
    d = force.mag();
    r = force.mag();
    
    d = constrain(d,1,12);
    r = constrain(d,0.1,3);
    
    force.normalize();
    
    float gF = (6.67 * mass * s.mass)/(d*d);
    float rF = (6.67 * mass * s.mass)/(r*r);
    
    force.rotate(rF);
    force.mult(-gF);
    
    s.position.add(force);
  }
}
