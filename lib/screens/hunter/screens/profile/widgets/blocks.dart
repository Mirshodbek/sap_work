import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../hunter.dart';

class BlocksWidget extends StatefulWidget {
  final ProfileScreenState _state;

  BlocksWidget(this._state, {Key? key}) : super(key: key);

  @override
  _BlocksWidgetState createState() => _BlocksWidgetState();
}

class _BlocksWidgetState extends State<BlocksWidget> {
  List<TextEditingController> textController = [];

  @override
  void initState() {
    textController = [for (int i = 0; i < 1000; i++) TextEditingController()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget._state.blocks.map(
          (e) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          e.title,
                          style: AppTextTheme.smallTextMediumBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                        child: Row(
                          children: [
                            if (e.id < 11)
                              IconButton(
                                onPressed: () => context
                                    .read<ProfileBloc>()
                                    .add(ProfileEvent.toggleBlocks(
                                        id: e.id,
                                        isSelectBlocks: false,
                                        title: e.title)),
                                icon: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  width: 40.0,
                                  height: 40.0,
                                  child: SvgPicture.asset(AppIcons.plus_black),
                                ),
                              ),
                            if (e.id > 10)
                              IconButton(
                                onPressed: () async {
                                  context.read<ProfileBloc>().add(
                                      ProfileEvent.toggleBlocks(
                                          id: e.id,
                                          isSelectBlocks: true,
                                          title: e.title));
                                },
                                icon: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration:
                                      BoxDecoration(border: Border.all()),
                                  width: 40.0,
                                  height: 40.0,
                                  child: SvgPicture.asset(AppIcons.trash),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    controller: textController[e.text1],
                    onChanged: (value) {
                      if (e.title == Lists.blocksResumeList[9].title ||
                          e.title == Lists.blocksResumeList[10].title) {
                        context.read<ProfileBloc>().add(ProfileEvent.resumeData(
                            firstField: value,
                            secondField: "",
                            thirdField: "",
                            fourthField: "",
                            title: e.title));
                      }
                    },
                    decoration: _inputDecoration(e.hintText1),
                  ),
                  TextField(
                    controller: textController[e.text2],
                    decoration: _inputDecoration(e.hintText2),
                  ),
                  TextField(
                    controller: textController[e.text3],
                    onChanged: (value) async {
                      if (e.title == Lists.blocksResumeList[1].title) {
                        context.read<ProfileBloc>().add(ProfileEvent.resumeData(
                              firstField: textController[e.text1].text,
                              secondField: textController[e.text2].text,
                              thirdField: value,
                              fourthField: "",
                              title: e.title,
                            ));
                      }
                    },
                    decoration: _inputDecoration(e.hintText3),
                  ),
                  if (e.title == Lists.blocksResumeList[0].title)
                    TextField(
                      controller: textController[e.text4],
                      onChanged: (value) async {
                        context.read<ProfileBloc>().add(ProfileEvent.resumeData(
                              firstField: textController[e.text1].text,
                              secondField: textController[e.text2].text,
                              thirdField: textController[e.text3].text,
                              fourthField: value,
                              title: e.title,
                            ));
                      },
                      maxLines: 5,
                      decoration: _inputDecoration(e.hintText4),
                    ),
                ],
              ),
            );
          },
        ),
        _Info(widget._state),
      ],
    );
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextTheme.smallSizeText.copyWith(color: AppColor.grey),
      focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
      enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
    );
  }
}

class _Info extends StatefulWidget {
  final ProfileScreenState _state;

  const _Info(this._state, {Key? key}) : super(key: key);

  @override
  __InfoState createState() => __InfoState();
}

class __InfoState extends State<_Info> {
  final _email = TextEditingController();
  final _phone = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Контакты",
            style: AppTextTheme.mediumTextBlack,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Text(
                "Почта: ",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              Expanded(
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(hintText: "info@mail.ru"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Text(
                "Телефон: ",
                style: AppTextTheme.smallTextMediumBlack,
              ),
              Expanded(
                child: TextField(
                  controller: _phone,
                  inputFormatters: [Utils.mask],
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 9.0),
                      child: Text(
                        "+7 ",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RedButtonWidget(
                  "Сохранить резюме",
                      () =>
                      context.read<ProfileBloc>().add(ProfileEvent.createResume(
                        name: widget._state.resume.name,
                        stages: widget._state.stages,
                        grades: widget._state.grades,
                        emails: _email.text,
                        phones: Utils.getTelephone(_phone.text),
                      )),
                  true),
            ],
          ),
        ],
      ),
    );
  }
}
