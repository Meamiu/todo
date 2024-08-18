import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Icon Navigation',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  get errorBuilder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Buy'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Number of columns in the grid
        children: <Widget>[
          IconButton(
            icon: Image.network("https://images.app.goo.gl/Exvk8MXP97wk3R3j9",
            errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error); // Show error icon if image fails
          }),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            },
          ),
          IconButton(
            icon: Image.network('https://images.app.goo.gl/Exvk8MXP97wk3R3j9',
            errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.error); // Show error icon if image fails
          },),
             onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page2()),
            );
          },
          ),
          IconButtonWidget(
            icon: Icons.person,
            label: 'Page 3',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            },
          ),
          IconButtonWidget(
            icon: Icons.info,
            label: 'Page 4',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page4()),
              );
            },
          ),
        ],
      ),
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
          SizedBox(height: 8),
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
        title: Text('Page 1'),
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
        title: Text('Page 2'),
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
        title: Text('Page 3'),
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
        title: Text('Page 4'),
      ),
      body: Center(
        child: Text('Welcome to Page 4'),
      ),
    );
  }
}
