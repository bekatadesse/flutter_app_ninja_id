// from ninja_id project
import 'package:flutter/material.dart';

void main() {runApp(const MaterialApp(
  home: AppCard(),
));}

class AppCard extends StatefulWidget {
  const AppCard({super.key});

  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  // data that change over time
  int ninjaLevel = 0; // Example mutable state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
          title: const Text('AppCard'),
          centerTitle: true,
          backgroundColor: Colors.grey[800]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel +=1;
          });

        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pic-2.jpg'),
                  radius: 80,
                ),
              ),
            ),
            const Divider(
              height: 120,
              color: Colors.grey,
            ),
            const Text('Name :',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,),),

            const Text('Venom-li',
              style: TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),

            const Text('Current Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,),),

            Text(
              '$ninjaLevel',
              style: const TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),

            const Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey,),
                SizedBox(width: 10,),
                Text(
                  'venom_li@code.co',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      letterSpacing: 2),)
              ],
            )
          ],
        ),
      ),
    );
  }
}



