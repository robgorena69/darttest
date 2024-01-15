void main() async{ 
  print('Inicio Programa');
  try{
    final value = await httpGet2('url peticion');
  print(value);
    
  } on Exception catch(err){
    print('Tenemos una Excepcon $err'); 
  }catch (err){
    print('oops Tenermos un error:$err');
  } finally{
    print('fin del try catcjh');
  }
  
  print('Fin del Programa');
  
}



Future httpGet2(String url) async{
  await Future.delayed(const Duration(seconds: 3));
  
  throw Exception('No hay parametros url');
  // return 'Respuesta peticion';
}
  
