import 'package:e_ecommerce/auth/cubit/user_cubit.dart';
import 'package:e_ecommerce/auth/cubit/user_state.dart';
import 'package:e_ecommerce/core/Navigator/Navigator.dart';
import 'package:e_ecommerce/core/api/end_ponits.dart';
import 'package:e_ecommerce/core/cache/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class profile extends StatelessWidget {
  profile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (BuildContext context, state) {
        if (state is logoutFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
            ),
          );
        } else if (state is logoutSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('succesas'),
            ),
          );

          print('ckjjjjjhhhhhhhhhhhhhhhhhhhhhhhhhhh');
          print('ckjjjjjhhhhhhhhhhhhhhhhhhhhhhhhhhh');
          pushpushReplacement(context, '/Login');
        } else if (state is profilFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: state is profilLoading
              ? CircularProgressIndicator()
              : state is profilSuccess
                  ? ListView(
                      children: [
                        const SizedBox(height: 16),

                        // CircleAvatar(
                        //   radius: 80,
                        //   backgroundImage:NetworkImage(state.user.image!),
                        // ),
                        const SizedBox(height: 16),

                        //! Name
                        ListTile(
                          title: Text(state.user.data!.name!),
                          leading: Icon(Icons.person),
                        ),
                        const SizedBox(height: 16),

                        //! Email
                        ListTile(
                          title: Text(state.user.data!.email!),
                          leading: Icon(Icons.email),
                        ),
                        const SizedBox(height: 16),

                        //! Phone number
                        ListTile(
                          title: Text(state.user.data!.phone!),
                          leading: Icon(Icons.phone),
                        ),
                        const SizedBox(height: 16),

                        //! Address
                        ListTile(
                          title: Text(state.user.data!.token!),
                          leading: Icon(Icons.location_city),
                        ),
                        const SizedBox(height: 16),
                      ],
                    )
                  : Container(
                      child: Center(
                      child: Column(
                        children: [
                          Text('data'),
                          SizedBox(
                            height: 50,
                          ),
                          IconButton(
                              onPressed: () {
                                context.read<UserCubit>().userprofile();

                                push(context, "/profile");
                              },
                              icon: Icon(Icons.abc)),
                          IconButton(
                              onPressed: () {
                                CacheHelper().clearData(key: ApiKey.token);
                              },
                              icon: Icon(Icons.ac_unit_rounded)),
                          state is logoutLoading
                              ? CircularProgressIndicator()
                              : IconButton(
                                  onPressed: () {
                                    context.read<UserCubit>().Logout();
                                    print('ckjjjjjhhhhhhhhhhhhhhhhhhhhhhhhhhh');
                                  },
                                  icon: Icon(Icons.gamepad))
                        ],
                      ),
                    )),
        );
      },
    );
  }
}
