import 'package:flutter/material.dart';

class ModalDropDown extends StatefulWidget {
  @override
  _ModalDropDownState createState() => _ModalDropDownState();
}

class _ModalDropDownState extends State<ModalDropDown> {
  String _selected = 'A';
  List<String> _items = ['A', 'B', 'C', 'D'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           GestureDetector(
             onTap: () => showModal(context),
             child:  Container(
               height: 50,
               width: 200,
               child: Text(_selected, style: TextStyle(fontSize: 28),),

             ),
           ),
          ],
        ),
      ),
    );
  }

  void showModal(context){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            padding: EdgeInsets.all(8),
            height: 200,
            alignment: Alignment.center,
            child: ListView.separated(
                itemCount: _items.length,
                separatorBuilder: (context, int) {
                  return Divider();
                },
                itemBuilder: (context, index) {
                  return GestureDetector(
                      child: Text(_items[index]),
                      onTap: () {
                        setState(() {
                          _selected = _items[index];
                        });
                        Navigator.of(context).pop();
                      }
                  );
                }
            ),
          );
        }
    );
  }
}
