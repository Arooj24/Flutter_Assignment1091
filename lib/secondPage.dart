import 'package:flutter/material.dart';

void main() {
  runApp(secondPage());
}

class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);

  Text mytext(String title, double fontSize) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
      ),
    );
  }

  SizedBox imageBox(String image) {
    return SizedBox(
      height: 45,
      width: 45,
      child: Image.asset(image),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(42),
              bottomRight: Radius.circular(42)),
        ),
        child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Container(
                  height: double.infinity,
                  width: 400,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(),
                            imageBox('assets/images/dot.PNG'),
                            SizedBox(width: 262),
                            imageBox('assets/images/dp.PNG'),
                          ],
                        ),
                        SizedBox(height: 32),
                        mytext('Hi Kamran', 40),
                        mytext('   Good Morning!', 20),
                        SizedBox(height: 15),
                        Center(child: Image.asset('assets/images/label.png')),
                        SizedBox(height: 14),
                        mytext('Adopt Pet', 26),
                        SizedBox(height: 6),
                        Row(children: [
                          Image.asset('assets/images/jackson.png'),
                          Image.asset('assets/images/shelly.png'),
                        ]),
                        SizedBox(height: 6),
                        Row(children: [
                          Image.asset('assets/images/pet.png'),
                          Image.asset('assets/images/white.png')
                        ])
                      ])),
            )),
      ),
    )));
  }
}
