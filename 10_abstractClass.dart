void main(){
  //Clases abstractas son moldes que nos sirven para
  //crear otros moldes.
  //Sirve solo para eso. No se puede instanciar.
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  
  print("Wind: ${chergePhone(windPlant)}");
  print("Nuclear: ${chergePhone(nuclearPlant)}");

}


double chergePhone(EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception("Not enough energy");
  }
  return plant.energyLeft - 10;
}

enum PlantType {
  nuclear, wind, water
}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // Nuclear, Wind y Water.
  
  
  EnergyPlant({required this.energyLeft, required this.type});
  void consumeEnergy(double amount);
  
}


// Extends (general) o implements(especifico)

// Al extender de la clase padre nuestra clase hija hereda
// el constructor y los atributos con los metodos. 
class WindPlant extends EnergyPlant{
  WindPlant({required double initialEnergy})
  : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
}
// Cuando extendemos heredamos del padre

// implements no obliga a implementar explicitamente cada uno de los overrides
// cuando queremos extender solo un metodo
class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }
} 