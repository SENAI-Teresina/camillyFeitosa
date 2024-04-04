import 'package:flutter/material.dart';

void main() {
  runApp(const ProductListApp());
}

class ProductListApp extends StatelessWidget {
  const ProductListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Produtos'),
        ),
        body: const ProductListScreen(),
      ),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: const <Widget>[
        ProductWidget(
          productName: 'Vestido',
          imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbr.shein.com%2FSHEIN-Ruched-Solid-Cami-Dress-p-9672867-cat-1727.html&psig=AOvVaw2i9uedXMtXO1TtCOJhwR-K&ust=1712326668056000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMD7xI7gqIUDFQAAAAAdAAAAABAE',
        ),
        ProductWidget(
          productName: 'Mini Saia',
          imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.magazineluiza.com.br%2Fmini-saia-sedution%2Fp%2Ffg48c52c1e%2Fmd%2Fsfmm%2F&psig=AOvVaw3o9_ltK3_dG65mOylJ2hUc&ust=1712326746761000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIiwn67gqIUDFQAAAAAdAAAAABAE',
        ),
        ProductWidget(
          productName: 'Calçados',
          imageUrl: 'https://d87n9o45kphpy.cloudfront.net/Custom/Content/Products/16/53/1653132_sandalia-gabriela-salto-grosso-tira-off-white-5162697_l1_637600343977708193.jpg',
        ),
      ],
    );
  }
}

class ProductWidget extends StatelessWidget {
  final String productName;
  final String imageUrl;

  const ProductWidget({
    super.key,
    required this.productName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              productName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
