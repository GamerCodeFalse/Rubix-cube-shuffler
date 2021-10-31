class Move{
  float angle = 0;
  int x = 0;
  int y = 0;
  int z = 0 ;
  int dir = 0;
  boolean a = false;
  boolean f = false;
  
  Move(int x,int y, int z,int dir){
    this.x = x;
    this.y = y;
    this.z = z;
    this.dir = dir;
  }

  void start(){
    a = true;
    f = false;
    this.angle = 0;
  }
  boolean f(){
    return f;
  }
void update() {
    if (a) {
      angle += dir*speed;
      if (abs(angle) > HALF_PI) {
        angle = 0;
        a = false;
        f = true;
        if (abs(z) > 0) {
          turnZ(z, dir);
        } else if (abs(x) > 0) {
          turnX(x, dir);
        } else if (abs(y) > 0) {
          turnY(y, dir);
        }
      }
    }
  }
 Move copy() {
    return new Move(x, y, z, dir);
  }

  void reverse() {
    dir *= -1;
  }

}
