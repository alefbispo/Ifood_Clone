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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'ENTREGAR EM',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'Rua, A 71',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.shade100),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: 'Prato ou Restaurante',
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.red,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  const Text(
                    'Filtros',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListView(
                padding: EdgeInsets.only(right: 12),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                       child: Image.asset('assets/images/restaurantes-0.png',
                         height: 140,
                       ),
                      )
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
