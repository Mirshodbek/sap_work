import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/screens/authorization/widgets/previous_button.dart';

import '../authorization.dart';

class PinScreen extends StatefulWidget {
  static const String id = 'pin';

  const PinScreen({Key? key}) : super(key: key);

  @override
  _PinScreenState createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  String _pinCode = '';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    int id = arguments['role'];
    return BlocProvider<UserSignInBloc>(
  create: (_) => UserSignInBloc(AuthProvider())..add(UserSignInEvent.initial()),
  child: Scaffold(
      backgroundColor: AppColor.red,
      appBar: PreviousButton(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            if (id == 0)
              Column(
                children: [
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
                      onPressed: () => context.read<UserSignInBloc>().add(
                          UserSignInEvent.codeSubmitted(
                              code: Texts.dirty(_pinCode))))
                ],
              ),
          ],
        ),
      ),
    ),
);
  }
}
