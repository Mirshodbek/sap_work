import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/sign_in/employer_role/employer_sign_in_bloc.dart';
import 'package:sap_work/data_provider/auth_provider.dart';
import 'package:sap_work/screens/authorization/authorization.dart';

class EmployerSignInScreen extends StatelessWidget {
  static const String id = '/employer_sign_in';

  EmployerSignInScreen({Key? key}) : super(key: key);

  static Widget create() {
    return BlocProvider<EmployerSignInBloc>(
      create: (_) => EmployerSignInBloc(AuthProvider())
        ..add(EmployerSignInEvent.initial()),
      child: EmployerSignInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.red,
      appBar: PreviousButton(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
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
              inputFormatters: [Utils.mask],
              onChanged: (value) => context.read<EmployerSignInBloc>().add(
                  EmployerSignInEvent.telephoneChanged(
                      phone: Phone.dirty(Utils.getTelephone(value)))),
              keyboardType: TextInputType.phone,
              style: AppTextTheme.smallTextWhite,
              decoration: TextFieldDecoration.decoration("Телефон")
                  .copyWith(prefixText: "+7 "),
            ),
            BlocConsumer<EmployerSignInBloc, EmployerSignInState>(
              listener: (context, state) {
                if (state == EmployerSignInState.successSignIn()) {
                  Navigator.pushNamedAndRemoveUntil(context, NavigationBar.id,
                      (Route<dynamic> route) => false,
                      arguments: {"role": "employer"});
                }
              },
              builder: (context, state) {
                return state.maybeMap(
                  telephoneState: (_state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (_state.phone.invalid)
                          Text(
                            "Ошибка в номере телефона",
                            style: AppTextTheme.smallTextWhite,
                          ),
                        if (_state.statusA.isSubmissionFailure)
                          Text(
                            "Вы еще незарегистрированный",
                            style: AppTextTheme.smallTextWhite,
                          ),
                        const SizedBox(
                          height: 24.0,
                        ),
                        WhiteButtonWidget(
                          child: Text(
                            "Зарегестрироваться",
                            style: AppTextTheme.smallTextWhite,
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, SignUpScreen.id),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextButton(
                          onPressed: _state.statusA.isSubmissionInProgress
                              ? null
                              : () => context.read<EmployerSignInBloc>().add(
                                  EmployerSignInEvent.telephoneSubmitted(
                                      phone: Phone.dirty(
                                          _state.phone.value))),
                          child: _state.statusA.isSubmissionInProgress
                              ? CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      AppColor.white))
                              : Text(
                                  "Войти",
                                  style: AppTextTheme.smallTextWhite,
                                ),
                        ),
                      ],
                    );
                  },
                  codeState: (_state) {
                    return _CodeState(_state);
                  },
                  orElse: () => Container(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CodeState extends StatefulWidget {
  final CodeEmployerSignInState _state;
  const _CodeState(this._state,{Key? key}) : super(key: key);

  @override
  __CodeStateState createState() => __CodeStateState();
}

class __CodeStateState extends State<_CodeState> {
  TextEditingController? _code = TextEditingController();

  @override
  void dispose() {
   _code!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 24.0,
        ),
        TextField(
          controller: _code,
          obscureText: true,
          onChanged: (value) {},
          decoration:
          TextFieldDecoration.decoration("Код из смс"),
          style: AppTextTheme.smallTextWhite,
          keyboardType: TextInputType.number,
        ),
        if (widget._state.code.invalid)
          Text(
            "Введите код",
            style: AppTextTheme.smallTextWhite,
          ),
        if (widget._state.statusB.isSubmissionFailure)
          Text(
            "Не правилний код",
            style: AppTextTheme.smallTextWhite,
          ),
        const SizedBox(
          height: 30.0,
        ),
        Row(
          children: [
            Expanded(
              child: WhiteButtonWidget(
                child: widget._state.statusB.isSubmissionInProgress
                    ? CircularProgressIndicator(
                  valueColor:
                  AlwaysStoppedAnimation<Color>(
                      AppColor.white),
                )
                    : Text(
                  "Войти",
                  style: AppTextTheme.smallTextWhite,
                ),
                onPressed: widget._state.statusB.isSubmissionInProgress
                    ? () => null
                    : () => context
                    .read<EmployerSignInBloc>()
                    .add(EmployerSignInEvent.codeSubmitted(
                    code: Texts.dirty(_code!.text))),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
