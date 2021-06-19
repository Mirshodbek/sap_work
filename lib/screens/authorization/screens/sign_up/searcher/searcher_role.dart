import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/sign_up/hunter_role/hunter_sign_up_bloc.dart';
import 'package:sap_work/data_provider/auth_provider.dart';
import 'package:sap_work/screens/authorization/authorization.dart';

class SearcherRole extends StatefulWidget {
  SearcherRole({Key? key}) : super(key: key);

  static Widget create() {
    return BlocProvider<HunterSignUpBloc>(
      create: (_) =>
          HunterSignUpBloc(AuthProvider())..add(HunterSignUpEvent.initial()),
      child: SearcherRole(),
    );
  }

  @override
  _SearcherRoleState createState() => _SearcherRoleState();
}

class _SearcherRoleState extends State<SearcherRole> {
  TextEditingController? _name = TextEditingController();
  TextEditingController? _phone = TextEditingController();

  @override
  void dispose() {
    _name!.dispose();
    _phone!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HunterSignUpBloc, HunterSignUpState>(
      listener: (context, state) {
        if (state == HunterSignUpState.successSignUp()) {
          Navigator.pushReplacementNamed(
            context,
            SearcherSignInScreen.id,
          );
        }
      },
      builder: (context, state) {
        return state.maybeMap(
            orElse: () => Container(),
            hunterState: (_state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: _name,
                    style: AppTextTheme.smallTextWhite,
                    decoration: TextFieldDecoration.decoration("Имя"),
                  ),
                  if (_state.name.invalid)
                    Text(
                      "Пожалуйста, введите ваше имя",
                      style: AppTextTheme.smallTextWhite,
                    ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    inputFormatters: [Utils.mask],
                    controller: _phone,
                    keyboardType: TextInputType.phone,
                    style: AppTextTheme.smallTextWhite,
                    decoration: TextFieldDecoration.decoration("Телефон")
                        .copyWith(prefixText: "+7 "),
                  ),
                  if (_state.phone.invalid)
                    Text(
                      "Ошибка в номере телефона",
                      style: AppTextTheme.smallTextWhite,
                    ),
                  if (_state.status.isSubmissionFailure)
                    Text(
                      "Вы уже зарегистрированный",
                      style: AppTextTheme.smallTextWhite,
                    ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: AppColor.white,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: DropdownButton(
                      isExpanded: true,
                      icon: SvgPicture.asset(AppIcons.down_arrow),
                      underline: const SizedBox.shrink(),
                      hint: Text(
                        "Профессия",
                        style: AppTextTheme.smallTextWhite,
                      ),
                      style: AppTextTheme.smallTextWhite,
                      dropdownColor: AppColor.red,
                      value: _state.prof.pure ? null : _state.prof.value,
                      onChanged: (String? value) => context
                          .read<HunterSignUpBloc>()
                          .add(HunterSignUpEvent.professionEvent(
                              prof: Texts.dirty(value!))),
                      items: Lists.listProfessions.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                    ),
                  ),
                  if (_state.prof.pure)
                    Text(
                      "Выберите профессию",
                      style: AppTextTheme.smallTextWhite,
                    ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: WhiteButtonWidget(
                      child: _state.status.isSubmissionInProgress
                          ? CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(AppColor.white),
                            )
                          : Text(
                              "Регистрация",
                              style: AppTextTheme.smallTextWhite,
                            ),
                      onPressed: () => _state.status.isSubmissionInProgress
                          ? null
                          : context.read<HunterSignUpBloc>().add(
                              HunterSignUpEvent.hunterEvent(
                                  name: Texts.dirty(_name!.text),
                                  phone: Phone.dirty(
                                      Utils.getTelephone(_phone!.text)),
                                  prof: _state.prof)),
                    ),
                  ),
                ],
              );
            });
      },
    );
  }
}
