import 'package:flutter/material.dart';

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    shadowColor: Color.fromRGBO(1, 1, 1, 0),
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    actions: [
      IconButton(
        icon: ImageIcon(
          AssetImage('assets/message.png'),
          color: Colors.black,
          size: MediaQuery.of(context).size.height * 0.04,
        ),
        onPressed: () {
          //do something
        },
      ),
    ],
    leading: IconButton(
      onPressed: () {
        //do something
      },
      icon: Icon(
        Icons.add_box_outlined,
        size: MediaQuery.of(context).size.height * 0.03,
        color: Colors.black,
      ),
    ),
    title: Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Image.asset(
        'assets/insta.png',
        height: MediaQuery.of(context).size.height * 0.095,
      ),
    ),
  );
}
