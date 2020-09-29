import 'package:flutter/material.dart';
import 'package:messenger_project/message.dart';

class MessengerPage extends StatefulWidget {
  @override
  _MessengerPageState createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  List<Message> messages = [
    Message(
        messageSenderName: "Ani Avanesyan",
        messageText: "message from Ani",
        date: DateTime.now()),
    Message(
        messageSenderName: "Mane Davtyan",
        messageText: "message from Mane",
        date: DateTime.now()),
    Message(
        messageSenderName: "Nare Hakobyan",
        messageText: "message from Nare",
        date: DateTime.now()),
    Message(
        messageSenderName: "Narek Harutyunyan",
        messageText: "message from Narek",
        date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            title: Text('Chats'),
            icon: Icon(Icons.chat_bubble),
          ),
          BottomNavigationBarItem(
            title: Text('People'),
            icon: Icon(Icons.group),
          ),
        ],
      ),
      body: body(),
    );
  }

  Widget body() {
    //Expanded
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                iconSize: 40,
                onPressed: () {},
              ),
              Text(
                "Chats",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 40),
              IconButton(
                  icon: Icon(
                    Icons.photo_camera,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ]),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 43,
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                cursorColor: Colors.blue[800],
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white24,
                    ),
                    hintText: "Search"),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_circle),
                          iconSize: 50,
                          color: Colors.grey[700],
                          onPressed: () {},
                        ),
                        Text("History", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.account_circle),
                          iconSize: 50,
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                        Text(" A History",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.account_circle),
                          iconSize: 50,
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                        Text(" B History",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.account_circle),
                          iconSize: 50,
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                        Text(" C History",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.account_circle),
                          iconSize: 50,
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                        Text(" D History",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.account_circle),
                          iconSize: 50,
                          color: Colors.grey[100],
                          onPressed: () {},
                        ),
                        Text(" E History",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ]),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                children: [
         
                      

                   GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('smsPage');
                    },
                    child: Row(children: [
                   
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.favpng.com/23/4/11/computer-icons-user-profile-avatar-png-favpng-QsYtjsW73M0aGLb4GbMEyLbc5.jpg'),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name message sender1",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          Text("Message",
                              style: TextStyle(
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('smsPage');
                    },
                    child: Row(children: [
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.favpng.com/23/4/11/computer-icons-user-profile-avatar-png-favpng-QsYtjsW73M0aGLb4GbMEyLbc5.jpg'),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name message sender2",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          Text("Message",
                              style: TextStyle(
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('smsPage');
                    },
                    child: Row(children: [
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.favpng.com/23/4/11/computer-icons-user-profile-avatar-png-favpng-QsYtjsW73M0aGLb4GbMEyLbc5.jpg'),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name message sender3",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          Text("Message",
                              style: TextStyle(
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('smsPage');
                    },
                    child: Row(children: [
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.favpng.com/23/4/11/computer-icons-user-profile-avatar-png-favpng-QsYtjsW73M0aGLb4GbMEyLbc5.jpg'),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name message sender4",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          Text("Message",
                              style: TextStyle(
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ]),
                  ),SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('smsPage');
                    },
                    child: Row(children: [
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.favpng.com/23/4/11/computer-icons-user-profile-avatar-png-favpng-QsYtjsW73M0aGLb4GbMEyLbc5.jpg'),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name message sender5",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          Text("Message",
                              style: TextStyle(
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ]),
                  ),SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('smsPage');
                    },
                    child: Row(children: [
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.favpng.com/23/4/11/computer-icons-user-profile-avatar-png-favpng-QsYtjsW73M0aGLb4GbMEyLbc5.jpg'),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name message sender6",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          Text("Message",
                              style: TextStyle(
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
