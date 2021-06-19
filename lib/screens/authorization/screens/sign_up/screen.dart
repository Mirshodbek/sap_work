import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sap_work/screens/authorization/authorization.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = '/sign_up';

  const SignUpScreen({Key? key}) : super(key: key);

  static Widget create() {
    return ChangeNotifierProvider.value(
      value: SelectRole(),
      child: SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.red,
      appBar: PreviousButton(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24.0,
                    ),
                    FittedBox(
                      child: Text(
                        "Я регистрируюсь как...",
                        style: AppTextTheme.mediumTextWhite,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ButtonsWidgets(
                        select: context
                            .select((SelectRole value) => value.isHunter)),
                  ],
                ),
              ),
              Flexible(
                flex: 3,
                child: context.select((SelectRole value) => value.isHunter)
                    ? SearcherRole.create()
                    : EmployerRole.create(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectRole extends ChangeNotifier {
  bool _isHunter = true;

  bool get isHunter => _isHunter;

  void isHunterBool(bool value) {
    _isHunter = value;
    notifyListeners();
  }
}
