library carte;

class Carta{
  
  int v,s;

  List<String> nomiSemi = ['Picche','Fiori','Quadri','Cuori'];
  List<String> nomiValori = ['Nessuno','Nessuno', '2', '3', '4', '5', '6', '7','8', '9', '10', 'Fante', 'Regina', 'Re','Asso'];

  Carta(this.s,this.v) {
    if ( this.v < 2){
      throw "Il valore non può essere inferiore a 2.";
    }
  }

  String nomeCarta(){
    return '${nomiValori[this.v]} di ${nomiSemi[this.s]}';
  }

  String toString() => this.nomeCarta();


  operator >(Carta altra) {
    if ( this.v > altra.v){
    return true;
  }
  else if (this.v == altra.v){
    if ( this.s > altra.s){
      return true;
      }
    }
  return false;
  }

  operator <(Carta altra) {
    if ( this.v < altra.v){
    return true;
  }
  else if (this.v == altra.v){
    if ( this.s < altra.s){
      return true;
      }
    }
  return false;
  }

  operator ==(Carta altra) {
    if (this.v == altra.v && this.s == altra.s) return true;
    return false;
  }
}
