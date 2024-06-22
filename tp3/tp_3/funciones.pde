void grilla( int mod) {
  if (mouseX<400) {
    for ( int i = 0; i< 804; i+=mod ) {  //mod = tamaño de celda
      for ( int j = 0; j < 400; j+=mod ) {  //mod = tamaño de celda
        //println( i + " / " + j);
        if ((i+j)%2==0) {
          fill(color2);
        } else {
          fill(color1);
        }
        rect( i, j, mod, mod );
      }
    }
  }
  if (mouseX >400) {
    for ( int i = 0; i < 804; i+=mod) { // tam =tamaño de celda
      for (int j = 0; j < 400; j +=mod) {
        if ((i+j)%2==0) {
          fill(color1);
        } else {
          fill(color2);
        }
        float mov =map(mouseX+mouseY, 800, 700, 0, 100);
        rect( i, j, mod+mov, mod+mov );
      }
    }
  }
}

void circulos(int tam) {
  if (mouseX<400) {
    for ( int h = 0; h < cant; h++) { // tam =tamaño de celda
      for (int t = 0; t < cant; t ++) {
        if ((h+t)%2==0) {
          fill(color1);
        } else {
          fill(color2);
        }
        ellipse(h*tam+tam/2, t*tam+tam/2, tam, tam);
      }
    }
  }
  if (mouseX>400) {
    for ( int h = 0; h < cant; h++) { // tam =tamaño de celda
      for (int t = 0; t < cant; t ++) {
        if ((h+t)%2==0) {
          fill(color1);
        } else {
          fill(color2);
        }
        float mov =map(mouseX+mouseY, 800, 700, 0, 100);
        ellipse(h*tam+tam/2, t*tam+tam/2, tam+mov, tam+ mov);
      }
    }
  }
}
