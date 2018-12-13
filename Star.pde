class Star //note that this class does NOT extend Floater
{
  private float x , y , size , opacity , change , iS , counter , sp , other;
  public Star(){
    x = (float)Math.random()*1000;
    y = (float)Math.random()*1000;
    opacity = (float)Math.random()*255;
    iS = size = (float)Math.random()*2+1;
    counter = 0;
    sp = (float)Math.random()+0.5;
    change = (float)Math.random()*4+0.2;
  }
  public void show(){
    if (counter >= 0 && counter < 100){
    opacity = opacity + change;
    counter = counter + sp*2.5;
    size = size + 0.05;
    }
     if (counter >= 100 && counter < 200){
    opacity = opacity - change;
    counter = counter + sp*2.5;
    size = size - 0.05;
    }
    if (counter > 200){
    counter = 0;
    size = iS;
    }
    fill(255,opacity);
    noStroke();
    ellipse(x,y,size,size);
  }
  public void reset(){
    x = (float)Math.random()*1000;
    y = (float)Math.random()*1000;
    opacity = (float)Math.random()*255;
    size = (float)Math.random()*2.2+1;
    counter = 0;
    sp = (float)Math.random()+0.5;
    change = (float)Math.random()*4+0.2;
  }
}