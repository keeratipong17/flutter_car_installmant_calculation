import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl.dart';

class ResultScreenUi extends StatefulWidget {
  // สร้างตัวแปลรับค่าที่จัดส่งมา
  double? carPrice;
  double? payPerMonth;
  int? month;

  // เอาตัวแปรที่สร้างมารอรับค่าที่ส่ง
  ResultScreenUi({super.key, this.carPrice, this.payPerMonth, this.month});

  @override
  State<ResultScreenUi> createState() => _ResultScreenUiState();
}

class _ResultScreenUiState extends State<ResultScreenUi> {
  @override
  Widget build(BuildContext context) {
    // กำหนดรูปแบบของตัวเลข ณ ที่นี้ คอมม่าคั่นหลักพัน/ล้าน และทศนิยม 2ตำแหน่ง
    NumberFormat fm = NumberFormat("#,###,##0.00");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'CI Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // สีข้อความหลัก
                ),
                children: [
                  TextSpan(text: 'ผ่อนทั้งหมด '),
                  TextSpan(
                    text: '${widget.month}',
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(text: ' เดือน'),
                ],
              ),
            ),
            Text(
              '${fm.format(widget.payPerMonth)}',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Text(
              'บาท',
            )
          ],
        ),
      ),
    );
  }
}
