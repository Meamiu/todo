import 'package:flutter/material.dart';
import 'package:todo/tuto.dart';

import 'AddPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Icon Navigation',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  get errorBuilder => null;

  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        title: Text('To Buy'),
      ),
      body:
      Column(children: [
        Expanded(child:
        GridView.count(
          crossAxisCount:2, // Number of columns in the grid
          children: <Widget>[
            IconButton(

              icon: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Noun_Project_vegetables_icon_1422990_cc.svg/1200px-Noun_Project_vegetables_icon_1422990_cc.svg.png',
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error); // Show error icon if image fails
                },),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoListScreen()),
                );
              },
            ),
            IconButton(
              icon: Image.network('https://cdn.iconscout.com/icon/free/png-256/free-dairy-icon-download-in-svg-png-gif-file-formats--product-products-allergen-milk-miscellaneous-elements-pack-user-interface-icons-2554291.png',
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error); // Show error icon if image fails
                },width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoListScreen()),
                );
              },
            ),
            IconButton(
              icon: Image.network('data:image/png;base64,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',
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error); // Show error icon if image fails
                },width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
            ),
            IconButton(
              icon: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR40yaxTU1u7um2mceIWaFfqHZx9qz_VEf9sA&s',
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error); // Show error icon if image fails
                },width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page4()),
                );
              },
            ),

            IconButton(

              icon: Image.network('data:image/png;base64,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',
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error); // Show error icon if image fails
                },width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page5()),
                );
              },
            ),
            IconButton(

              icon: Image.network('data:image/jpeg;base64,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',
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error); // Show error icon if image fails
                },width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page6()),
                );
              },
            ),

          ],
        ),

        ),

        /*ElevatedButton(
          onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPage()),


          );
        }, child: Text('Add item',style: TextStyle(fontSize: 20 ),),style: ElevatedButton.styleFrom(minimumSize: Size(200,100)),
      )*/


    ]
    ),
      floatingActionButton: ElevatedButton.icon(onPressed:() {

      },label:Text("ADD"),icon:Icon(Icons.add)),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  IconButtonWidget({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 50),
          SizedBox(height: 80),
          Text(label),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VEGETABLES'),
      ),
      body: Center(
        child: Text('Welcome to Page 1'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DIARY'),
      ),
      body: Center(
        child: Text('Welcome to Page 2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OFFICE OR SCHOOL SUPPLIES'),
      ),
      body: Center(
        child: Text('Welcome to Page 3'),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SNACKS AND DRINKS'
      ),),
      body: Center(
        child: Text('Welcome to Page 4'),
      ),);
  }
}
class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PERSONAL CARE AND BEAUTY'
        ),),
      body: Center(
        child: Text('Welcome to Page 4'),
      ),);
  }
}
class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CLEANING SUPPLIES'
        ),),
      body: Center(
        child: Text('Welcome to Page 4'),
      ),);
  }
}
/*class AddPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add item to your list'
        ),),
      body: Center(
        child: Text(''),
      ),);
  }
}*/