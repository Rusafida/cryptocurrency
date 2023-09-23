import 'package:flutter/material.dart';
import 'package:new_project/send.dart';

class Swap extends StatelessWidget {
  const Swap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17171F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF17171F),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Send()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Center(
          child: Text(
            'Swap',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                letterSpacing: 1,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'You Pay',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Balance: 3.09ETH',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromARGB(112, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SwapMethod(context, 'USD Icon', 'Ethereum',Icons.arrow_drop_down_outlined, '0.15ETH\n\$270.1'),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'You receive',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color:Color.fromARGB(255, 183, 220, 185),
                    shape: BoxShape.circle
                  ),
                  child: const Icon(
                    Icons.compare_arrows_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SwapMethod(context, 'bitimg', 'Bitcoin',
              Icons.arrow_drop_down_outlined, '0.0095 BTC\n\$287.38'),
        ],
      ),
    );
  }

  Container SwapMethod(BuildContext context, String img, String txt,
      IconData icon, String title) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 120, 120, 128),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Image.asset(img), Text(txt), Icon(icon), Text(title)],
      ),
    );
  }
}
