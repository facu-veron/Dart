void main(){
  // Funciones
  // void no retorna nada
  print (greatEveryone());
  
  print ("Suma: ${addnumbers(10, 20)}");
  print ("Suma optional: ${addnumbersOptional(10)}");
  
  print(greatPerson(name:"Facundo", message: "Hi,"));
  
}

//String greatEveryone(){
//  return 'Hello everyone!';
//}

String greatEveryone() => "Hello everyone!";

//int addnumbers(int a, int b){
//  return a + b;
//}
// Obligatorios y posicionales.
int addnumbers(int a, int b) => a + b;

// a es obligatorio y b opcional.
int addnumbersOptional(int a, [int b = 0]) {
  // Valido si existe b
  return a + b;
}

// Nombres en parametros.

//{name, message} opcionales y con nombre
// required obliga a que le pasemos el name
String greatPerson({required String? name,String? message = "Hola, "}){
  return '$message Facundo';
}


