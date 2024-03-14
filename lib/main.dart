import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
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
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState((){
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
      );
  }
}
