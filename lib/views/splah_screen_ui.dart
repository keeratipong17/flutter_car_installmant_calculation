import 'package:flutter/material.dart';
import 'package:flutter_car_installmant_calculation/views/input_screen_ui.dart';

class SplahScreenUi extends StatefulWidget {
  const SplahScreenUi({super.key});

  @override
  State<SplahScreenUi> createState() => _SplahScreenUiState();
}

class _SplahScreenUiState extends State<SplahScreenUi> {
  @override
  void initState() {
    // โค้ดดีเลย์หน้าจอไว้ 3 วิ แล้วไปหน้าต่อไป
    Future.delayed(
      // ระยะเวลา
      Duration(seconds: 3),
      // ครบเวลาแล้วให้ทำอะไรต่อ
      ()=> Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => InputScreenUi()
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/img01.png',
                width: 230,
              ),
              Text(
                'Car Installment',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Created by Keeratipong DTI-SAU',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen,
                ),
              ),
              Text(
                'Version 1.0.0',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
