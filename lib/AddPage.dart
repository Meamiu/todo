//Add
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class AddPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add items'
        ),),
      body:
          const Column(
            mainAxisAlignment :MainAxisAlignment.center,
            children: [
        SizedBox(

        width: 200,  // Set the width of the TextField
        height: 50,// Set the height of the TextField
        child: TextField(

          decoration: InputDecoration(

            hintText: 'Enter the item',
            border: OutlineInputBorder(),  // Add a border
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),  // Adjust padding inside the TextField
          ),
        ),
      ),
          ],),);
  }
}
