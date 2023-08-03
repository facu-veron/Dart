void main(){
  // Funciones
  // void no retorna nada
  print (greatEveryone());
  
  print ("Suma: ${addnumbers(10, 20)}");
  print ("Suma optional: ${addnumbersOptional(10)}");
  
  
  
}

//String greatEveryone(){
//  return 'Hello everyone!';
//}

String greatEveryone() => "Hello everyone!";

//int addnumbers(int a, int b){
//  return a + b;
//}

int addnumbers(int a, int b) => a + b;

// a es obligatorio y b opcional [] no debe tener un valor null.
int addnumbersOptional(int a, [int b = 0]) {
  // Valido si existe b
  return a + b;
}

