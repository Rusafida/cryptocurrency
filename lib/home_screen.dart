

import 'package:flutter/material.dart';
import 'package:new_project/final.dart';

import 'package:new_project/swap.dart';
import './coin_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17171F),
      bottomNavigationBar: Container(
        height: 50,
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
            BuildContainerBottomNav(Icons.wallet, 'Wallet'),
            BuildContainerBottomNav(Icons.attach_money, 'Buy/Sell'),
            BuildContainerBottomNav(Icons.school, 'Academy'),
            BuildContainerBottomNav(Icons.settings, 'Settings'),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xFF17171F),
        toolbarHeight: 80,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.qr_code,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 150,
              decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                gradient: LinearGradient(
                  begin: const Alignment(-0.94, 0.35),
                  end: const Alignment(0.94, 0.35),
                  colors: [
                    // const Color(0xFF17171F),
                    const Color(0xAAAAAAAAA),
                    const Color(0x14F5F5F5),
                    const Color(0xFFBFF5C7).withOpacity(0.4),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Your Balance',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 19),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$15938.16',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                      ),
                      // Padding(
                      // padding: const EdgeInsets.only(),
                      Image.asset(
                        'assets/images/Vector.png',
                        alignment: Alignment.centerLeft,
                      ),
                      // )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      '+\$1204  (75.5%)',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, letterSpacing: 1),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FirstContainer(Icons.arrow_upward, 'Send',context),
            FirstContainer(Icons.arrow_downward, 'Receive',context),
            FirstContainer(Icons.compare_arrows, 'Swap',context),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF17171F),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(30)),
                  Container(
                    width: 200,
                    height: 20,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 184, 223, 185),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        'Coin',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Final()));
                    },
                    child: Container(
                      width: 200,
                      height: 20,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(174, 71, 66, 66),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                          child: Text(
                        'NFT',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                ThirdContainer('bitimg', 'Bitcoin', '0.05101 BTC', '\$4179.12',
                    '+15.1%', context),
                ThirdContainer('bitimg', 'Bitcoin', '0.05101 BTC', '\$4179.12',
                    '+15.1%', context),
                ThirdContainer('bitimg', 'Bitcoin', '0.05101 BTC', '\$4179.12',
                    '+15.1%', context),
                ThirdContainer('bitimg', 'Bitcoin', '0.05101 BTC', '\$4179.12',
                    '+15.1%', context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Column BuildContainerBottomNav(IconData icon, String txt,) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF17171F),
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
          ),
          height: 50,
          width: 50,
          child: Icon(
            icon,
            color: Color.fromARGB(255, 202, 235, 203),
          ),
        ),
        Container(
          child: Text(
            txt,
            style: const TextStyle(letterSpacing: 1, color: Colors.grey),
          ),
        )
      ],
    );
  }

  SingleChildScrollView ThirdContainer(String img, String title, String txt,
      String title1, String txt1, context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CoinInfo()));
            },
            child: Container(
              width: 328,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF252530),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Image.asset(img,width: 30,height: 50,color: Colors.black,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(letterSpacing: 1),
                      ),
                      Text(
                        txt,
                        style: TextStyle(letterSpacing: 1, color: Colors.grey),
                      )
                    ],
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title1,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          txt1,
                          style: const TextStyle(
                              letterSpacing: 1, color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container FirstContainer(IconData icon, String txt,context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF17171F),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 173, 232, 175),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Swap()));
                  },
                  icon: Icon(icon),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  txt,
                  style: const TextStyle(color: Colors.white, letterSpacing: 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
