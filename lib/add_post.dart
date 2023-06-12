import 'package:firebase_course/widget/text_widget.dart';
import 'package:firebase_course/widget/toast.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {

  final nameController = TextEditingController();
  final genderController = TextEditingController();
  final databaseRef = FirebaseDatabase.instance.ref('student');
  ///final _auth = FirebaseAuth

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(text: "POST ADDED", size: 20.0, BgColor: Colors.white, TextColor: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: 'insert your name',
                    border: OutlineInputBorder()
                ),
              ),),
            Padding(padding: EdgeInsets.only(left: 20, right: 200),
              child: TextFormField(
                controller: genderController,
                decoration: InputDecoration(
                    hintText: 'insert gender',
                    border: OutlineInputBorder()
                ),
              ),),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){


              databaseRef.child("2").set({
                'name': nameController.text.toString(),
                'gender': genderController.text.toString()
              }).then((value){
                firebaseToast().showToast("post added succsesfully", 25.0);
              }).onError((error, stackTrace){
                firebaseToast().showToast("post failure", 30.0);
              });


            }, child: Text("add") )
          ],
        ),
      )
    );
  }
}
