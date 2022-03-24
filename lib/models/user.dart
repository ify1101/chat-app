import 'package:flutter/material.dart';

class User{
  num    id;
  String firstName;
  String lastName;
  String iconUrl;
  Color  bgColor;
  User(this.id, this.firstName,this.lastName, this.iconUrl, this.bgColor);
  static List<User> generateUsers() {
    return [
      User(1, 'Ceclify', 'Trujillo', 'assets/images/image1.jpg', Color(0xFFFDBEC8)),
      User(2, 'Alaya', 'Cordova', 'assets/images/image2.jpg', Color(0xFFFED6C4)),
      User(3, 'Eathan', 'Sheridan', 'assets/images/image3.jpg', Color(0xFFA8E4F2)),
      User(4, 'Justin', 'O/,More', 'assets/images/image4.jpg', Color(0xFFFFE5A7)),
      User(5, 'Komal', 'Orr', 'assets/images/image5.jpg', Color(0xFFC3C1E8)),
      User(6, 'Mike', 'John', 'assets/images/image6.jpg', Color(0xFFFD95A2)),

    ];
  }
}

