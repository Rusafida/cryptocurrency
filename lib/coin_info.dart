
import 'package:flutter/material.dart';
import 'package:new_project/home_page.dart';
import 'package:new_project/home_screen.dart';

class CoinInfo extends StatelessWidget {
  const CoinInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17171F),
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: const Color(0xFF17171F),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BuildNavigationBarCoin(Icons.arrow_upward, 'Send',context),
            BuildNavigationBarCoin(Icons.arrow_downward, 'receive',context),
            BuildNavigationBarCoin(Icons.compare_arrows, 'Swap',context),
            BuildNavigationBarCoin(Icons.attach_money, 'Buy',context),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset(
              'assets/images/Header card.png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 230,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF17171F),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 140,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 5, top: 0),
                            child: Text(
                              'Coin Balance',
                              style: TextStyle(
                                color: Color.fromARGB(94, 255, 255, 255),
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 310,
                    height: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '0.0095BTC',
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    margin: EdgeInsets.all(20),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '\$267.38',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 65,
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: const [
                          Text(
                            'About',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 328,
                    height: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xFF17171F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'As the first decentralized virtual currency to meet widespread popularity and success, Bitcoin has inspired a host of other cryptocurrencies in its wake.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column BuildNavigationBarCoin(IconData icon, String txt,context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF17171F),
              borderRadius: BorderRadius.circular(10),
              // shape: BoxShape.circle,
            ),
            height: 50,
            width: 50,
            child: IconButton(
              icon: Icon(
                icon,
                color: const Color.fromARGB(255, 202, 235, 203),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
            ),
          ),
        ),
        Container(
          child: Text(txt,
              style: const TextStyle(letterSpacing: 1, color: Colors.grey)),
        )
      ],
    );
  }
}
