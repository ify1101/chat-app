import 'package:flutter/material.dart';
import 'package:untitled1/constants/colors.dart';
import 'package:untitled1/screens/home/widgets/messages.dart';
import 'package:untitled1/screens/home/widgets/recent_contacts.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kPrimary,
      body: Container(
        padding: EdgeInsets.only(top: 50),//top:MediaQuery.of(context).padding.top),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
          child: Text('Chat with\nyour friends', style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28
          ),),
          ),
          RecentContacts(),
          Messages()
        ],
      ),
      ),
    );
  }
}
