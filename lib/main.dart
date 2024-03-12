import 'package:flutter/material.dart';
import 'quote.dart';
void main() {
  runApp(const MaterialApp(
    home: Quotelist(),
  ));
}

class Quotelist extends StatefulWidget {
  const Quotelist({super.key});

  @override
  State<Quotelist> createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quote> quotes = [
    Quote(author: 'oscar wilde' , text:'Be yourself; everyone else is already taken'),
    Quote(author: 'oscar wilde' , text:'I have nothing to declare except my genius'),
    Quote(author: 'oscar wilde' , text:'The truth is rarely pure and never simple'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),),
            SizedBox(height: 6.0),

            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
          title: const Text('Quotelist'),
          centerTitle: true,
          backgroundColor: Colors.grey[500]
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
      );
  }
}
