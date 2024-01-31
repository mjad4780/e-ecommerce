import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:e_ecommerce/widget/text.dart';
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
          child: ListView(children: [
            const SizedBox(
              height: 35,
            ),
            const Padding(
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
            const SizedBox(
              height: 30,
            ),
            input_text(text: 'email'),
            const SizedBox(
              height: 11,
            ),
            const CustomInputField(
              hintText: 'email',
            ),
            const SizedBox(
              height: 11,
            ),
            input_text(
              text: 'password',
              onTap: () => push(context, "/forget_password"),
            ),
            const SizedBox(
              height: 11,
            ),
            const CustomInputField(
              hintText: 'password',
            ),
            const SizedBox(
              height: 11,
            ),
            Padding(
              padding: EdgeInsets.only(right: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  input_text(
                    fontSize: 16,
                    text: 'Forget your password?',
                    color: Colors.blue,
                    onTap: () {
                      push(context, "/forget_password");
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomFormButton(
              innerText: 'Login',
            ),
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: input_text(
                text: 'Or login with social account',
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const social_account()
          ]),
        ));
  }
}
