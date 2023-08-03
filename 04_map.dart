void main(){
  //Mapa: pares de valores
  final Map<String, dynamic> pokemon = {
    'name':'Ditto',
    'hp':100,
    'isAlive': true,
    'abilities': <String>['Impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  
  print(pokemon);
  //Para acceder a un elemento del mapa
  print('Name: ${pokemon['name']}');
  print('Sprites: ${pokemon['sprites']}');
  print('Back:  ${pokemon['sprites'][1]}');
  print('Front:  ${pokemon['sprites'][2]}');
    
}
