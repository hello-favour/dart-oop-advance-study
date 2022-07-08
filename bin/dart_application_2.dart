void main() {
  int score = 0;
  String name = "flutter";
  String? pages;

  if (score != 2) {
    print("score is true");
  }

  if (name.isNotEmpty) {
    print("name is empty");
  }

  if (pages == null) {
    print("pages is null");
  }

  List<int> number = [
    1,
    2,
    3,
    5,
  ];
  // print(number[0]);
  print(number[number.length]);
}

void maindev() {
  int a = 3;
  int b = 3;
  print(b == b);
  print(identical(a, b));

  var List = [1, 2.3, "flutter"];

  var f = List[0] as int;
  var g = List[1] as double;
  var d = List[2] as String;

  int h = 5;
  if (h.isEven) {
    print("$h is like even!");
  } else {
    print("$h is even!");
  }
  h.isEven ? print("$h is even! number") : print("$h is not even! number");

  var list = [1, 3, 5, 6, 2]..forEach((element) {
      print("$element in list");
    });
  for (int i = 0; i < list.length; i += 2) {
    print(list[i]);
  }

  var Condition = "loud";

  switch (Condition) {
    case "Sunny":
      print("its sunny");
      break;
    case "loud":
      print("its loud");
      break;
    default:
  }
}

void mainRun() {
  var dog = Dog();
  print(dog.color);

  var secondary = Secondary();
  secondary.study();

  var local = Address("green");

  var ororo = Ronaldo();
  ororo.keeper();
  ororo.player();
}

class Animal {
  String color = "white";
}

class Dog extends Animal {
  String Color = "red";
  String name = "paul";
}

abstract class School {
  void study();
}

class Secondary extends School {
  void study() {
    print("i study daily");
  }
}

class State {
  int? id;

  State(int id) {
    print("Port Harcourt");
  }
}

class Address extends State {
  String? color;
  Address(String color) : super(10) {
    print("Eliozu");
  }
}

class Ball {
  void player() {
    print("best");
  }
}

class Soccer {
  void keeper() {
    print("best");
  }
}

class Ronaldo implements Soccer, Ball {
  void player() {
    print("best");
  }

  void keeper() {
    print("goat");
  }
}

// this MIXINS
void mainCode() {
  Musician musician = Musician();
  musician.perform();
}

class Perfomer {
  void perform() {
    print("performing");
  }
}

mixin Drummer {
  void drumming() {
    print("playing the drum");
  }

  void perform() {
    drumming();
  }
}

mixin keyboard {
  void keyboarding() {
    print("playing the keyboard");
  }

  void perform() {
    keyboarding();
  }
}

class Musician extends Perfomer with keyboard, Drummer {}
