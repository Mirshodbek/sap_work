import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/screens/widgets/bottom_nav_bar.dart';
import '../../../authorization.dart';
import '../../pin_screen.dart';

class CompanyRole extends StatefulWidget {
  CompanyRole({Key? key}) : super(key: key);

  static Widget create() {
    return BlocProvider<CompanySignUpBloc>(
      create: (_) =>
          CompanySignUpBloc(AuthProvider())..add(CompanySignUpEvent.initial()),
      child: CompanyRole(),
    );
  }

  @override
  _CompanyRoleState createState() => _CompanyRoleState();
}

class _CompanyRoleState extends State<CompanyRole> {
  PageController? _pageController = PageController();
  TextEditingController? _name = TextEditingController();
  TextEditingController? _phone = TextEditingController();
  TextEditingController? _inn = TextEditingController();
  TextEditingController? _nameCompany = TextEditingController();
  TextEditingController? _address = TextEditingController();
  TextEditingController? _bin = TextEditingController();
  TextEditingController? _bik = TextEditingController();

  void disposeController() {
    _pageController!.dispose();
    _name!.dispose();
    _phone!.dispose();
    _inn!.dispose();
    _nameCompany!.dispose();
    _address!.dispose();
    _bin!.dispose();
    _bik!.dispose();
  }

  @override
  void dispose() {
    disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompanySignUpBloc, CompanySignUpState>(
      listener: (context, state) {
        if (state is SuccessSignUpCompanySignUpState) {
          Navigator.pushNamed(context, PinScreen.id,
              arguments: {ROLE: COMPANY_ROLE, PHONE: state.phone});
        }
        state.maybeMap(
          companyState: (_state) {
            if (_state.statusA.isValidated) {
              _pageController!.nextPage(
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            }
            if (_state.statusB.isSubmissionFailure) {
              _pageController!.previousPage(
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            }
          },
          orElse: () => state,
        );
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          companyState: (_state) {
            return SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: PageView(
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _partOne(_state),
                  _partTwo(_state),
                ],
              ),
            );
          },
          successSignUp: (_) => Container(),
        );
      },
    );
  }

  Widget _partOne(CompanyStateCompanySignUpState _state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppImages.part_one),
          const SizedBox(
            height: 12.0,
          ),
          TextField(
            controller: _name,
            style: AppTextTheme.smallTextWhite,
            decoration: TextFieldDecoration.decoration("Имя представителя"),
          ),
          if (_state.name.invalid)
            Text(
              "Введите имя представителя",
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
            decoration: TextFieldDecoration.decoration("Телефон").copyWith(
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
          if (_state.statusB.isSubmissionFailure)
            Text(
              "Вы уже зарегистрированный",
              style: AppTextTheme.smallTextWhite,
            ),
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _inn,
            style: AppTextTheme.smallTextWhite,
            keyboardType: TextInputType.number,
            decoration: TextFieldDecoration.decoration("ИНН"),
          ),
          if (_state.inn.invalid)
            Text(
              "Пожалуйста, введите инн",
              style: AppTextTheme.smallTextWhite,
            ),
          const SizedBox(
            height: 20.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: WhiteButtonWidget(
              child: Text(
                "Далее",
                style: AppTextTheme.smallTextWhite,
              ),
              onPressed: nextButton,
            ),
          ),
        ],
      );

  void nextButton() {
    context.read<CompanySignUpBloc>().add(CompanySignUpEvent.pageOne(
          name: Texts.dirty(_name!.text),
          phone: Phone.dirty(Utils.getTelephone(_phone!.text)),
          inn: Texts.dirty(_inn!.text),
        ));
  }

  Widget _partTwo(CompanyStateCompanySignUpState _state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppImages.part_two),
          const SizedBox(
            height: 12.0,
          ),
          TextField(
            controller: _nameCompany,
            style: AppTextTheme.smallTextWhite,
            decoration: TextFieldDecoration.decoration("Название компании"),
          ),
          if (_state.nameCompany.invalid)
            Text(
              "Введите название компании",
              style: AppTextTheme.smallTextWhite,
            ),
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _address,
            style: AppTextTheme.smallTextWhite,
            decoration: TextFieldDecoration.decoration("Юр. адрес"),
          ),
          if (_state.address.invalid)
            Text(
              "Введите юр. адрес",
              style: AppTextTheme.smallTextWhite,
            ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _bin,
                  style: AppTextTheme.smallTextWhite,
                  decoration: TextFieldDecoration.decoration("БИН"),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: TextField(
                  controller: _bik,
                  style: AppTextTheme.smallTextWhite,
                  decoration: TextFieldDecoration.decoration("БИК"),
                ),
              ),
            ],
          ),
          if (_state.bin.invalid || _state.bik.invalid)
            Text(
              "Введите бин и бик",
              style: AppTextTheme.smallTextWhite,
            ),
          const SizedBox(
            height: 20.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: WhiteButtonWidget(
              child: _state.statusB.isSubmissionInProgress
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(AppColor.white),
                    )
                  : Text(
                      "Регистрация",
                      style: AppTextTheme.smallTextWhite,
                    ),
              onPressed: () => _state.statusB.isSubmissionInProgress
                  ? null
                  : context
                      .read<CompanySignUpBloc>()
                      .add(CompanySignUpEvent.pageTwo(
                        name: _state.name,
                        phone: _state.phone,
                        inn: _state.inn,
                        nameCompany: Texts.dirty(_nameCompany!.text),
                        address: Texts.dirty(_address!.text),
                        bin: Texts.dirty(_bin!.text),
                        bik: Texts.dirty(_bik!.text),
                      )),
            ),
          ),
        ],
      );
}
