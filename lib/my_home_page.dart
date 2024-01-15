import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    return Container(color: Colors.green,
    child: SafeArea(
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [
          Image.asset("assets/images/successful_purchase.png", 
           width: 450.0, // Set your desired width
          height: 450.0,
         fit: BoxFit.contain),

        

        const Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Text(
            "Lease and share",
            style: TextStyle(fontSize: 35, color: Colors.black),
            textAlign: TextAlign.center
            )),
           const Padding(
            padding: EdgeInsets.all(16.0),
           child: const Text( "From tools and electronics to sports equipment and fashion accessories, our platform allows you to help others save money and reduce waste",
           style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            textAlign: TextAlign.justify,
            
           )),

           ElevatedButton( style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () {}, child: Container(
                width: 350,
                height: 40,
                  child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 20), 
                  textAlign: TextAlign.center,
        ))
        
        ),
        ]),
    ),
    );    
  }
}
