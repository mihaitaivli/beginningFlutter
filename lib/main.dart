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
        backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quote List'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(quote: quote,)).toList()
      ),
    );
  }
}

// class QuoteCard extends StatelessWidget {
//   final  Quote quote;
//   QuoteCard({this.quote});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               quote.text,
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontStyle: FontStyle.italic,
//                 color: Colors.grey[600]
//               ),
//             ),
//             SizedBox(height: 6.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Text(
//                   quote.author,
//                   style: TextStyle(
//                     fontSize: 14.0,
//                     color: Colors.grey[500],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
