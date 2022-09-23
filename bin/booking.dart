import 'dart:io';

class HotelBooking {
  String? Name;
  int? phNumber;
  int? id;
  String? roomType;
  int Stand_room = 300;
  int Deluxe_room = 300;
  int bookedRooms = 2;
  int? price;
  int? checkInDate;
  int? checkOutDate;

  set Name1(String? name) {
    Name = name;
  }

  String? get Name1 {
    return Name;
  }

  set PhNum(int? phNumber) {
    phNumber = phNumber;
  }

  int? get PhNum => phNumber;

  set Id(int? id) => id = id;

  int? get Id => id;

  set checkinDate(int? checkInDate) => checkInDate = checkInDate;

  int? get checkinDate => checkInDate;

  set checkoutDate(int? checkOutDate) => checkOutDate = checkOutDate;

  int? get checkoutDate => checkOutDate;

  set RoomType(String? roomType) => roomType = roomType;

  String? get RoomType => roomType;

  checkInForStandard() {
    Stand_room = Stand_room - 1;
    print("WELCOME $Name.\n YOUR ROOM IS BOOKED. \n  ");
  }

  checkInForDeluxe() {
    Deluxe_room = Deluxe_room - 1;
    print(" WELCOME $Name. \n YOUR ROOM IS BOOKED \n ");
  }

  info() {
    print(
        "there are still  ${Stand_room - 1} standard room available and ${Deluxe_room - 1} deluxe room.");
  }

  checkOutForStandard(price) {
    print("enter your name");
    Name = stdin.readLineSync();
    print("have you exceeded the number of booking days?");
    String? answer = stdin.readLineSync();
    if (answer == 'yes') {
      print("a night costs 70  for the standard and 100 for the deluxe");
      print("How many extra night?");
      int? extraNight = int.parse(stdin.readLineSync()!);
      if (extraNight > 0 && extraNight < 2) {
        price += 70;
      } else if (extraNight > 1) {
        for (int i = 2; i <= extraNight; i++) {
          price += 70;
        }
        print("YOUR TOTAL COST IS $price");
      }
    } else if (answer == 'no') {
      print("there is no cost over the number of days");
    }
    print("Have you requested additional services? ");
    String? add_servce = stdin.readLineSync();
    if (add_servce == 'yes') {
      print("how many?");
      int? addServ = int.parse(stdin.readLineSync()!);
      for (int i = 1; i <= addServ; i++) {
        price += 40;
      }
    }
    print("your total cost = $price");
  }

  checkOutForDeluxe(price) {
    print("enter your name");
    Name = stdin.readLineSync();
    print("have you exceeded the number of booking days?");
    String? answer = stdin.readLineSync();
    if (answer == 'yes') {
      print("a night costs 70  for the standard and 100 for the deluxe");
      print("How many extra night?");
      int? extraNight = int.parse(stdin.readLineSync()!);
      if (extraNight > 0 && extraNight < 2) {
        price += 100;
      } else if (extraNight > 1) {
        for (int i = 2; i <= extraNight; i++) {
          price += 100;
        }
        print("YOUR TOTAL COST IS $price");
      }
      print("Have you requested additional services? ");
      String? add_servce = stdin.readLineSync();
      if (add_servce == 'yes') {
        print("how many?");
        int? addServ = int.parse(stdin.readLineSync()!);
        for (int i = 1; i <= addServ; i++) {
          price += 60;
        }
      }
      print("your total cost = $price");
    }
  }
}
