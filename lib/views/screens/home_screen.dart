import 'package:dars46/views/screens/categoris_screen.dart';
import 'package:dars46/views/screens/users_screen.dart';
import 'package:flutter/material.dart';
import 'product_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: Text('Products'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductScreen()),
                    );
                  },
                ),
              ElevatedButton(
                child: Text('categoris'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoryScreen()),
                  );
                },
              ),
              ElevatedButton(
                  child: Text('Users'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserScreen()),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
