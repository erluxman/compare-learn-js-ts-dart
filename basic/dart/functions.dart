void main() {
  sayMyNameDart("Laxman");
  print(giveMyNameDart());
  print(giveMyProfileDart().name + " " + giveMyProfileDart().age.toString());
  PersonDart person = PersonDart("Laxman");
  print(person.greeting());
  person.foreachAndLymbda();

  //int integer = giveMyStringObjectTS() => Cannot do this
  var string = giveMyStringObjectTS();
  //string = 4; cannot do this
  print(string);
  print(checkArgumentType("Hey"));
  print(checkArgumentType(5));
  print(checkArgumentType(PersonDart("Laxman")));

  var abc = functionReturningFunctionDart();
  print(abc());
  print(add(5)(4));
}

//Functions -> Can be defined below the invocation
sayMyNameDart(String name) => print("Hey " + name);

giveMyNameDart() {
  return "Laxman";
}

String giveMyStringObjectTS() => "String type -> Laxman";

giveMyProfileDart() {
  return Profile("Laxman", 25);
}

checkArgumentType(arg) {
  if (arg is String) {
    return arg.toString() + " is String";
  } else if (arg is int) {
    return arg.toString() + " is int";
  } else if (arg is PersonDart) {
    return arg.toString() + " is person";
  }
}

class Profile {
  Profile(this.name, this.age);
  String name;
  int age;
}

class PersonDart {
  PersonDart(this.name);
  String name;
  List<String> names = ["hello", "world"];
  String greeting() {
    print("Hi! I'm " + this.name + ".");
    return "Greeted " + this.name + " Successfully";
  }

  foreachAndLymbda() {
    names.where((name) => name.length > 1).forEach((name) => print(name));
  }
}

String Function() lambdaReturningFunctionDart() {
  return () {
    //Returning lambda.
    return "From lambda inside function";
  };
}

functionReturningFunctionDart() {
  functionReturnedByFunctionDart() {
    return "From function inside function dart";
  }

  return functionReturnedByFunctionDart;
}

add(int a) {
  int innerFunction(b) {
    return a + b;
  }

  return innerFunction;
}
