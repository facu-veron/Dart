void main(){
  //getters y setters
  final mySquare = Square(side:-10);
  
  //si comento esto
 // mySquare.side = -5;
  
  //aqui la propiedad area no existe. por lo tanto abajo lo definimos gon un getter
  print ('area: ${mySquare.area}');
}
class Square {
  // definimos lo que vamos a retornar con un double
   double _side;
  
  Square({required double side}):
    // las asserts nos ayudan a colocar las reglas de negocio.
    assert(side >= 0, 'side must be >= 0'),
  _side = side;
  double get area {
    return _side * _side;
  }
  
  set side(double value){
    print('setting new value $value');
    if(value < 0) throw 'Value must be >= 0';
    
    _side = value;

  }
  double calculateArea(){
    return _side * _side;
  }
}