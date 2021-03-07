import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/post_card.dart';
import '../widgets/story_avatar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List username = [
    'wat.ki',
    'hammyandliv',
    'weratedogs',
    'mayathepolarbear',
    'tuckerbudzyn',
    'maui_thegoldenpup',
    'leothegolden',
    'pankothecorgi',
  ];
  final List images = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/5.png',
    'assets/6.png',
    'assets/7.png',
    'assets/8.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.115,
              // width: double.infinity,
              child: ListView.builder(
                itemCount: username.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return myStory(context);
                  }
                  return storyAvatar(username[index], images[index], context);
                },
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemExtent: MediaQuery.of(context).size.height * 0.099,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            Divider(
              endIndent: 0,
              indent: 0,
              height: 0,
              thickness: 1.2,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: ListView.builder(
                itemCount: username.length,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    postCard(username[index], images[index], context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
