import 'package:flutter/material.dart';
import 'package:new_project/send.dart';

class SendReceiveSwap extends StatelessWidget {
  const SendReceiveSwap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 173, 232, 175),
              shape: BoxShape.circle,
            ),
             child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Send()));
                  },
                  icon: const Icon(Icons.arrow_upward),
                ),
          )
        ],
      ),
    );
  }
}
