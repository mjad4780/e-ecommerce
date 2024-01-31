import 'package:e_ecommerce/widget/text.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:e_ecommerce/widget/social_account.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';

class Rigster extends StatelessWidget {
  const Rigster({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: const [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    'Rigster',
                    style: TextStyle(fontSize: 44),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const input_text(text: 'name'),
            SizedBox(
              height: 11,
            ),
            CustomInputField(
              hintText: 'name',
            ),
            SizedBox(
              height: 11,
            ),
            const input_text(text: 'phone'),
            SizedBox(
              height: 11,
            ),
            CustomInputField(
              hintText: 'phone',
            ),
            SizedBox(
              height: 11,
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
              height: 35,
            ),
            CustomFormButton(
              innerText: 'Rigster',
            ),
            SizedBox(
              height: 15,
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
