import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_app/src/components/postComponent.dart';
import 'package:social_app/src/models/friends.dart';
import 'package:social_app/src/widget/ktext.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#d2dae2'),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor('#d2dae2'),
          title: KText(
            color: Colors.black,
            text: 'TimeLine',
            fontSize: 22,
            fontFamily: 'Cera Bold',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 35,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              // story..
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: favorite.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: HexColor('#d2dae2'),
                        borderRadius: BorderRadius.circular(10),
                        //story...
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          )
                        ]),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 80,
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
                                    favorite[index].imageUrl,
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        // story name
                        Container(
                          height: 65,
                          child: RotatedBox(
                            quarterTurns: 15,
                            child: KText(
                              color: Colors.black45,
                              text: favorite[index].name,
                              fontSize: 16,
                              fontFamily: 'Cera Bold',
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                          height: 10,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            buildPost(0),
            buildPost(1),
            buildPost(2),
            buildPost(3),
          ],
        ),
      ),
    );
  }
}
