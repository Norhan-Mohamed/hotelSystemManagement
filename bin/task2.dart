import 'dart:io';

import 'booking.dart';
import 'guests.dart';

void main(List<String> arguments) {
  print("welcome to our hotel!");
  print("choose 1 for guests or 2 for new guest");
  int? ch1 = int.parse(stdin.readLineSync()!);
  if (ch1 == 1) {
    print("please enter your name");
    var guest = Guest();
    guest.name = stdin.readLineSync();

    if (guest.name == 'norhan') {
      guest.Guest1();
      print(" do you want to check out?");
      String? checkout = stdin.readLineSync();
      if (checkout == 'yes') {
        var norhan = HotelBooking();
        norhan.checkOutForStandard(660);
      }
    } else if (guest.name == 'nadia') {
      guest.Guest2();
      print(" do you want to check out ?");
      String? checkout = stdin.readLineSync();
      if (checkout == 'yes') {
        var nadia = HotelBooking();
        nadia.checkOutForDeluxe(2900);
      }
    } else {
      print("invalid guest name");
    }
  } else if (ch1 == 2) {
    var guest2 = HotelBooking();
    print("WELCOME TO OUR HOTEL");
    print("please enter your name");
    guest2.Name = stdin.readLineSync();
    print("enter your id");
    guest2.id = int.parse(stdin.readLineSync()!);
    print("enter your phone number");
    guest2.phNumber = int.parse(stdin.readLineSync()!);
    print("what type of room do you want?");
    String? TYPE = stdin.readLineSync();

    if (TYPE == 'standard') {
      int price;
      print(
          "How many people are in this room? \n we allow a maximum of 7 people.");
      int? people = int.parse(stdin.readLineSync()!);
      print("your check in date");
      int? day = int.parse(stdin.readLineSync()!);
      print("month");
      int? month = int.parse(stdin.readLineSync()!);
      print("year");
      int? year = int.parse(stdin.readLineSync()!);
      print("How many days you will book the room?");
      int? days = int.parse(stdin.readLineSync()!);
      if (people < 2 && people > 0) {
        price = 100;
        for (int i = 2; i <= days; i++) {
          price += 70;
        }
        print("YOUR TOTAL COST IS $price");
      } else if (people < 7 && people >= 2) {
        int price = 250;
        for (int i = 2; i <= days; i++) {
          price += 100;
        }
        print(
            "YOUR TOTAL COST IS $price .\n your check in date is $day / $month / $year \n your check out date will be ${day + days}/$month/$year .");
      }
      guest2.checkInForStandard();
      guest2.info();
    } else if (TYPE == 'deluxe') {
      print(
          "How many people are in this room? \n we allow a maximum of 7 people.");
      int? people = int.parse(stdin.readLineSync()!);
      print("your check in date");
      int? day = int.parse(stdin.readLineSync()!);
      int? month = int.parse(stdin.readLineSync()!);
      int? year = int.parse(stdin.readLineSync()!);
      print("How many days you will book the room?");
      int? days = int.parse(stdin.readLineSync()!);
      if (people < 2 && people > 0) {
        int price = 300;
        for (int i = 2; i <= days; i++) {
          price += 100;
        }
        print(
            "YOUR TOTAL COST IS $price.your check in date is $day / $month / $year \n your check out date will be ${day + days}/$month/$year . ");
      } else if (people < 7 && people >= 2) {
        int price = 500;
        for (int i = 2; i <= days; i++) {
          price += 200;
        }
        print("YOUR TOTAL COST IS $price");
      }
      guest2.checkInForDeluxe();
      guest2.info();
    } else {
      print("invalid choice ");
    }
  }
}
