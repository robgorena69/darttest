void main() {

  Square cuadrado = Square(lado: -5);
  print(cuadrado.calcularArea());
  
}


class Square{
  double _lado = 0;
  Square({required double lado})
    : assert(lado >0,'lado debe ser mayor a cerp'),
      _lado = lado;
  

  double calcularArea(){
    return _lado*_lado;
  }
}