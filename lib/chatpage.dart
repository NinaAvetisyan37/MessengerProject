import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://img.favpng.com/23/4/11/computer-icons-user-profile-avatar-png-favpng-QsYtjsW73M0aGLb4GbMEyLbc5.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sender",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Active now",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )
              ],
            )
          ],
        ),
        actions: [
          Icon(
            Icons.phone,
            color: Colors.blue,
            size: 32,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.videocam,
            color: Colors.blue,
            size: 35,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.info,
            color: Colors.blue,
            size: 35,
          ),
        ],
      ),
      body: body(),
    );
  }

  Widget body() {
    return Column(
      children: [Expanded(child: Column(),),
        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.widgets,
                              size: 35,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.camera_alt,
                              size: 35,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.photo,
                              size: 35,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.keyboard_voice,
                              size: 35,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(

                            // color: Colors.red,
                            ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: (MediaQuery.of(context).size.width - 140) / 2,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Aa",
                                      suffixIcon: Icon(
                                        Icons.sentiment_satisfied,
                                        color: Colors.blue,
                                        size: 35,
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.thumb_up,
                              size: 35,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
