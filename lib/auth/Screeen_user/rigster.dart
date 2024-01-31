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

class Rigster extends StatelessWidget {
  const Rigster({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("success"),
            ),
          );
          pushpushReplacement(context, "/Login");
          context.read<UserCubit>().userprofile();
        } else if (state is SignUpFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage)),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              elevation: 0,
            ),
            body: Form(
              key: context.read<UserCubit>().formkey,
              autovalidateMode: context.read<UserCubit>().autovalidateMode,
              child: Padding(
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
                  CustomInputField(
                    validator: (data) {
                      return newMethod(data, 'is requied');
                    },
                    controller: context.read<UserCubit>().signUpName,
                    hintText: 'name',
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  input_text(text: 'phone'),
                  const SizedBox(
                    height: 11,
                  ),
                  CustomInputField(
                    validator: (data) {
                      return newMethod(data, 'is requied');
                    },
                    controller: context.read<UserCubit>().signUpPhoneNumber,
                    hintText: 'phone',
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  input_text(text: 'email'),
                  const SizedBox(
                    height: 11,
                  ),
                  CustomInputField(
                    validator: (data) {
                      return newMethod(data, 'is requied');
                    },
                    controller: context.read<UserCubit>().signUpEmail,
                    hintText: 'email',
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  input_text(text: 'password'),
                  const SizedBox(
                    height: 11,
                  ),
                  CustomInputField(
                    validator: (data) {
                      return newMethod(data, 'is requied');
                    },
                    controller: context.read<UserCubit>().signUpPassword,
                    hintText: 'password',
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  state is SignUpLoading
                      ? CircularProgressIndicator()
                      : CustomFormButton(
                          onPressed: () {
                            if (context
                                .read<UserCubit>()
                                .formkey
                                .currentState!
                                .validate()) {
                              context.read<UserCubit>().signUp();
                            } else {
                              context.read<UserCubit>().autovalidateMode =
                                  AutovalidateMode.always;
                            }
                          },
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
              ),
            ));
      },
    );
  }
}
