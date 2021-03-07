import 'package:flutter/material.dart';

Widget storyAvatar(String abc, String image, BuildContext context) {
  return Container(
    //padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.height * 0.13,
      //color: Colors.blue,
      child: Column(
        children: [
          avatarStory(abc, image, 0.09, context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.004,
          ),
          Text(
            abc,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget myStory(BuildContext context) {
  return Container(
    //padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.height * 0.13,
      //color: Colors.blue,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.height * 0.09,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/insta1.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.blue,
                    size: 24,
                  ),
                ),
                bottom: 5,
                right: 5,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.004,
          ),
          Text(
            'Your Story',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget avatarStory(
    String abc, String image, double heightFactor, BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * heightFactor,
    width: MediaQuery.of(context).size.height * heightFactor,
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: MediaQuery.of(context).size.height * heightFactor / 25,
        ),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    ),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.redAccent,
        width: MediaQuery.of(context).size.height * heightFactor / 50,
      ),
    ),
  );
}
