void main() async{ 
  print('Inicio Programa');
  try{
    final value = await httpGet2('url peticion');
  print(value);
    
  } catch (err){
    print('Tenermos un error:$err');
  }
  
  print('Fin del Programa');
  
}



Future httpGet2(String url) async{
  await Future.delayed(const Duration(seconds: 3));
  
  throw 'Error en la peticion';
  // return 'Respuesta peticion';
}
  

