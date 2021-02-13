import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 430 : 360,
        ),
        child: Column(
          children: [
            InputText(
              labelText: 'Email Address',
              onChanged: (text) {
                print(text);
              },
              keyboardType: TextInputType.emailAddress,
              fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
            ),
            SizedBox(height: responsive.dp(2)),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InputText(
                      labelText: 'Password',
                      onChanged: (val) {
                        print(val);
                      },
                      obscureText: true,
                      borderEnabled: false,
                      fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                    ),
                  ),
                  FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(height: responsive.dp(5)),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                onPressed: () {},
                child: Text("Sign In",
                    style: TextStyle(fontSize: responsive.dp(1.5))),
                textColor: Colors.white,
                color: Colors.pinkAccent,
              ),
            ),
            SizedBox(height: responsive.dp(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New to Friendly Desi?',
                    style: TextStyle(fontSize: responsive.dp(1.5))),
                FlatButton(
                  child: Text("Sign up",
                      style: TextStyle(fontSize: responsive.dp(1.5))),
                  textColor: Colors.pinkAccent,
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(height: responsive.dp(10)),
          ],
        ),
      ),
    );
  }
}
