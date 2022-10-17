import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:peminjamanmobil/Login.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 300,
          width: double.infinity,
          child: Image.asset("assets/logo.png"),
        ),
        Transform(
          transform: Matrix4.translationValues(0, -20, 0),
          child: Text(
            "Kalkulator",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.money),
            hintText: '120.000',
            labelText: 'Masukan Jumlah Uang',
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.timer),
            hintText: '5 Tahun',
            labelText: 'Masukan Tahun',
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.payment),
            hintText: '50.000',
            labelText: 'Masukan Uang Pembayaran',
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.money),
            hintText: '3.0',
            labelText: 'Masukan Jumlah Presentasi',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0),
          child: Container(
            height: 50,
            width: double.infinity,
            child: Center(
              child: Text(
                "Kalkulator",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Pembayaran Bulanan:",
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Rp.900.000",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Pelajari Lagi !",
          style: TextStyle(color: Colors.blueGrey),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/login");
          },
          child: Text(
            "Back to Home",
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
