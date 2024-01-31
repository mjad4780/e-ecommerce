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
          child: ListView(children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
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
            const SizedBox(
              height: 20,
            ),
            input_text(text: 'name'),
            const SizedBox(
              height: 11,
            ),
            const CustomInputField(
              hintText: 'name',
            ),
            const SizedBox(
              height: 11,
            ),
            input_text(text: 'phone'),
            const SizedBox(
              height: 11,
            ),
            const CustomInputField(
              hintText: 'phone',
            ),
            const SizedBox(
              height: 11,
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
            input_text(text: 'password'),
            const SizedBox(
              height: 11,
            ),
            const CustomInputField(
              hintText: 'password',
            ),
            const SizedBox(
              height: 35,
            ),
            const CustomFormButton(
              innerText: 'Rigster',
            ),
            const SizedBox(
              height: 15,
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
