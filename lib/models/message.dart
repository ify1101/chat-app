import 'package:flutter/cupertino.dart';
import 'package:untitled1/models/user.dart';

class Message{
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;
  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

 static List<Message> generateHomePageMessage() {
   return [
     Message(
         users[0], 'Hey there! What\'s up? Is everything going well?', '18:30'),
     Message(
         users[1], 'Can i call you back? I\'m in the hospital now.', '14:05'),
     Message(users[2], 'Yeah, do you have any good song to suggest?', '14:00'),
     Message(users[3], 'Hi! I went shopping today and i missed your message!',
         '13:35'),
     Message(users[4], 'I passed you on the ride into work, have you seen me?',
         '12:11'),
     Message(
         users[5], 'Hey there! What\'s up? Is everything going well?', '12:00'),
   ];
 }

 static List<Message> generateMessagesFromUser() {
   return [
     Message(
       users[0],
       'Hey there! What\'s up? Is everything going well?',
       '18:25'
     ),
     Message(
         me,
         'Nothing, just chilling and watching Youtube. What about you?',
         '18:26'
     ),
     Message(
         users[0],
         'Same here been watching Youtube for 5hours, despite having too much to do',
         '18:28',
       isContinue: true
     ),
     Message(users[0], 'It\'s hard to be productive this days..lol', '18:30'),
     Message(me, 'Yeah i know, i am in the same position', '18:32'),
     Message(users[0], 'lol', '18:35')
   ];
 }

}

var users = User.generateUsers();
var me = User(0, 'Ruize', 'Nile', 'assets/images/image1.jpg', Color(0xFFFFFF));