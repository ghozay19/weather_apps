

class Model {

  String _nama;


  String get nama => _nama;

  set nama(String value) {

    if(value == null) {
      throw new ArgumentError();
    }
    _nama = value;
  }


}