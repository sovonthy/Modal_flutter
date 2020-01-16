import 'package:flutter/material.dart';


class Modal extends StatefulWidget {
  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
   TextEditingController todoController = TextEditingController();
  createModal(BuildContext context){
    return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ), 
          title: Text("Todo List"),
          content: TextField(
            controller: todoController,
            autofocus: true,
          ),
          actions: <Widget>[
            MaterialButton(
              child: Text("Add new" , style: TextStyle(color: Colors.blue,
              ),), 
              onPressed: () {
                 Navigator.of(context).pop(todoController.text.toString());
              debugPrint(todoController.text.toString());
              },
            
            )
          ],
        );
      }
    );
  }
  @override
 Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text("Todo List"),
        ),
        floatingActionButton: FloatingActionButton(
          //call function add modal
          onPressed: () =>  createModal(context),
    
          child: Icon(Icons.add),
        ),
      );
}

