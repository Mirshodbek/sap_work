import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sap_work/bloc/user/profile/profile_user_bloc.dart';
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
