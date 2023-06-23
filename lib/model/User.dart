import 'dart:ffi';

class User {
  String? name;
  String? email;
  int? sexo;
  String? telefone;
  double? peso;
  double? altura;

  User({this.sexo, this.email, this.name, this.telefone, this.peso});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'sexo': sexo,
      'telefone': telefone,
      'peso': peso,
      'altura': altura,
    };
  }

  factory User.fromMap(map) {
    return User(
        name: map['name'],
        email: map['email'],
        sexo: map[' sexo'],
        telefone: map['telefone'],
        peso: map['peso']);
  }
}
