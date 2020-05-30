final int W = 900;
final int H = 900;

int size = 10000;

BLACKHOLE b;

ArrayList<STAR> s = new ArrayList();

float bhX = W/2;
float bhY = H/2;
PVector bh = new PVector(bhX,bhY);

void settings(){
  size(W,H,P2D);  
}

void setup(){
  
   for(int i = 0; i < size; i++){
    s.add(new STAR(2,i));
   }  
    
  b = new BLACKHOLE(bhX,bhY,3);
}

void draw(){
background(10);  

    for(int i = 0; i < s.size(); i++){
      
     s.get(i).showSTAR();
     b.attractor(s.get(i));
     
     if(b.d < b.r){
       s.remove(i);
     }
    }
    
b.showBH();
}
