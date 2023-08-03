void main(){
  emitNumbers().listen((value){
    print("Stream value: $value");
  });
}

Stream <int> emitNumbers(){
  
  // Para que funcionen los Strams alguen debe estar escuchando
  return Stream.periodic(const Duration(seconds:1), (value){
  // print("Desde periodic $value");
    return value;
    // Controla las emisiones
  }).take(5);
}