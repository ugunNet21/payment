import 'package:flutter/material.dart';
import 'package:payment_apps/theme.dart';

void main() {
  runApp(PaymentApps());
}

class PaymentApps extends StatefulWidget {
  @override
  State<PaymentApps> createState() => _PaymentAppsState();
}

class _PaymentAppsState extends State<PaymentApps> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget option(int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: selectedIndex == index
                    ? Color(0xff007DFF)
                    : Color(0xff4D5B7C),
              )),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
          left: 32,
          right: 32,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/icon_payment.png',
                width: 267,
                height: 200,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Upgrade to",
                  style: titleTextStyle,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Pro',
                  style: titleProTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Go unlock all features and \nbuild your own business bigger',
              style: subTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff04112f),
        body: Column(
          children: [
            header(),
            option(0),
            option(1),
            option(2),
          ],
        ),
      ),
    );
  }
}
