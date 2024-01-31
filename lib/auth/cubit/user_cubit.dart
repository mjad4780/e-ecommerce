import 'package:bloc/bloc.dart';


import 'package:e_ecommerce/auth/cubit/user_state.dart';


import 'package:e_ecommerce/auth/models/profile_models.dart';


import 'package:e_ecommerce/auth/models/sign_in_model.dart';


import 'package:e_ecommerce/auth/models/sign_up_model.dart';


import 'package:e_ecommerce/core/api/api_consumer.dart';


import 'package:e_ecommerce/core/api/end_ponits.dart';


import 'package:e_ecommerce/core/cache/cache_helper.dart';


import 'package:e_ecommerce/core/errors/exceptions.dart';


import 'package:flutter/material.dart';


import 'package:image_picker/image_picker.dart';


class UserCubit extends Cubit<UserState> {

  UserCubit({required this.api}) : super(UserInitial());


  final ApiConsumer api;


  //Sign in Form key


  //Sign in email


  TextEditingController signInEmail = TextEditingController();


  //Sign in password


  TextEditingController signInPassword = TextEditingController();


  XFile? profilePic;


  //Sign up name


  TextEditingController signUpName = TextEditingController();


  //Sign up phone number


  TextEditingController signUpPhoneNumber = TextEditingController();


  //Sign up email


  TextEditingController signUpEmail = TextEditingController();


  //Sign up password


  TextEditingController signUpPassword = TextEditingController();


  //Sign up confirm password


  TextEditingController confirmPassword = TextEditingController();


  final GlobalKey<FormState> formkey = GlobalKey();


  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;


  models? user;


  uploadProfilePic(XFile image) {

    profilePic = image;

    emit(UploadProfilePic());

  }


  signUp() async {

    try {

      emit(SignUpLoading());


      Map<String, dynamic> response = await api.post(

        EndPoint.signUp,

        isFromData: false,

        data: {

          ApiKey.name: signUpName.text,


          ApiKey.phone: signUpPhoneNumber.text,


          ApiKey.email: signUpEmail.text,


          ApiKey.password: signUpPassword.text,


          //  ApiKey.confirmPassword: confirmPassword.text,


          // ApiKey.location:


          // '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}',


          // ApiKey.profilePic: await uploadImageToAPI(profilePic!)

        },

      );


      final signUPModel = SignUpModel.fromJson(response);


      print(signUPModel.message);


      emit(SignUpSuccess(message: signUPModel.message));

    } on ServerException catch (e) {

      emit(SignUpFailure(errMessage: e.errModel.errorMessage));

    }

  }


  userprofile() async {

    emit(profilLoading());


    try {

      final response = await api.get(

        EndPoint.profile,

      );


      print(response);


      // print(prov);


      emit(profilSuccess(user: profil.fromJson(response)));

    } on ServerException catch (e) {

      //print('prov$prov');


      emit(profilFailure(errMessage: e.errModel.errorMessage));

    }

  }


  signIn() async {

    try {

      emit(SignInLoading());


      final response = await api.post(

        EndPoint.signIn,

        data: {

          ApiKey.email: signInEmail.text,

          ApiKey.password: signInPassword.text,

        },

      );


      user = models.fromJson(response);


      //final decodedToken = JwtDecoder.decode(user!.data!.token);//id لاستخراج tokenاو كان طالب فك  التشفير عن


      CacheHelper.saveData(

          key: ApiKey.token, value: user!.data!.token); //cache في tokenحفظ


      //  CacheHelper.saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);//cache في  idحفظ

      emit(SignInSuccess());

    } on ServerException catch (e) {

      emit(SignInFailure(errMessage: e.errModel.errorMessage));

    }

  }

}

