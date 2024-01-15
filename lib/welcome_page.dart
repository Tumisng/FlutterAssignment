//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeHomePage extends StatefulWidget {
  const WelcomeHomePage({super.key});

  

  @override
  State<WelcomeHomePage> createState() => _WelcomeHomePageState();
}

class _WelcomeHomePageState extends State<WelcomeHomePage> {
  int _currentIndex = 0;

  //final TextEditingController _textController = TextEditingController(text: 'Search items');
  final List<Widget> _pages = [
    HomeScreen(),
    FavoriteScreen(),
    AddScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    double number = 35.00;
    String words = 'day';

    double price = 160.00;
    String duration = 'week';
    
    String combination = ' $number $words';

    String result = '$price $duration';
    
    return Container(color: Colors.black26,
    child: SafeArea(
      child: Column(
        children: [ Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        

        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            ),

            const Text("Your location", style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),

            const Text("Naantali", style: TextStyle(fontSize: 16, color: Colors.white),
            ),

            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: (){

              },
            ),
        ],
        ),


            Container(
              margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white, side: BorderSide(), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                  onPressed: () {}, child: Container(
                  child: const Text("All", style: TextStyle(color: Colors.black),
                  ),
                ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey, side: BorderSide(), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                  onPressed: () {}, child: Container(
                  child: const Text("Sports", style: TextStyle(color: Colors.white),
                  ),
              ),
            ),
            ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey, side: BorderSide(), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                  onPressed: () {}, child: Container(
                  child: const Text("Electronics", style: TextStyle(color: Colors.white),
                  ),
              ),
            ),
             ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey, side: BorderSide(), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                  onPressed: () {}, child: Container(
                  child: const Text("Tools", style: TextStyle(color: Colors.white),
                  ),
              ),
            ), 
        ],

        
        
        ),
    ),
    const Text("New Offers", style: TextStyle(fontSize: 18, color: Colors.white),
    textAlign: TextAlign.left,
            ),
    ClipRRect(borderRadius: BorderRadius.circular(10.0),
    child: Image.asset("assets/images/camping_tent.jpg", 
         fit: BoxFit.cover,
         width: 300,
         height: 200,),),

    Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Image.asset("assets/images/profile.png", 
         fit: BoxFit.cover,
         width: 30,
         height: 30,),

         const Text("Matt Padilla", style: TextStyle(fontSize: 18, color: Colors.white),
            ),

          IconButton(
              icon: const Icon(Icons.location_pin, color: Colors.green,),
              onPressed: (){

              },
            ),

           const Text("1.6 km", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
        
      ],), 
    ),

     const Text("2-4 Person Camping Tent", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),

      Container(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
              Text(combination, style: const TextStyle(fontSize: 15, color: Colors.white),
            ),

            Text(result, style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),

      ClipRRect(borderRadius: BorderRadius.circular(10.0),
      child: Image.asset("assets/images/bicycle.jpg", 
         fit: BoxFit.cover,
         width: 300,
         height: 200,),),

         

         Container(
          height: 60,
           child: Scaffold(
            body: _pages[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
                   type: BottomNavigationBarType.fixed,
                   items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white,),
              label: 'Home', 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.white,),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.green,),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Colors.white,),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white,),
              label: 'Profile',
            ),
                   ],
                 ),
                   ),
         ),
        ],   
    ),
    ),
    );    
  }

}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
    
    );
  }
}

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorite Screen'),
    );
  }
}

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Add Screen'),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chat Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}
