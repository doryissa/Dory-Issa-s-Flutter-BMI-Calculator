import 'package:flutter/material.dart';
import 'material.dart';
import 'bmi.dart';
import 'main.dart';
import 'home.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Color bg = Colors.grey;
  String status = '';
  @override
  Widget build(BuildContext context) {
    BMI bmi = ModalRoute.of(context)!.settings.arguments as BMI;
    if (bmi.age < 15) {
      if (bmi.bmi() < 12) {
        bg = Colors.blue;
        status = 'underweight';
      } else if (bmi.bmi() < 15) {
        bg = Colors.green;
        status = 'healthy';
      } else if (bmi.bmi() < 17) {
        bg = Colors.yellow;
        status = 'a little overweight';
      } else if (bmi.bmi() < 20) {
        bg = Colors.orange;
        status = 'overweight';
      } else {
        bg = Colors.red;
        status = 'obese';
      }
    } else {
      if (bmi.gender == "male") {
        if (bmi.bmi() < 18.5) {
          bg = Colors.blue;
          status = 'underweight';
        } else if (bmi.bmi() < 25) {
          bg = Colors.green;
          status = 'healthy';
        } else if (bmi.bmi() < 30) {
          bg = Colors.yellow;
          status = 'a little overweight';
        } else if (bmi.bmi() < 40) {
          bg = Colors.orange;
          status = 'overweight';
        } else {
          bg = Colors.red;
          status = 'obese';
        }
      } else {
        if (bmi.bmi() < 17.5) {
          bg = Colors.blue;
          status = 'underweight';
        } else if (bmi.bmi() < 24) {
          bg = Colors.green;
          status = 'healthy';
        } else if (bmi.bmi() < 28) {
          bg = Colors.yellow;
          status = 'a little overweight';
        } else if (bmi.bmi() < 35) {
          bg = Colors.orange;
          status = 'overweight';
        } else {
          bg = Colors.red;
          status = 'obese';
        }
      }
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Page2')),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text("Your BMI is: " + bmi.bmi().toString(), style: TextStyle()),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pop();
                  });
                },
                child: Icon(Icons.navigate_before, size: 50)),
            Text("You are $status"),
          ],
        ),
      ),
      backgroundColor: bg,
    );
  }
}
