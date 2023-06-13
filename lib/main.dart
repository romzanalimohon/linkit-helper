import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_course/add_post.dart';
import 'package:firebase_course/dropdown_button_with_bottomsheet.dart';
import 'package:firebase_course/stack_page.dart';
import 'package:firebase_course/switch/slide_switch.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: AddPost(),
      //home: MyHomePage(),
      //home: StackPage(),
      home: ModalDropDown(),
    );
  }
}
