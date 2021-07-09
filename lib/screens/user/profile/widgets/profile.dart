import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/user/core_profile/core_profile_user_bloc.dart';
import 'package:sap_work/bloc/user/profile/profile_user_bloc.dart';
import 'package:sap_work/bloc/user/profile_button/profile_user_btn_cubit.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/widgets/shimmer.dart';

class ProfileUserNameWidget extends StatelessWidget {
  const ProfileUserNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBloc, ProfileUserState>(
      builder: (context, state) {
        return state.map(
            empty: (_) => const SizedBox.shrink(),
            loading: (_) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ShimmerWidget.rectangular(
                    height: 18.0,
                    width: MediaQuery.of(context).size.width / 3.0)),
            loaded: (_state) {
              return Text(_state.profile.profile.name,
                  style: AppTextTheme.mediumTextBlack);
            },
            error: (_error) => Text(_error.message));
      },
    );
  }
}

class ProfileUserAvatarWidget extends StatelessWidget {
  const ProfileUserAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileUserBloc, ProfileUserState>(
        listener: (context, state) {
      state.maybeMap(
          orElse: () => state,
          loaded: (_state) {
            if (_state.status == FormzStatus.submissionFailure) {
              SmallWidgets.scaffoldMessage(
                  context: context, message: "Нет доступ к интернету");
            }
          });
    }, builder: (context, state) {
      return state.map(
          empty: (_) => const SizedBox.shrink(),
          loading: (_) => ShimmerWidget.circular(height: 75, width: 75),
          loaded: (_state) {
            return SizedBox(
                height: 88,
                child: Stack(children: [
                  _state.status == FormzStatus.submissionInProgress
                      ? SmallWidgets.uploadAvatar()
                      : SmallWidgets.circleAvatar(
                          url: _state.profile.profile.avatar,
                          height: 80,
                          width: 80),
                  SmallWidgets.uploadAvatarButton((path) {
                    context
                        .read<ProfileUserBloc>()
                        .add(ProfileUserEvent.uploadAvatar(path: path));
                  }),
                ]));
          },
          error: (_) =>
              CircleAvatar(radius: 40, backgroundColor: Colors.grey[500]));
    });
  }
}

class LinksUserWidget extends StatefulWidget {
  const LinksUserWidget({Key? key}) : super(key: key);

  @override
  _LinksUserWidgetState createState() => _LinksUserWidgetState();
}

class _LinksUserWidgetState extends State<LinksUserWidget> {
  String name = '';
  String url = '';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoreProfileUserBloc, CoreProfileUserState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () => state,
            attributes: (_state) {
              if (_state.status.isSubmissionFailure) {
                SmallWidgets.scaffoldMessage(
                    context: context,
                    message: "Проверьте доступ к интернету и адрес ссылки");
              }
            });
      },
      builder: (context, state) {
        return state.map(
            empty: (_) => const SizedBox.shrink(),
            loading: (_) => Row(
                  children: [
                    ShimmerWidget.rectangular(height: 18, width: 30),
                    const SizedBox(width: 10),
                    ShimmerWidget.rectangular(height: 18, width: 30),
                    const SizedBox(width: 10),
                    ShimmerWidget.rectangular(height: 18, width: 30)
                  ],
                ),
            attributes: (_attributes) {
              return BlocBuilder<ProfileUserBtnCubit, ProfileUserBtnState>(
                builder: (context, state) {
                  return state.map(onClick: (_onClick) {
                    return SizedBox(
                        height: 45.0,
                        child: Row(children: [
                          if (!_onClick.link)
                            Flexible(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      final link = _attributes.contacts[index];
                                      return Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: SvgPicture.asset(
                                                  AppIcons.clear)),
                                          TextButton(
                                              onPressed: () {},
                                              child: Row(children: [
                                                Text(link.name,
                                                    style: AppTextTheme
                                                        .smallTextMediumBlack),
                                                SvgPicture.asset(
                                                    AppIcons.link_arrow),
                                              ])),
                                        ],
                                      );
                                    },
                                    itemCount: _attributes.contacts.length)),
                          if (_onClick.link)
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: TextField(
                                    decoration:
                                        SmallWidgets.inputDecoration("имя"),
                                    onChanged: (value) {
                                      name = value;
                                    },
                                  )),
                                  const SizedBox(width: 10),
                                  Expanded(
                                      child: TextField(
                                    decoration:
                                        SmallWidgets.inputDecoration("ссылки"),
                                    onChanged: (value) {
                                      url = value;
                                    },
                                  )),
                                ],
                              ),
                            ),
                          IconButton(
                              onPressed: () {
                                context.read<ProfileUserBtnCubit>().link();
                                if (_onClick.link) {
                                  context.read<CoreProfileUserBloc>().add(
                                      CoreProfileUserEvent.addContact(
                                          name: name, url: url));
                                }
                              },
                              icon: SvgPicture.asset(AppIcons.plus_black)),
                        ]));
                  });
                },
              );
            },
            error: (_error) => Container(
                  child: Text(_error.message),
                ));
      },
    );
  }
}
