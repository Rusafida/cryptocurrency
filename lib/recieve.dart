
import 'package:flutter/material.dart';
import 'package:new_project/home_page.dart';
import './home_screen.dart';

class Receive extends StatelessWidget {
  const Receive({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17171F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF17171F),
        title: const Center(
          child: Text(
            'Receive',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
              fontFamily: 'poppins',
              height: 1.5,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              decoration: ShapeDecoration(
                color: const Color(0xFF17171F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              width: 64,
              height: 64,
              // padding:const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/images/bitimg.png',
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 198,
            height: 48,
            decoration: ShapeDecoration(
              color: const Color(0xFF17171F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
            child: const Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'BTC',
                      style: TextStyle(
                        color: Color(0xFFF5F5F5),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: '(BEP20)',
                      style: TextStyle(
                        color: Color.fromARGB(153, 245, 245, 245),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: 286,
            height: 286,
            decoration: ShapeDecoration(
              color: const Color(0xFF17171F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
            child: Image.asset(
              'assets/images/QR Code.png',
              width: 60,
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 328,
            height: 72,
            decoration: ShapeDecoration(
              color: Color.fromARGB(44, 226, 224, 224),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
            child: Container(
              width: 286,
              height: 48,
              decoration: ShapeDecoration(
                color: Color.fromARGB(27, 23, 23, 31),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              child: const Center(
                child: Text(
                  '010223jjnbee5eeu289291003945hk\nk42f22keem1a3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 225,
            height: 18,
            decoration: ShapeDecoration(
              color: Color.fromARGB(27, 23, 23, 31),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
            child: const Center(
              child: Text(
                'Only BTC can be send to this address',
                style: TextStyle(
                    color: Color.fromARGB(49, 255, 255, 255), fontSize: 10),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: 309,
            height: 52,
            decoration: ShapeDecoration(
              color: const Color(0xFF17171F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 140,
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(49, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Share',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                 Container(
                  width: 140,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Color(0xFFBFF5C7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Copy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
