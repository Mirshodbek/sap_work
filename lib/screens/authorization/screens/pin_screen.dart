import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/screens/authorization/widgets/previous_button.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';

import '../authorization.dart';

class PinScreen extends StatefulWidget {
  static const String id = 'pin';

  static Widget create() {
    return MultiBlocProvider(providers: [
      BlocProvider<UserSignInBloc>(
          create: (_) =>
              UserSignInBloc(AuthProvider())..add(UserSignInEvent.initial())),
      BlocProvider<CompanySignInBloc>(
        create: (_) => CompanySignInBloc(AuthProvider())
          ..add(CompanySignInEvent.initial()),
      ),
    ], child: PinScreen());
  }

  const PinScreen({Key? key}) : super(key: key);

  @override
  _PinScreenState createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  String _pinCode = '';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return MultiBlocListener(
      listeners: [
        BlocListener<UserSignInBloc, UserSignInState>(
          listener: (context, state) {
            if (state == UserSignInState.successSignIn()) {
              Navigator.pushNamedAndRemoveUntil(
                  context, NavigationBar.id, (Route<dynamic> route) => false,
                  arguments: {ROLE: USER_ROLE});
            }
          },
        ),
        BlocListener<CompanySignInBloc, CompanySignInState>(
          listener: (context, state) {
            if (state == CompanySignInState.successSignIn()) {
              Navigator.pushNamedAndRemoveUntil(
                  context, NavigationBar.id, (Route<dynamic> route) => false,
                  arguments: {ROLE: COMPANY_ROLE});
            }
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColor.red,
        appBar: PreviousButton(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _pinCode = value;
                  });
                },
                obscureText: true,
                decoration: TextFieldDecoration.decoration("Код из смс"),
                style: AppTextTheme.smallTextWhite,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              WhiteButtonWidget(
                  child: Text("Войти", style: AppTextTheme.smallTextWhite),
                  onPressed: () {
                    if (arguments[ROLE] == USER_ROLE) {
                      Future.sync(() => context.read<UserSignInBloc>().add(
                              UserSignInEvent.telephoneChanged(
                                  phone: Phone.dirty(arguments[PHONE]))))
                          .whenComplete(() => context
                              .read<UserSignInBloc>()
                              .add(UserSignInEvent.codeSubmitted(
                                  code: Texts.dirty(_pinCode))));
                    } else {
                      Future.sync(() => context.read<CompanySignInBloc>().add(
                              CompanySignInEvent.telephoneChanged(
                                  phone: Phone.dirty(arguments[PHONE]))))
                          .whenComplete(() => context
                              .read<CompanySignInBloc>()
                              .add(CompanySignInEvent.codeSubmitted(
                                  code: Texts.dirty(_pinCode))));
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
