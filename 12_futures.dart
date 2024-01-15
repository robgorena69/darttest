void main(){
  print('Begin');
  httpGet('url').then(
                  (value){
                    print(value);
                  }
                )
    .catchError((err){
      print('Error: $err');
    });
  print('End');
  
}

Future<String> httpGet(String url){
  return Future.delayed(Duration(seconds: 2),(){
   // return 'Respuesta peticion http';
    throw 'Error en la peticion http';
  });
}

