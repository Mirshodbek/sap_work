import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../employer.dart';

class PayScreen extends StatelessWidget {
  static const String id = '/pay';

  const PayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.settings),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: RowAnnounce(),
            ),
            Divider(
              height: 40.0,
              color: Colors.black,
              thickness: 1.2,
            ),
            BlocBuilder<PayCubit, PayState>(
              builder: (context, state) {
                return state.map(
                  loading: (_) => Container(),
                  loaded: (_data) {
                    return _data.nextStep? RequestPay(_data.sum,_data.count):Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Тарифы",
                            style: AppTextTheme.mediumTextBlack,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Tariffs(),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
