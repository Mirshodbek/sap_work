import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/lists.dart';
import 'package:sap_work/resources/small_widgets.dart';
import 'package:sap_work/screens/widgets/shimmer.dart';
import 'package:sap_work/resources/theme/text_theme.dart';

class ProfileCompanyNameWidget extends StatelessWidget {
  const ProfileCompanyNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCompanyBloc, ProfileCompanyState>(
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
          error: (_error) {
            return Text(_error.message,
                style: AppTextTheme.smallTextMediumBlack);
          });
    });
  }
}

class ProfileAvatarWidget extends StatelessWidget {
  const ProfileAvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCompanyBloc, ProfileCompanyState>(
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
                      : SmallWidgets.circleAvatar(url:
                          _state.profile.profile.avatar,height: 80,width: 80),
                  SmallWidgets.uploadAvatarButton((path) {
                    context
                        .read<ProfileCompanyBloc>()
                        .add(ProfileCompanyEvent.uploadAvatar(path: path));
                  }),
                ]));
          },
          error: (_) =>
              CircleAvatar(radius: 40, backgroundColor: Colors.grey[500]));
    });
  }
}

class LinksWidget extends StatelessWidget {
  const LinksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45.0,
        child: Row(children: [
          Flexible(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final link = Lists.linkList[index];
                    return TextButton(
                        onPressed: () {},
                        child: Row(children: [
                          Text(link, style: AppTextTheme.smallTextMediumBlack),
                          SvgPicture.asset(AppIcons.link_arrow),
                        ]));
                  },
                  itemCount: Lists.linkList.length)),
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppIcons.plus_black)),
        ]));
  }
}
