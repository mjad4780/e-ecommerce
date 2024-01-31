import 'package:e_ecommerce/auth/cubit/user_cubit.dart';
import 'package:e_ecommerce/auth/cubit/user_state.dart';
import 'package:e_ecommerce/auth/widget/validate.dart';
import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:e_ecommerce/widget/text.dart';
import 'package:e_ecommerce/widget/botom.dart';
import 'package:e_ecommerce/widget/social_account.dart';
import 'package:e_ecommerce/widget/text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("success"),
            ),
          );
          pushpushReplacement(context, "/profile");
        } else if (state is SignInFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage)),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(),
            body: Form(
              key: context.read<UserCubit>().formkey,
              autovalidateMode: context.read<UserCubit>().autovalidateMode,
              child: Padding(
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
                  CustomInputField(
                    validator: (data) {
                      return newMethod(data, 'is requied');
                    },
                    controller: context.read<UserCubit>().signInEmail,
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
                  CustomInputField(
                    validator: (data) {
                      return newMethod(data, 'is requied');
                    },
                    controller: context.read<UserCubit>().signInPassword,
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
                  state is SignInLoading
                      ? CircularProgressIndicator()
                      : CustomFormButton(
                          onPressed: () {
                            if (context
                                .read<UserCubit>()
                                .formkey
                                .currentState!
                                .validate()) {
                              context.read<UserCubit>().signIn();
                            } else {
                              context.read<UserCubit>().autovalidateMode =
                                  AutovalidateMode.always;
                            }
                          },
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
              ),
            ));
      },
    );
  }
}
