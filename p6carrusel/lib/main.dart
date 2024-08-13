import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carrusel Galindo ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: carruselgalindo(),
    );
  }
}

class carruselgalindo extends StatelessWidget {
  final List<String> imageList = [
    "https://raw.githubusercontent.com/Alangalindo1/p6carruselgalindo/main/platenas/Venus.jpg",
    "https://raw.githubusercontent.com/Alangalindo1/p6carruselgalindo/main/platenas/jupiter.jpg",
    "https://raw.githubusercontent.com/Alangalindo1/p6carruselgalindo/main/platenas/marte.jpg",
    "https://raw.githubusercontent.com/Alangalindo1/p6carruselgalindo/main/platenas/saturno.jpg",
    "https://raw.githubusercontent.com/Alangalindo1/p6carruselgalindo/main/platenas/tierra.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Carrusel galindo '),
          backgroundColor: const Color(0xff7667fd)),
      body: Center(
        child: CarouselSlider(
          items: imageList.map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 300.0,
            viewportFraction: 0.8,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}
