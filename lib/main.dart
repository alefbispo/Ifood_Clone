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
                        'Avenida Euclides, 71',
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
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView(
                  padding: EdgeInsets.only(right: 12),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    columnBanner('assets/images/restaurantes-0.png',
                        'Confira sua entrega grátis na sacola'),
                    const SizedBox(width: 10),
                    columnBanner('assets/images/restaurantes-1.png',
                        'A taxa é cortesia pra você'),
                    const SizedBox(width: 10),
                    columnBanner('assets/images/restaurantes-2.png',
                        'Comida gostosa e sem taxas'),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
              color: Colors.grey.shade100,
            ),
            Container(
              height: 150,
              padding: EdgeInsets.only(top: 12, left: 12),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Categorias',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        columnCategorias('assets/images/pizza.png', 'Pizzas'),
                        const SizedBox(width: 5),
                        columnCategorias(
                            'assets/images/lanches.png', 'Lanches'),
                        const SizedBox(width: 5),
                        columnCategorias('assets/images/acai.png', 'Açai'),
                        const SizedBox(width: 5),
                        columnCategorias(
                            'assets/images/japonesa.png', 'Japonesa'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
              color: Colors.grey.shade100,
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset('assets/images/gourmet.png'),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 4,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: 'Buscas',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt,
                color: Colors.black,
              ),
              label: 'Pedidos',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              label: 'Perfil',
            )
          ],
        ),
      ),
    );
  }
}

class columnCategorias extends StatelessWidget {
  final imagem;

  final texto;

  columnCategorias(this.imagem, this.texto);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            imagem,
            height: 75,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          texto,
          style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
        )
      ],
    );
  }
}

class columnBanner extends StatelessWidget {
  final imagem;
  final texto;

  columnBanner(this.imagem, this.texto);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagem,
            height: 140,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          texto,
          style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
        )
      ],
    );
  }
}
