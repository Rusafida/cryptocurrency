import 'package:flutter/material.dart';
import 'package:new_project/home_page.dart';
import 'package:new_project/home_screen.dart';

class Send extends StatelessWidget {
  const Send({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17171F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF17171F),
        title: const Center(
          child: Text(
            'Send',
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
                context, MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 98,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF17171F),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Select Currency',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF252530),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/bitimg.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Bitcoin',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF17171F),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Address',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF252530),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        '010223jjnbee5eeu28929100394.....',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Positioned(
                  left: 0,
                  child: Text(
                    'Only BTC can be send to this address',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromARGB(136, 255, 255, 255),
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF17171F),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Amount',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF252530),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '0.025BTC ',
                              style: TextStyle(
                                color: Color(0xFFF5F5F5),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '(\$750.0)',
                              style: TextStyle(
                                color: Color.fromARGB(153, 245, 245, 245),
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Balance: 3.56 BTC',
                  style: TextStyle(
                    color: Color.fromARGB(132, 255, 255, 255),
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFBFF5C7),
              ),
              child:
              const Center(
                 child:  Text(
                  'Send',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
              ),
               ),
            ),
          ),
        ],
      ),
    );
  }
}
