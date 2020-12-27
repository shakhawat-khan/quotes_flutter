import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'To live is to suffer, to survive is to find some meaning in the suffering.' ,author: 'Friedrich Nietzsche'),
    Quote(text: 'That which does not kill us makes us stronger.' ,author: 'Friedrich Nietzsche'),
    Quote(text: 'He who has a why to live can bear almost any how.' ,author: 'Friedrich Nietzsche'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Nice Quote'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) =>Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );
  }
}

