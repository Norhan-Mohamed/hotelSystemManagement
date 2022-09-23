class Guest {
  String? name;

  set Name(String? name) {
    name = name;
  }

  String? get Name {
    return name;
  }

  Guest1() {
    int price = 660;
    print(
        " Hello $name room of type standard .\n checked in at 2\\9\\2022. \n check out at 10\\9\\2022 ");
  }

  Guest2() {
    int price = 2900;
    print(
        "hello $name ,room of type deluxe .\n checked in at 5\\9\\2022. \n check out at 30\\9\\2022 ");
  }
}
