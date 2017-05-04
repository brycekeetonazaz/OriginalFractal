public void setup(){
	size(1000,1000);
}

public void draw(){
	fractal(200,400,600,600);

	
}

public void fractal(int x, int y, float siz,float jiz){

	fill(x-siz*10,y-jiz * 5, (siz*5 + jiz*2.5-(x+y)));
	ellipse(x,y,siz,jiz);
	if (siz<10){
		ellipse(x,y,siz,jiz);

	}
	else{
		fractal(x+300,y-10,siz*0.5,jiz*0.5);
		fractal(x+100,y+90,siz*0.5,jiz*0.5);
		fractal(x+500,y+30,siz*0.5,jiz*0.5);
		fractal(x-300,y+10,siz*0.5,jiz*0.5);
		fractal(x-100,y-90,siz*0.5,jiz*0.5);
		fractal(x-500,y-30,siz*0.5,jiz*0.5);
	
	}
}
