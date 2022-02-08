import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'İlk Projem',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Sayac(
          isim: "Bardak",
        ));
  }
}

class Sayac extends StatefulWidget {
  final String isim;

  Sayac({required this.isim});

  @override
  _SayacState createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  int sayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("${widget.isim} sayısı:$sayi"),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("Butona Basıldı");
      }),
    );
  }
}
