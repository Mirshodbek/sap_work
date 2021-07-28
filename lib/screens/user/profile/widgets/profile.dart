import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/user/profile/profile_user_bloc.dart';
import 'package:sap_work/bloc/user/profile_button/profile_user_btn_cubit.dart';
import 'package:sap_work/resources/constants.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:sap_work/screens/widgets/loading.dart';
import 'package:sap_work/screens/widgets/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
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
            if (_state.status == PROFILE_USER_BLOC_UPLOAD_AVATAR_FAILURE ||
                _state.status == PROFILE_USER_BLOC_ADD_CONTACT_FAILURE ||
                _state.status == PROFILE_USER_BLOC_DELETE_CONTACT_FAILURE) {
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
                  _state.status == PROFILE_USER_BLOC_UPLOAD_AVATAR_PROGRESS
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
    return BlocBuilder<ProfileUserBloc, ProfileUserState>(
      builder: (context, state) {
        return state.map(
            empty: (_) => const SizedBox.shrink(),
            loading: (_) => LoadingLinkWidget(),
            loaded: (_attributes) {
              return BlocBuilder<ProfileUserBtnCubit, ProfileUserBtnState>(
                builder: (context, state) {
                  return state.map(onClick: (_onClick) {
                    return SizedBox(
                        height: _onClick.link ? 130 : 45,
                        child: Row(children: [
                          if (!_onClick.link)
                            _attributes.profile.profile.urls!.isNotEmpty
                                ? Flexible(
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          final link = _attributes
                                              .profile.profile.urls![index];
                                          return Row(
                                            children: [
                                              IconButton(
                                                  padding: EdgeInsets.zero,
                                                  onPressed: () => context
                                                      .read<ProfileUserBloc>()
                                                      .add(ProfileUserEvent
                                                          .deleteContact(
                                                              id: link.id)),
                                                  icon: SvgPicture.asset(
                                                      AppIcons.clear)),
                                              TextButton(
                                                  onPressed: () async{
                                                    await launch(link.url);
                                                  },
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
                                        itemCount: _attributes
                                            .profile.profile.urls!.length))
                                : Text("Добавьте ссылку",
                                    style: AppTextTheme.smallSizeText),
                          if (_onClick.link)
                            Expanded(
                              child: Column(
                                children: [
                                  TextField(
                                    decoration:
                                        SmallWidgets.inputDecoration("Имя"),
                                    onChanged: (value) {
                                      name = value;
                                    },
                                  ),
                                  const SizedBox(height: 10),
                                  TextField(
                                    decoration:
                                        SmallWidgets.inputDecoration("Ссылка"),
                                    onChanged: (value) {
                                      url = value;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          IconButton(
                              onPressed: () {
                                context.read<ProfileUserBtnCubit>().link();
                                if (_onClick.link &&
                                    name.isNotEmpty &&
                                    url.isNotEmpty) {
                                  context.read<ProfileUserBloc>().add(
                                      ProfileUserEvent.addContact(
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
