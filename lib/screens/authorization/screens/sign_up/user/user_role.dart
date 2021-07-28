import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/screens/authorization/authorization.dart';
import 'package:sap_work/screens/authorization/screens/pin_screen.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';

class UserRole extends StatefulWidget {
  UserRole({Key? key}) : super(key: key);

  static Widget create() {
    return BlocProvider<UserSignUpBloc>(
      create: (_) =>
          UserSignUpBloc(AuthProvider())..add(UserSignUpEvent.initial()),
      child: UserRole(),
    );
  }

  @override
  _UserRoleState createState() => _UserRoleState();
}

class _UserRoleState extends State<UserRole> {
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
    return BlocConsumer<UserSignUpBloc, UserSignUpState>(
      listener: (context, state) {
        if (state is SuccessSignUpUserSignUpState) {
          Navigator.pushNamed(context, PinScreen.id,
              arguments: {ROLE: USER_ROLE, PHONE: state.phone});
        }
      },
      builder: (context, state) {
        return state.maybeMap(
            orElse: () => Container(),
            userState: (_state) {
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
                    decoration:
                        TextFieldDecoration.decoration("Телефон").copyWith(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9.0),
                        child: Text(
                          "+7 ",
                          textAlign: TextAlign.center,
                          style: AppTextTheme.smallTextWhite,
                        ),
                      ),
                    ),
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
                          .read<UserSignUpBloc>()
                          .add(UserSignUpEvent.professionEvent(
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
                          : context.read<UserSignUpBloc>().add(
                              UserSignUpEvent.userEvent(
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
