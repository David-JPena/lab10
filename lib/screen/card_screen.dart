import 'package:flutter/material.dart';
import 'package:lab10/widgets/custom_card_type1.dart';
import 'package:lab10/widgets/custom_card_type2.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color iconColor = Theme.of(context).primaryColor;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widgwt"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            Customcardone1(),
            SizedBox(height: 16.0),
            Customcardone2(),
            SizedBox(height: 16.0),
            Customcardone2(), 
            SizedBox(height: 16.0),
            Customcardone2()
          ],
        ));
  }
}
