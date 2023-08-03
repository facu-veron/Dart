  void main() async {
    print("Inicio del programa");
   try{
      final value = await httpGet("https://github.com/");
      print ("Exito: $value" );
   } on Exception {
     print("Tenemos una excepcion");
   }

    catch(err){
     //print("Tenemos un error: $err" );
      print("Oop!! algo terrible paso: $err");
   }finally{
     print("Fin del try t catch");
   }

    print("Fin del programa");
  }

  Future<String> httpGet(String url) async {
    await  Future.delayed( const Duration(seconds: 1));

    throw Exception('No hay parametros en el url');

    //throw 'Error en la peticion';
    //return "Tenemos un valor de la peticion";

  }