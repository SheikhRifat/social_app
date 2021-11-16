import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/src/models/posts.dart';
import 'package:social_app/src/widget/ktext.dart';

buildPost(int index) {
  return Container(
    margin: EdgeInsets.all(15),
    height: 460,
    child: Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: 60,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 3,
                color: Colors.white38,
              ),
            ),
            // story image
            child: Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                      posts[index].friend.imageUrl,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          //name
          Expanded(
            child: Text(
              posts[index].friend.name,
              style: TextStyle(
                  fontFamily: 'Cera Bold', fontSize: 16, letterSpacing: 1.2),
            ),
          ),
          //time
          KText(
            text: posts[index].timePosted,
            fontSize: 16,
            fontFamily: 'Cera Bold',
          )
        ]),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(posts[index].imageUrl), fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 40,
          child: Padding(
            padding: EdgeInsets.only(top: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // comment
                    Icon(
                      Icons.comment,
                      size: 25,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    KText(
                      text: posts[index].comments,
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Cera Bold',
                    ),
                    KText(
                      text: '|',
                      fontSize: 14,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // shared
                    Icon(
                      Icons.share,
                      size: 25,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    KText(
                      text: posts[index].shared,
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Cera Bold',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      size: 25,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    KText(
                      text: posts[index].like,
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Cera Bold',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 70,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: KText(
              text: posts[index].description,
              color: Colors.black54,
              fontSize: 14,
              maxLines: 3,
            ),
          ),
        )
      ],
    ),
  );
}
