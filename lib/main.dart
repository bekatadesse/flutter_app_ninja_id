import 'package:flutter/material.dart';

void main() {runApp(const MaterialApp(
  home: AppCard(),
));}

class AppCard extends StatelessWidget {
  const AppCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text('AppCard'),
        centerTitle: true,
        backgroundColor: Colors.grey[800]
        ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pic-2.jpg'),
                  radius: 80,
                ),
              ),
            ),
            Divider(
              height: 120,
              color: Colors.grey,
            ),
            Text('Name :',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,),),

            Text('Venom-li',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 25,
                fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),

            Text('Current Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,),),

            Text('10',
              style: TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),

            Row(
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

