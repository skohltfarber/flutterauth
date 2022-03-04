import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterauth/Screens/Login/components/already_have_an_account_check.dart';
import 'package:flutterauth/Screens/Login/components/background.dart';
import 'package:flutterauth/Screens/Signup/signup_screen.dart';
import 'package:flutterauth/components/rounded_button.dart';
import 'package:flutterauth/components/textfield_container.dart';
import 'package:flutterauth/constrants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            TextFieldContainer(
              child: TextField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  iconColor: kPrimaryColor,
                  labelText: "Your Email",
                  border: InputBorder.none,
                ),
                onChanged: (newValue) {},
              ),
            ),
            TextFieldContainer(
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  iconColor: kPrimaryColor,
                  suffixIcon: Icon(Icons.visibility),
                  suffixIconColor: kPrimaryColor,
                  labelText: "Password",
                  border: InputBorder.none,
                ),
                onChanged: (newValue) {},
              ),
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
