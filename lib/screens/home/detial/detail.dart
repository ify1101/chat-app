import 'package:flutter/material.dart';
import 'package:untitled1/constants/colors.dart';
import 'package:untitled1/models/message.dart';
import 'package:untitled1/screens/home/detial/widgets/detail_app_bar.dart';
import 'package:untitled1/screens/home/widgets/contact_info.dart';
import 'package:untitled1/screens/home/widgets/detail_message.dart';


class DetailPage extends StatelessWidget {
  final Message message;
  DetailPage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(children: [DetailsAppBar(),
                              ContactInfo(message),
                              Expanded(child: DetailMessages())],)
      );
  }
}
