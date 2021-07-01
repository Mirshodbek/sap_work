import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/bloc/company/profile/profile_company_bloc.dart';
import 'package:sap_work/resources/resource.dart';
import 'package:sap_work/screens/widgets/widget.dart';
import 'package:sap_work/theme/theme.dart';

class ProfileNameWidget extends StatelessWidget {
  const ProfileNameWidget({Key? key}) : super(key: key);

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
    return BlocBuilder<ProfileCompanyBloc, ProfileCompanyState>(
        builder: (context, state) {
      return state.map(
          empty: (_) => const SizedBox.shrink(),
          loading: (_) => ShimmerWidget.circular(height: 95, width: 95),
          loaded: (_state) {
            return SizedBox(
              height: 88,
              child: Stack(children: [
                CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(_state.profile.profile.avatar)),
                Positioned(
                  bottom: 0,
                  right: 15,
                  child: IconButton(
                      onPressed: () async {
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles();
                      },
                      icon: CircleAvatar(
                          backgroundColor: AppColor.red,
                          child: SvgPicture.asset(AppIcons.photo))),
                )
              ]),
            );
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
