import 'package:flutter/material.dart';
import 'package:flutter_car_installmant_calculation/views/input_screen_ui.dart';
import 'package:flutter_car_installmant_calculation/views/splah_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp( FlutterCarInstallmantCalcylation());
}

class FlutterCarInstallmantCalcylation extends StatefulWidget {
  const FlutterCarInstallmantCalcylation({super.key});

  @override
  State<FlutterCarInstallmantCalcylation> createState() => _FlutterCarInstallmantCalcylationState();
}

class _FlutterCarInstallmantCalcylationState extends State<FlutterCarInstallmantCalcylation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}

