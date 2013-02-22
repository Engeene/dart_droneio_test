import 'package:unittest/unittest.dart';
import 'package:droneio_test/carte.dart';

main(){
  
  // 5 di Fiori
  Carta a = new Carta(1,5);
  // 5 di Picche
  Carta b = new Carta(0,5);
  // Asso di Cuori
  Carta c = new Carta(3,14);
  // Asso di Cuori
  Carta d = new Carta(3,14);
   
  test('Valori dell carte',(){
    expect(true,a>b);
    expect(false,b>c);
    expect(true,c==d);
  });
  
  test('Nomi delle carte',(){
    expect('Asso di Cuori', equals(c.nomeCarta()));
  });
  
}