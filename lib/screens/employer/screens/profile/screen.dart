import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../employer.dart';

class ProfileEmployerScreen extends StatelessWidget {
  const ProfileEmployerScreen({Key? key}) : super(key: key);


  static Widget create(BuildContext context) {
    return ProfileEmployerScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarWidget(context.watch<NavigationCubit>().state),
    );
  }
}
