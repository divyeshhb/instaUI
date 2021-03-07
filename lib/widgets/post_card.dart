import 'package:flutter/material.dart';
import 'story_avatar.dart';

Widget postCard(String abc, String image, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.68,
    width: double.infinity,
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.006),
          height: MediaQuery.of(context).size.height * 0.06,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  avatarStory(abc, image, 0.05, context),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Text(
                    abc,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              IconButton(
                  icon: Icon(
                    Icons.more_vert,
                  ),
                  onPressed: () {})
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.44,
          width: double.infinity,
          //color: Colors.red,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        likeBar(context),
      ],
    ),
  );
}

Widget likeBar(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.006),
    height: MediaQuery.of(context).size.height * 0.06,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              constraints: BoxConstraints(
                //minHeight: 30,
                minWidth: 30,
              ),
              icon: ImageIcon(
                AssetImage('assets/like.png'),
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              constraints: BoxConstraints(
                //minHeight: 30,
                minWidth: 30,
              ),
              icon: ImageIcon(
                AssetImage('assets/comment.png'),
                size: MediaQuery.of(context).size.height * 0.025,
              ),
              onPressed: () {},
            ),
            IconButton(
              constraints: BoxConstraints(
                //minHeight: 30,
                minWidth: 30,
              ),
              icon: Icon(Icons.send_outlined),
              onPressed: () {},
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.bookmark_border,
            size: MediaQuery.of(context).size.height * 0.03,
          ),
          onPressed: () {},
        ),
      ],
    ),
  );
}
