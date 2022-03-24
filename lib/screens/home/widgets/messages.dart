import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants/colors.dart';
import 'package:untitled1/models/message.dart';
import 'package:untitled1/screens/home/detial/detail.dart';


class Messages extends StatelessWidget {
  final messagesList = Message.generateHomePageMessage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
              )
          ),
          child: _buildMessages(),
        )
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => _buildMessage(context, index),
        separatorBuilder: (_, index) => SizedBox(height: 30,),
        itemCount: messagesList.length);
  }

  Widget _buildMessage( BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(messagesList[index])));
      },
      child: Row(
        children: [
          Container(
            child: Image.asset(messagesList[index].user.iconUrl, width: 60,),
          ),
          SizedBox(width: 30,),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('${messagesList[index].user.firstName} ${messagesList[index].user.lastName}',
                     style: TextStyle(fontSize: 16, color: kPrimaryDark, fontWeight: FontWeight.bold),),
                    Text(messagesList[index].lastTime, style: TextStyle(color: kPrimaryDark))
                 ],
                ),
                SizedBox(height: 5),
                Text(messagesList[index].lastMessage, overflow: TextOverflow.ellipsis, style: TextStyle(color: kPrimaryDark), )
              ],
            ),
          )
        ],

      ),
    );

  }

}