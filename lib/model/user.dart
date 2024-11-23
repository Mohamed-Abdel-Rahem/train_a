// ignore_for_file: public_member_api_docs, sort_constructors_first
class Employee {
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
  Employee.withoutPicture({
    required this.name,
    required this.position,
    this.phone,
    this.email,
  });

  @override
  bool operator ==(Object other) {
    // this : is my object
    //other : is another object
    if (identical(this, other)) return true;
    if (other is Employee &&
        this.name == other.name &&
        this.email == other.email)
      return true;
    else {
      return false;
    }
  }

  @override
  //make the two objects equal in hash code
  int get hashCode {
    return name.hashCode ^ email.hashCode;
  }

  @override
  String toString() {
    return 'Employee(name: $name, position: $position, phone: $phone, email: $email, picture: $picture)';
  }
}

void chekEqual(Employee employee1, Employee employee2) {
  if (employee1.name == employee2.name &&
      employee1.position == employee2.position &&
      employee1.phone == employee2.phone &&
      employee1.email == employee2.email &&
      employee1.picture == employee2.picture) {
    print(true);
  } else {
    print(false);
  }
}
