import 'package:bmi_calculator/bmi_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  const BMIResultScreen({this.result, this.isMale, this.age});
  final int result;
  final bool isMale;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Result: $result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Gender:${isMale ? 'Male' : 'Female'}",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Age:$age",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              color: Color(0xFFd1362b),
              height: 50.0,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BmiScreen()));
              },
              child: Text(
                "Again ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
