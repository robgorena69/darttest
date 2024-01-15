void main() { 

  emitNumbers().listen( (valor) {
    print('Stream valor $valor');
  });
}


Stream<int> emitNumbers(){
  
  return Stream.periodic( const Duration(seconds:1),(value){
    return value;
  }).take(5);
}

