import 'package:flutter/material.dart';
import 'package:unbin/main_screen.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 241, 216, 226),
                  Color.fromARGB(255, 138, 68, 95),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 350,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Image.asset(
                      'images/campus.png',
                      width: 250,
                    ),
                    const Text(
                      'by Mirnawati',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(169, 255, 255, 255),
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 100,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const MainScreen()));
                      },
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 204, 148, 167),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Center(
                          child: Text(
                            'Lets Get Search!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
