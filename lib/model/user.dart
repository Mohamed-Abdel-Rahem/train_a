// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Employee extends Equatable {
  String name;
  String position;
  String? phone;
  String? email;
  String? picture;

  //Default constructor
  Employee({
    required this.name,
    required this.position,
    this.phone,
    this.email,
    this.picture,
  });

  //Named constructor

  @override
  // TODO: implement props
  List<Object?> get props => [name, email];
}
