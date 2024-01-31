import 'package:e_ecommerce/auth/widget/validate.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:e_ecommerce/widget/text.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';

class forget_password extends StatefulWidget {
  const forget_password({super.key});

  @override
  State<forget_password> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            input_text(text: 'Forget Password', fontSize: 30),
            const SizedBox(
              height: 30,
            ),
            input_text(text: 'email', fontSize: 18),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomInputField(
                hintText: 'email',
                validator: (data) {
                  return newMethod(data, 'is requied');
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomFormButton(
                innerText: 'send',
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
