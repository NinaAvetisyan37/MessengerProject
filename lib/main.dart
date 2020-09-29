import 'package:flutter/material.dart';
import 'package:messenger_project/home.dart';
import 'package:messenger_project/chatpage.dart';

main(List<String> args) {
  runApp(MessengerApp());
}
class MessengerApp extends StatelessWidget{
@override
Widget build(BuildContext context){
  return MaterialApp(
    //color:Color(0xFFFF9000),
     theme: ThemeData(
        primaryColor: Color(0xff1573CB),
        disabledColor: Color(0xffB2B2B2)
      ),
    home:MessengerPage(),
    debugShowCheckedModeBanner: false,
routes: {'smsPage':(context)=>ChatPage()},
  );
  
}




}