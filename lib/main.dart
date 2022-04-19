import 'package:flutter/material.dart';

void main() {
  runApp(const IfoodFlutter());
}

class IfoodFlutter extends StatelessWidget {
  const IfoodFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      title: 'Ifood Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child:Column(
              children: <Widget>[
                Text('ENTREGAR EM'),
                Row(
                  children: <Widget>[
                    Text('Rua, A 71'),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                )
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
