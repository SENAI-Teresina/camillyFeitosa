import 'package:flutter/material.dart';

void main() {
  runApp(const AdvertisementRow());
}

class AdvertisementRow extends StatelessWidget {
  const AdvertisementRow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Anúncios'),
        ),
        body: const Center(
          child: AdvertisementRowWidget(),
        ),
      ),
    );
  }
}

class AdvertisementRowWidget extends StatelessWidget {
  const AdvertisementRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AdvertisementImage(image: AssetImage('assets/advertisement1.jpg')),
        SizedBox(width: 10), // Espaçamento entre as imagens dos anúncios
        AdvertisementImage(image: AssetImage('assets/advertisement2.jpg')),
        SizedBox(width: 10),
        AdvertisementImage(image: AssetImage('assets/advertisement3.jpg')),
      ],
    );
  }
}

class AdvertisementImage extends StatelessWidget {
  final AssetImage image;

  const AdvertisementImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: image,
      width: 150,
      height: 150,
      fit: BoxFit.cover,
    );
  }
}