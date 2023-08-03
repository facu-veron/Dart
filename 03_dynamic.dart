void main(){
  // No voy a cambiar su valor.
  // Mas rapida la utilizacion de memoria.
  final String pokemon = 'Ditto';
  //Un entero que no va a cambiar.
  final int hp = 100;
  //Boolean
  final bool isAlive = true;
  //El null safety, o seguridad de nulos, 
  //es una característica introducida en Dart a partir de la versión 2.12 que tiene como objetivo
  //prevenir errores relacionados con el uso de valores nulos (null) en el código.
  
  //bool? isAlive. el isAlive puede ser null. con el operador ? le decimos que puede ser null
  //final abilities = ['impostor']; //listado de strings
  final List<String> abilities = ['Impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];
  
  // Evitar usar dynamic. dynamic por defecto es null. y su valor puede almacenar cualquier tipo de datos.
  dynamic errorMessage = "Hola";
  //print(pokemon);
  
  
  //String multi linea.
  print(""" 
  $pokemon 
  $hp 
  $isAlive
  $abilities
  $sprites
  $errorMessage""");
}
