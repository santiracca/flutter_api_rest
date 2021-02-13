import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';
import 'package:flutter_api_rest/widgets/login_form.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double pinkSize = responsive.wp(80);
    final double orangeSize = responsive.wp(57);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Circle(
                    size: pinkSize,
                    colors: [
                      Colors.pinkAccent,
                      Colors.pink,
                    ],
                  ),
                  right: -(pinkSize) * 0.2,
                  top: -(pinkSize) * 0.4,
                ),
                Positioned(
                  child: Circle(
                    size: orangeSize,
                    colors: [Colors.orange, Colors.deepOrangeAccent],
                  ),
                  left: -(orangeSize) * 0.15,
                  top: -(orangeSize) * 0.5,
                ),
                Positioned(
                  top: pinkSize * 0.35,
                  child: Column(
                    children: [
                      IconContainer(size: responsive.wp(20)),
                      SizedBox(height: responsive.dp(3)),
                      Text("Hello Again\nWelcome Back",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: responsive.dp(1.6),
                          )),
                    ],
                  ),
                ),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
