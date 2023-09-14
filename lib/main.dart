import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
    );
  }

}

class HomeScreen extends StatelessWidget{
  mySnackBar(String message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping List"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){mySnackBar("Cart is empty", context);}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Apple", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
              ),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Banana", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
              ),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Bread", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
              ),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Milk", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
              ),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Eggs", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
              ),),
            ),
          ],
        ),
      ),
    );
  }

}