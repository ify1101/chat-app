import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/constants/colors.dart';
import 'package:untitled1/models/message.dart';

class DetailMessages extends StatelessWidget {
  final myId = 0;
  final list = Message.generateMessagesFromUser();


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.fromLTRB(25, 50, 25, 80),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30))),
                child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => list[index].user.id == myId ?
                     _buildReceivedText(list[index]) :
                     _buildSenderText(list[index]),
                    separatorBuilder: (_, index) => SizedBox(height: 20),
                    itemCount: list.length),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              child: Stack(
                children: [
                TextField(
                  decoration: InputDecoration(
                    fillColor: kGreyLight.withOpacity(0.2),
                    filled: true,
                    contentPadding: EdgeInsets.all(18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                      hintText: 'Type your message...',
                      hintStyle: TextStyle(
                        color: kPrimaryDark.withOpacity(0.3),
                        fontSize: 14)),),
                Positioned(
                  right: 8,
                  bottom: 8,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: kPrimary,
                      shape: BoxShape.circle),
                    child: Icon(Icons.send,
                    color: Colors.white,
                    size: 20),
                  ),
                )
              ],),
            ),
          )
        ],
      ),
    );
  }
  Widget _buildReceivedText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          message.lastTime,
          style: TextStyle(color: kGreyLight, fontSize: 12),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kPrimaryLight,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15))),
          child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 180),
               child: Text(message.lastMessage,
                 style: TextStyle(
                     height: 1.5,
                     color: kPrimaryDark),),),

        )
      ],
    );
  }
  Widget _buildSenderText(Message message) {
    return Row(
      children: [
        Row(
          children: [
            message.isContinue
                ? SizedBox(width: 40,)
                : Container(
              padding: EdgeInsets.all(5),
              child: Image.asset(
                message.user.iconUrl, width: 30,),
            )
          ],
        ),
        SizedBox(width: 10),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kGreyLight.withOpacity(0.2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            )
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 180),
            child: Text(
              message.lastMessage,
              style: TextStyle(height: 1.5, color: kPrimaryDark),
            ),
          ),
        ),
        Text(
          message.lastTime,
          style: TextStyle(color: kGreyLight,
              fontSize: 12,),
        )
      ],
    );
  }
}
