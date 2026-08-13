import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  Color backgroundColor = Colors.white;
  var weightController = TextEditingController();
  var heightInFeetController = TextEditingController();
  var heightInInchController = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: weightController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Your Weight"),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                controller: heightInFeetController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Your Height (Feet)"),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                controller: heightInInchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Your Height (Inch)"),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: result.isNotEmpty
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceEvenly,
                children: [
                  if (result.isNotEmpty)
                    ElevatedButton(
                      onPressed: () {
                        backgroundColor = Colors.white;
                        heightInFeetController.clear();
                        heightInInchController.clear();
                        weightController.clear();
                        setState(() {
                          result = "";
                        });
                      },
                      child: Text(
                        "Reset",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    ),
                    if (result.isNotEmpty)
                    SizedBox(width: 15,),

                  ElevatedButton(
                    onPressed: () {
                      if (weightController.text != "" &&
                          (heightInFeetController.text != "" ||
                              heightInInchController.text != "")) {
                        final weight = double.parse(
                          weightController.text.toString(),
                        );
                        final heightInFeet = double.parse(
                          heightInFeetController.text.toString(),
                        );
                        final heightInInch = double.parse(
                          heightInInchController.text.toString(),
                        );
                        final height =
                            (heightInFeet * 30.48 + heightInInch * 2.54) / 100;
                        var bmi = weight / (height * height);

                        setState(() {
                          result = "${bmi.toStringAsFixed(2)}";
                        });

                        if (bmi < 18.5) {
                          backgroundColor = Colors.blue;
                        } else if (bmi >= 18.5 && bmi < 24.9) {
                          backgroundColor = Colors.green;
                        } else if (bmi >= 25 && bmi < 29.9) {
                          backgroundColor = Colors.yellow;
                        } else if (bmi >= 30) {
                          backgroundColor = Colors.red;
                        }
                      } else {
                        setState(() {
                          result = "Please Enter Weight and Height";
                        });
                      }
                    },
                    child: Text(
                      "Calculate BMI",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              result != "" ? Text("BMI Result: ${result}") : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
