import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/sign_in/admin/admin_sign_in_bloc.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/admin/screen.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';

import '../../../authorization.dart';

class AdminSignInScreen extends StatefulWidget {
  static const String id = 'admin_sign_in';

  const AdminSignInScreen({Key? key}) : super(key: key);

  static Widget create() {
    return BlocProvider<AdminSignInBloc>(
      create: (context) => AdminSignInBloc(AuthProvider())
        ..add(const AdminSignInEvent.initial()),
      child: AdminSignInScreen(),
    );
  }

  @override
  _AdminSignInScreenState createState() => _AdminSignInScreenState();
}

class _AdminSignInScreenState extends State<AdminSignInScreen> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.red,
      appBar: PreviousButton(),
      body: BlocConsumer<AdminSignInBloc, AdminSignInState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () => state,
              signIn: (_state) {
                if (_state.status.isInvalid) {
                  SmallWidgets.scaffoldMessage(
                      context: context, message: "Заполняте все строки");
                }
                if (_state.status.isSubmissionFailure) {
                  SmallWidgets.scaffoldMessage(
                      context: context, message: "Нет доступ к интернету");
                }
                if (_state.status.isSubmissionSuccess) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, AdminScreen.id, (Route<dynamic> route) => false);
                }
              });
        },
        builder: (context, state) {
          return state.map(
              initial: (_) => const SizedBox.shrink(),
              signIn: (_state) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 5.0,
                      ),
                      FittedBox(
                        child: Text(
                          "Войдите в ваш аккаунт",
                          style: AppTextTheme.mediumTextWhite,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      TextField(
                        style: AppTextTheme.smallTextWhite,
                        onChanged: (value) {
                          username = value;
                        },
                        decoration: TextFieldDecoration.decoration("Логин"),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        style: AppTextTheme.smallTextWhite,
                        onChanged: (value) {
                          password = value;
                        },
                        obscureText: true,
                        decoration: TextFieldDecoration.decoration("Пароль"),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      WhiteButtonWidget(
                        child: _state.status.isSubmissionInProgress
                            ? CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColor.white))
                            : Text(
                                "Войти",
                                style: AppTextTheme.smallTextWhite,
                              ),
                        onPressed: _state.status.isSubmissionInProgress
                            ? () {}
                            : () => context.read<AdminSignInBloc>().add(
                                AdminSignInEvent.signIn(
                                    username: username, password: password)),
                      ),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
