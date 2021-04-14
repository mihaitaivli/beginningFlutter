import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'Flutter is great, it enables very rapid prototyping and ensures styling is following the official guides.', author: 'Google'),
    Quote(text: 'Dart is amazing but I can\'t understand what are the unique advantages it brings over other OO languages.', author: 'unknown'),
    Quote(text: 'Golang reigns supreme. Enough said.', author: 'me')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quote List'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) => QuoteCard(
            quote: quote,
            deleteFn: () {
              setState(() {
                quotes.remove(quote);
              });
            },
          )).toList()
        ),
      ),
    );
  }
}
