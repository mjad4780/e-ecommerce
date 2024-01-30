import 'package:e_ecommerce/widget/TEXT.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:e_ecommerce/widget/social_account.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: const [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 44),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const input_text(text: 'email'),
            SizedBox(
              height: 11,
            ),
            CustomInputField(
              hintText: 'email',
            ),
            SizedBox(
              height: 11,
            ),
            const input_text(text: 'password'),
            SizedBox(
              height: 11,
            ),
            CustomInputField(
              hintText: 'password',
            ),
            SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  input_text(
                    fontSize: 16,
                    text: 'Forget your password?',
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomFormButton(
              innerText: 'Login',
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: input_text(
                text: 'Or login with social account',
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            social_account()
          ]),
        ));
  }
}
