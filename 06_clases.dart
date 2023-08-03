void main(){
  //Hero() es una funcion que llama al constructor
final wolverine =  Hero(name: "Logan",power: "Regeneracion");

  print(wolverine.name);
  print(wolverine.toString());
}


class Hero {
   String name;
   String power;
  
  //Hero(String paramName, paramPower){
    // This es opcional.
    //this.name = paramName;
    //this.power = paramPower;
  //}
  //Hero(String paramName, paramPower)
  //con los dos puntos le digo que en el momento que se crea la instancia yo quiero asignarle ciertos valores
    //:name = paramName,
  //power = paramPower;
  

  // con el this establecemos los valores inmediatamente en el constructor
  // sin tener que hacerlo mediante dos puntos("inicializacion controlada")
  Hero({ required this.name,  this.power = "Sin poder"});
  //@override estoy sobreescribiendo el metodo nativo.

  @override
  String toString(){
  return '$name - $power';
}


}