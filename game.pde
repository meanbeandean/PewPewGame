void game() {
  background(green);
  
  // Game Engine
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.isDead() ) {
      objects.remove(i);
    }
    else {
      i++;
    }
  }
  // Spawn Code
  if (frameCount % 30 ==0)  {         // modulus or mod
    objects.add(new Enemy() );
  }

}

void gameClicks() {
 
}
