import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Text mytext(String title, Color color, double fontSize) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255, 241, 129, 30),
            child: SizedBox(
                height: double.infinity,
                width: 400,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    mytext('GET PET', Color.fromARGB(255, 253, 248, 248), 60),
                    SizedBox(height: 20),
                    Image.asset('assets/images/black.png'),
                    SizedBox(height: 30),
                    mytext('''Find your favorite''',
                        Color.fromARGB(255, 253, 247, 247), 24),
                    mytext('''Pet close to you''',
                        Color.fromARGB(255, 252, 246, 246), 24),
                    SizedBox(height: 5),
                    mytext('Join and discover your favorit pet in',
                        Color.fromARGB(255, 252, 233, 65), 12),
                    mytext('Your loayality', Color.fromARGB(255, 252, 231, 46),
                        15),
                    SizedBox(height: 19),
                    SizedBox(
                      height: 42,
                      width: 252,
                      child: FlatButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        onPressed: () {},
                        child: mytext('Get Started',
                            Color.fromARGB(255, 243, 219, 6), 16),
                      ),
                    )
                  ],
                )))),
      )),
    );
  }
}
