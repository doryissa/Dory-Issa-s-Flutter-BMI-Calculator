import 'package:flutter/material.dart';
import 'result.dart';
import 'bmi.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String bmi = "BMI";
  String gender = "male";
  double height = 192;
  int weight = 70;
  int age = 18;
  Color result = Color.fromARGB(255, 255, 64, 64);

  TextEditingController controllerBmi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bmi),
        centerTitle: true,
        backgroundColor: result,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.pink,
                    padding: EdgeInsets.all(5),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          gender = "female";
                          print(gender);
                        });
                      },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 50,
                          ),
                          SizedBox(height: 20),
                          Text("Female",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30))
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Container(
                      height: 200,
                      color: Colors.blue,
                      padding: const EdgeInsets.all(5),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            gender = "male";
                            // print(gender);
                          });
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 50,
                            ),
                            SizedBox(height: 20),
                            Text("Male",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30))
                          ],
                        ),
                      )),
                ),
                const SizedBox(width: 20)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromRGBO(153, 153, 153, 100),
                    width: 360,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Height",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        Text(height.toInt().toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 30)),
                        Slider(
                            value: height,
                            min: 70,
                            max: 230,
                            onChanged: (value) => {
                                  setState(() {
                                    height = value;
                                  })
                                })
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 200,
                    color: Colors.red,
                    width: 200,
                    child: Column(
                      children: [
                        const Text("Age",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(age.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 30)),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.only(top: 10, bottom: 10)),
                              ),
                              // padding: EdgeInsets.all(10),
                              // color: Colors.blue,
                              onPressed: () {
                                setState(() {
                                  age--;
                                  print(age);
                                });
                              },
                              child: const Icon(
                                Icons.exposure_minus_1,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            ElevatedButton(
                              style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.only(top: 10, bottom: 10)),
                              ),
                              // padding: EdgeInsets.all(10),
                              // color: Colors.blue,
                              onPressed: () {
                                setState(() {
                                  age++;
                                  print(age);
                                });
                              },
                              child: const Icon(
                                Icons.plus_one,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 200,
                    color: Colors.green,
                    width: 200,
                    child: Column(
                      children: [
                        const Text("Weight",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(weight.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 30)),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.only(top: 10, bottom: 10)),
                              ),
                              // padding: EdgeInsets.all(10),
                              // color: Colors.blue,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                  print(weight);
                                });
                              },
                              child: const Icon(
                                Icons.exposure_minus_1,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            ElevatedButton(
                              style: const ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.only(top: 10, bottom: 10)),
                              ),
                              // padding: EdgeInsets.all(10),
                              // color: Colors.blue,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                  // print(weight);
                                });
                              },
                              child: const Icon(
                                Icons.plus_one,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                    ),
                    onPressed: () {
                      try {
                        setState(() {
                          double temp = (weight * 10000) / (height * height);

                          bmi = temp.toInt().toString();

                          BMI bmiResult = BMI(age, weight, height, gender);

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Result(),
                              settings: RouteSettings(arguments: bmiResult),
                            ),
                          );
                        });
                      } catch (e) {
                        // print(e);
                      }
                    },
                    child: const Text(
                      "Calculate",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
