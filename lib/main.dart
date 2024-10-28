import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ColorPickerApp(),
  ));
}

class ColorPickerApp extends StatefulWidget {
  @override
  State<ColorPickerApp> createState() => _ColorPickerAppState();
}

class _ColorPickerAppState extends State<ColorPickerApp> {
  double _red = 0.0;
  double _green = 0.0;
  double _blue = 0.0;

  _onChangeRed(double value) {
    setState(() {
      _red = value;
    });
  }

  _onChangeGreen(double value) {
    setState(() {
      _green = value;
    });
  }

  _onChangeBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RGB Color Picker App"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white70,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text("Red: "),
                Text(
                  _red.toInt().toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: _red,
              min: 0,
              max: 255,
              activeColor: Colors.red,
              onChanged: _onChangeRed,
            ),


            Row(
              children: [
                const Text("Green: "),
                Text(
                  _green.toInt().toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: _green,
              min: 0,
              max: 255,
              activeColor: Colors.green,
              onChanged: _onChangeGreen,
            ),


            Row(
              children: [
                const Text("Blue: "),
                Text(
                  _blue.toInt().toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Slider(
              value: _blue,
              min: 0,
              max: 255,
              activeColor: Colors.blue,
              onChanged: _onChangeBlue,
            ),


            SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromRGBO(
                  _red.toInt(),
                  _green.toInt(),
                  _blue.toInt(),
                  1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


