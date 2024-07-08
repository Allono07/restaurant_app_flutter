import 'package:flutter/cupertino.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Column(
        children: [
          Text("Thankyou for your orer"),
          Container(
            child: Text("Receipt here."),
          )
        ],
      ),
    );
  }
}
