import 'package:flutter/material.dart';
import 'package:new_project/home_page.dart';
import 'package:new_project/home_screen.dart';

class Final extends StatelessWidget {
  const Final({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17171F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF17171F),
        leading: IconButton(
          onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              'We will be right back',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
