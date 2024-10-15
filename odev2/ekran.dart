import 'package:flutter/material.dart';
import 'package:mobil_odev2/renkler.dart';

class Ekran extends StatefulWidget {
  const Ekran({super.key});

  @override
  State<Ekran> createState() => _EkranState();
}

class _EkranState extends State<Ekran> {
  Color arkaPlanRengi = renk1;
  void rengiDegistir() {
    setState(() {
      arkaPlanRengi = (arkaPlanRengi == renk1) ? renk2 : renk1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaPlanRengi,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: rengiDegistir, child: Text("Tıkla", style: TextStyle(fontSize: 38, color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
