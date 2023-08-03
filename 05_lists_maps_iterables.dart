void main(){
  //List [], Iterables () y Sets
  
  // Iterable es un tipo de datos.
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,9,10];
  
  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  // Equivalente
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  
  print("Iterable: $reversedNumbers");
  print("List: ${reversedNumbers.toList()}");
  //No puede contener valores duplicados.
  print("Set: ${reversedNumbers.toSet()}");
  
  // where metodo de listas que permite filtrar datos.
  final numbersGreaterThan5 = numbers.where((int num){
    return num > 5;
  });
  
  print ('>5: $numbersGreaterThan5');
 
}
