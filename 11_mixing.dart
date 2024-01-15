abstract class Animal{
  
}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal{}

abstract class Pez extends Animal{}


  mixin class Volador{
  void volar() => print('Im flying;');
  
}

  mixin class Caminante{
  void caminar() => print('Im walking;');
  
}

 mixin Nadador{
  void nadar() => print('Im swining;');
  
}

class Delfin extends Mamifero with Nadador{}
class Gato extends Mamifero with Caminante{}
class Murcielago extends Mamifero with Volador, Caminante{}

class Paloma extends Ave with Caminante,Volador{} 

class Pato extends Ave with Nadador,Caminante,Volador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Volador{}

void main(){
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final donald = Pato();
  donald.caminar();
  donald.nadar();
  donald.volar();
}



